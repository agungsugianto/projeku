<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Barang;
use App\Kategori;
use App\Galeri;
use File;

class FrontendController extends Controller
{
     public function index()
    {
        $galeris = Galeri::all();
        return view ('layouts.frontend',compact('galeris'));
    }

    public function barang()
    {
        $barangs = Barang::all();
        return view ('layouts.frontend',compact('barangs')); 
    }
    public function barangkategori(Kategori $kategori)
    {
        $barangs = $kategori->Barang()->latest()->paginate(5);
        return view('frontend.produk', compact('barangs'));
    }
    public function product()
    {
        $barangs = Barang::all();
        return view ('frontend.produk',compact('barangs')); 
    }

    public function about()
    {
        $galeris = Galeri::all();
        return view ('layouts.frontend',compact('galeris')); 
    }
    // public function category()
    // {
    //     $kategoris = Kategori::all();
    //     return view ('category.index',compact('kategoris')); 
    // }

    public function singleproduct(Barang $barangs)
    {
        // $previous = Artikel::where('id', '<', $artikel->id)->orderBy('id', 'desc')->first();
        // $next = Artikel::where('id', '>', $artikel->id)->orderBy('id')->first();
        
        return view('product.singleproduct', compact('barangs'));
    }
}
