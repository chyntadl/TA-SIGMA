<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Tambah Data</title>
    <link href="/css/app.css" rel="stylesheet">
</head>
<body>
    <div class="flex items-center justify-center h-2/4">
        <div class="px-1 py-6 mt-4 text-left shadow-lg rounded-lg bg-green-200 w-2/4 pr-8 pl-8">
            <h3 class="text-2xl font-bold text-center text-sky-900">Tambah Data Peserta Magang</h3>
            <form class="mt-4">
                <div class="flex flex-row mb-3">
                    <div class="basis-1/2 mr-4">
                        <div>NPM :</div>
                        <input type="number" class="form-input px-2 py-2 rounded-lg w-full mb-2" id="npm">

                        <div>Nama Lengkap :</div>
                        <input type="text" class="form-input px-2 py-2 rounded-lg w-full mb-2" id="nama_lengkap">

                        <div>Jurusan :</div>
                        <input type="text" class="form-input px-2 py-2 rounded-lg w-full mb-2" id="jurusan">

                        <div>Perguruan Tinggi :</div>
                        <input type="text" class="form-input px-2 py-2 rounded-lg w-full mb-2" id="perguruan">
                    </div>

                    <div class="basis-1/2 ml-4">
                        <div>No. Handphone :</div>
                        <input type="number" class="form-input px-2 py-2 rounded-lg w-full mb-2" id="telepon">

                        <div>Email :</div>
                        <input type="email" class="form-input px-2 py-2 rounded-lg w-full mb-2" id="email">

                        <div>Password :</div>
                        <input type="password" class="form-input px-2 py-2 rounded-lg w-full mb-2" id="password">

                        <div>Devisi :</div>
                        <input type="text" class="form-input px-2 py-2 rounded-lg w-full mb-2" id="devisi">
                    </div>
                </div>

                <div class="text-center">
                    <button type="button" class="bg-gray-500 pl-8 pr-7 pt-2 pb-2 text-white inline-block m-3 rounded shadow hover:bg-gray-700" onclick="kembali()">Kembali</button>
                    <button type="button" class="bg-green-500 pl-8 pr-7 pt-2 pb-2 text-white inline-block m-3 rounded shadow hover:bg-green-700" onclick="tambah()">SIMPAN</button>
                </div>
            </form>
        </div>
    </div>

    <script>
        if (localStorage.getItem('id') === null){
            window.location.href = '{{ env('APP_URL') }}';
        } else if (localStorage.getItem('id') === ''){
            window.location.href = '{{ env('APP_URL') }}';
        }
        
        function kembali(){
            window.location.href = '{{ env('APP_URL') . '/dashboard' }}';
        }

        function tambah(){
            const npm = document.getElementById('npm').value;
            const nama = document.getElementById('nama_lengkap').value;
            const jurusan = document.getElementById('jurusan').value;
            const perguruan = document.getElementById('perguruan').value;
            const telepon = document.getElementById('telepon').value;
            const email = document.getElementById('email').value;
            const password = document.getElementById('password').value;
            const devisi = document.getElementById('devisi').value;

            if (npm === '') {
                alert('NPM Tidak Boleh Kosong');
            } else if (nama === '') {
                alert('Nama Lengkap Tidak Boleh Kosong');
            } else if (jurusan === '') {
                alert('Jurusan Tidak Boleh Kosong');
            } else if (perguruan === '') {
                alert('Perguruan Tinggi Tidak Boleh Kosong');
            } else if (telepon === '') {
                alert('Nomor Handphone Tidak Boleh Kosong');
            } else if (email === '') {
                alert('Email Tidak Boleh Kosong');
            } else if (password === '') {
                alert('Password Tidak Boleh Kosong');
            } else if (devisi === '') {
                alert('Devisi Tidak Boleh Kosong');
            } else {
                const data = {
                        npm: npm,
                        name: nama,
                        jurusan: jurusan,
                        universitas: perguruan,
                        no_hp: telepon,
                        username: email,
                        password: password,
                        bagian: devisi,
                    };

                    fetch('{{ env("API_URL") }}/api/magang', {
                            method: 'POST',
                            body: JSON.stringify(data),
                            headers: {
                                'Content-Type': 'application/json'
                            }
                        })
                        .then(response => response.json())
                        .then(data => {
                            alert(data.pesan);
                            if (data.status) {
                               window.location.href = '{{ env("APP_URL") . '/dashboard' }}';
                            }
                        })
                        .catch(error => console.error(error))
            }
        }
    </script>
</body>
</html>