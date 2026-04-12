@extends('backend.v_layouts.app') 

@section('content') 
<div class="row"> 
    <div class="col-12"> 
        <div class="card"> 
            <div class="card-body"> 
                <h5 class="card-title">Detail Customer</h5> 
                
                <div class="table-responsive mt-4">
                    <table class="table table-bordered">
                        <tr>
                            <th width="200px">Nama Lengkap</th>
                            <td>{{ $customer->user->nama ?? '-' }}</td>
                        </tr>
                        <tr>
                            <th>Email</th>
                            <td>{{ $customer->user->email ?? '-' }}</td>
                        </tr>
                        <tr>
                            <th>Google ID</th>
                            <td>{{ $customer->google_id ?? '-' }}</td>
                        </tr>
                        <tr>
                            <th>Status Role</th>
                            <td>
                                @if($customer->user->role == '2')
                                    <span class="badge badge-info">Customer</span>
                                @else
                                    {{ $customer->user->role }}
                                @endif
                            </td>
                        </tr>
                        <tr>
                            <th>Alamat</th>
                            <td>{{ $customer->alamat ?? 'Belum diisi' }}</td>
                        </tr>
                        <tr>
                            <th>Kode Pos</th>
                            <td>{{ $customer->pos ?? 'Belum diisi' }}</td>
                        </tr>
                        </table>
                </div>

                <div class="mt-4">
                    <a href="{{ route('backend.customer.index') }}">
                        <button type="button" class="btn btn-secondary">
                            <i class="fas fa-arrow-left"></i> Kembali
                        </button>
                    </a>
                </div>

            </div> 
        </div> 
    </div> 
</div> 
@endsection