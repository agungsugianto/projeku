<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Barang;
use App\Kategori;
use App\Galeri;
use App\Promo;
use App\barangfoto;
use File;

class FrontendController extends Controller
{
     public function index()
    {
        $galeris = Galeri::all();
        $barangs = Barang::all();
        $promos = Promo::all();
        return view ('layouts.frontend',compact('galeris','barangs','promos'));
    }

    // public function barang()
    // {
    //     $barangs = Barang::all();
    //     return view ('layouts.frontend',compact('barangs')); 
    // }
    public function barangkategori(Kategori $kategori)
    {
        $barangs = $kategori->Barang()->latest()->paginate(5);
        return view('frontend.produk', compact('barangs'));
    }
    public function product()
    {
        $barangs = Barang::paginate(8);
        return view ('frontend.produk',compact('barangs')); 
    }
    public function singleproduct(Barang $barangs)
    {
        return view('product.singleproduct', compact('barangs'));
    }
}
