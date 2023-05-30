<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Mmagang;

class Magang extends Controller
{
    function __construct()
    {
        $this->model = new Mmagang();
    }

    public function login(Request $request)
    {
        $username = $request->username;
        $password = $request->password;

        $login = $this->model->where('email', $username)->first();

        if ($login && ($password == $login->password)) {
            return response([
                "status" => true,
                "pesan" => "Anda Berhasil Login",
                "id" => $login->id
            ], 200);
        } else {
            return response([
                "status" => false,
                "pesan" => "Email Atau Password Anda Salah"
            ], 200);
        }
    }

    function view()
    {
        $magang = $this->model->all();

        return response([
            "magang" => $magang
        ],http_response_code());
    }

    function detail($parameter)
    {
        $magang = $this->model->find($parameter);

        return response([
            "magang" => $magang
        ],http_response_code());
    }

    function delete($parameter)
    {
        $magang = $this->model->find($parameter);

        if (!$magang) {
            return response([
                "status" => false,
                "pesan" => "Data Magang tidak ditemukan"
            ], 404);
        }

        $magang->delete();

        return response([
            "pesan" => "Data Magang Berhasil Dihapus",
            "status" => true
        ], 200);
    }

    function insert(Request $req)
    {
        $magang = $this->model->where('npm', $req->npm)->first();

        if($magang) {
            return response([
                "pesan" => "Data Magang Gagal Di Input ! (NPM Sudah Pernah Tersimpan ! )",
                "status" => true
            ], 201);
        }
        
        // simpan data
        $this->model->create([
            'npm' => $req->npm, 
            'nama_lengkap' => $req->name, 
            'jurusan' => $req->jurusan, 
            'perguruan_tinggi' => $req->universitas, 
            'nomor_handphone' => $req->no_hp, 
            'email' => $req->username, 
            'password' => $req->password, 
            'devisi' => $req->bagian,
            'photo' => '-'
        ]);

        return response([
            "status" => true,
            "pesan" => "Data Magang Berhasil Di Input",
        ],http_response_code());
    }

    function update(Request $req)
    {
        $magang = $this->model->where('npm', $req->npm)->first();

        if(!$magang) {
            return response([
                "pesan" => "Data Magang Gagal Di Update ! (NPM Belum Tersimpan ! )",
                "status" => true
            ], 201);
        }
        
        // Ubah data
        $magang->update([
            'nama_lengkap' => $req->name,
            'jurusan' => $req->jurusan,
            'perguruan_tinggi' => $req->universitas,
            'nomor_handphone' => $req->no_hp,
            'email' => $req->username,
            'password' => $req->password,
            'devisi' => $req->bagian,
            'photo' => '-'
        ]);

        return response([
            "status" => true,
            "pesan" => "Data Magang Berhasil Di Update"
        ],http_response_code());
    }
}
