<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Mmagang extends Model
{
    use HasFactory;
    protected $fillable = ['npm', 'nama_lengkap', 'jurusan', 'perguruan_tinggi', 'nomor_handphone', 'email', 'password', 'devisi', 'photo'];
}
