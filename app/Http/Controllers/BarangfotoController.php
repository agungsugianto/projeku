<?php

namespace App\Http\Controllers;

use App\barangfoto;
use App\Barang;
use File;
use Illuminate\Http\Request;

class BarangfotoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $fotobarang = barangfoto::all();
        return view('barangfoto.index',compact('fotobarang'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $barang = Barang::all();
        return view('barangfoto.create',compact('barang'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if ($request->hasFile('foto')) {
            foreach($request->foto as $foto){
                $filename = $foto->getClientOriginalName();
                $destinationPath = public_path() . DIRECTORY_SEPARATOR . '/img/';
            $foto->move($destinationPath, $filename);
            $fotobarang = barangfoto::create($request->except('foto'));
            $fotobarang ->foto = $filename;
            $fotobarang->save();    
        }
            
        }
        
        return redirect()->route('barangfoto.index');

    }

    /**
     * Display the specified resource.
     *
     * @param  \App\barangfoto  $barangfoto
     * @return \Illuminate\Http\Response
     */
    public function show(barangfoto $barangfoto)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\barangfoto  $barangfoto
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $fotobarang = barangfoto::findorFail($id);
        $barang = Barang::all();
        $selectedBarang = barangfoto::findOrFail($id)->barang_id;
        return view('barangfoto.edit',compact('fotobarang','barang','selectedBarang'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\barangfoto  $barangfoto
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $this->validate($request,[
            'foto' => 'image|max:999',
            'barang_id' => 'required'
        ]);

        $fotobarang = barangfoto::findOrFail($id);
        $fotobarang->barang_id = $request->barang_id;
        if ($request->hasFile('foto')) {
            $file = $request->file('foto');
            $destinationPath = public_path().'/img/';
            $filename = str_random(6).'_'.$file->getClientOriginalName();
            $uploadsucces = $file->move($destinationPath, $filename);

            if ($fotobarang->foto){
                $old_foto = $fotobarang->foto;
                $filepath = public_path() . DIRECTORY_SEPARATOR . '/img/'
                . DIRECTORY_SEPARATOR . $fotobarang->foto;
                try{
                    file::delete($filepath);
                } catch (FileNotFoundException $e) {

                }
            }
            $fotobarang->foto = $filename;
        }
        $fotobarang->save();
        return redirect()->route('barangfoto.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\barangfoto  $barangfoto
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $fotobarang = barangfoto::findOrFail($id);
        if ($fotobarang->foto){
            $old_foto = $fotobarang->foto;
            $filepath = public_path() . DIRECTORY_SEPARATOR . '/img/'
            . DIRECTORY_SEPARATOR . $fotobarang->foto;
            try{
                file::delete($filepath);
            }
            catch (FileNotFoundException $e) {
            }
        }
        $fotobarang->delete();
        return redirect()->route('barangfoto.index');
    }
}
