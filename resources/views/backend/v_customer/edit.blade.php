@extends('backend.v_layouts.app') 

@section('content') 
<div class="row"> 
    <div class="col-12"> 
        <div class="card"> 
            <div class="card-body"> 
                <h5 class="card-title">Ubah Data Customer</h5> 
                
                <form action="{{ route('backend.customer.update', $customer->id) }}" method="POST" class="mt-4">
                    @csrf
                    @method('PUT')

                    <div class="form-group">
                        <label>Nama Lengkap</label>
                        <input type="text" name="nama" class="form-control" value="{{ old('nama', $customer->user->nama ?? '') }}" required>
                    </div>

                    <div class="form-group">
                        <label>Email <small class="text-danger">(Readonly)</small></label>
                        <input type="email" class="form-control" value="{{ $customer->user->email ?? '' }}" readonly>
                        <small class="text-muted">Email dari akun Google tidak bisa diubah.</small>
                    </div>

                    <div class="form-group">
                        <label>Alamat</label>
                        <textarea name="alamat" class="form-control" rows="3">{{ old('alamat', $customer->alamat) }}</textarea>
                    </div>

                    <div class="form-group">
                        <label>Kode Pos</label>
                        <input type="text" name="pos" class="form-control" value="{{ old('pos', $customer->pos) }}" maxlength="5" oninput="this.value = this.value.replace(/[^0-9]/g, '');">
                        <small class="text-muted">Maksimal 5 digit kode pos</small>
                    </div>

                    <div class="mt-4">
                        <button type="submit" class="btn btn-info"><i class="fas fa-save"></i> Simpan Perubahan</button>
                        <a href="{{ route('backend.customer.index') }}">
                            <button type="button" class="btn btn-secondary"><i class="fas fa-arrow-left"></i> Batal</button>
                        </a>
                    </div>
                </form>

            </div> 
        </div> 
    </div> 
</div> 
@endsection