<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\Customer;
use App\Models\Produk;
use App\Models\Order;
use App\Models\OrderItem;

class OrderController extends Controller
{
    public function addToCart($id)
    {
        // Cek jika user belum login
        if (!Auth::check()) {
            // Redirect ke route login google yang sudah kamu buat di web.php
            return redirect()->route('auth.redirect'); 
        }

        $customer = Customer::where('user_id', Auth::id())->first();
        $produk = Produk::findOrFail($id);

        // Buat atau cari order dengan status pending
        $order = Order::firstOrCreate(
            ['customer_id' => $customer->id, 'status' => 'pending'],
            ['total_harga' => 0]
        );

        // Buat atau cari item di order
        $orderItem = OrderItem::firstOrCreate(
            ['order_id' => $order->id, 'produk_id' => $produk->id],
            ['quantity' => 1, 'harga' => $produk->harga]
        );

        // Kalau produk sudah ada di keranjang, tambah quantity
        if (!$orderItem->wasRecentlyCreated) {
            $orderItem->quantity++;
            $orderItem->save();
        }

        $order->total_harga += $produk->harga;
        $order->save();

        return redirect()->route('order.cart')->with('success', 'Produk berhasil ditambahkan ke keranjang');
    }

    public function viewCart()
    {
        $customer = Customer::where('user_id', Auth::id())->first();
        $order = Order::where('customer_id', $customer->id)
                      ->where('status', 'pending', 'paid')
                      ->first();
        if ($order) {
            $order->load('orderItems.produk');
        }
        return view('v_order.cart', compact('order'));
    }

    public function updateCart(Request $request, $id)
    {
        $orderItem = OrderItem::findOrFail($id);
        $orderItem->update(['quantity' => $request->quantity]);

        $order = Order::findOrFail($orderItem->order_id);

        $totalHargaBaru = OrderItem::where('order_id', $order->id)
                                   ->get()
                                   ->sum(function($item) {
                                       return $item->quantity * $item->harga;
                                   });

        $order->update(['total_harga' => $totalHargaBaru]);

        return redirect()->route('order.cart')->with('success', 'Quantity berhasil diupdate!');
    }

    public function removeCart($id)
    {
        // 1. Cari item dan simpan ID Order-nya sebelum item dihapus
        $orderItem = OrderItem::findOrFail($id);
        $orderId = $orderItem->order_id;
        
        // Hapus item
        $orderItem->delete();

        // 2. Kalkulasi ulang total_harga di tabel Order
        $order = Order::findOrFail($orderId);
        
        // Hitung total dari sisa item yang ada di order ini
        $totalHargaBaru = OrderItem::where('order_id', $order->id)
                                   ->get()
                                   ->sum(function($item) {
                                       return $item->quantity * $item->harga;
                                   });

        // Simpan total harga yang baru
        $order->update(['total_harga' => $totalHargaBaru]);

        return redirect()->route('order.cart')->with('success', 'Produk berhasil dihapus dari keranjang!');
    }
}