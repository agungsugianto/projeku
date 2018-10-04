<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Barang extends Model
{
    protected $fillable = ['nama_barang','kategori_id','slug','harga','foto','deskripsi'];
    
    public function kategori()
    {
        return $this->belongsTo('App\kategori', 'kategori_id');
    }

    public function getRouteKeyName()
    {
        return 'slug';
    }
}
