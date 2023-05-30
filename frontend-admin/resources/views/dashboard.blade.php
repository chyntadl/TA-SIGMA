<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dashboard</title>
    <link href="/css/app.css" rel="stylesheet">
</head>
<body>
    <div class="text-center">
        <button type="button" class="bg-green-500 pl-8 pr-7 pt-2 pb-2 text-white inline-block m-3 rounded shadow hover:bg-green-700" onclick="tambah_data()">Tambah</button>
        <button type="button" class="bg-blue-500 pl-8 pr-7 pt-2 pb-2 text-white inline-block m-3 rounded shadow hover:bg-blue-700" onclick="reload()">Refhresh</button>
        <button type="button" class="bg-gray-500 pl-8 pr-7 pt-2 pb-2 text-white inline-block m-3 rounded shadow hover:bg-gray-700" onclick="keluar()">Keluar</button>
    </div>
    <div class="w-full pl-4 pr-4 mt-4">
        <div class="pl-4 pr-4 pt-4 pb-4 text-left shadow-2xl rounded-lg bg-white w-full">
            <table class="w-full">
                <thead>
                    <tr>
                        <th class="text-center border-2 border-gray-600 w-1/12">NPM</th>
                        <th class="text-center border-2 border-gray-600 w-2/12">Nama Lengkap</th>
                        <th class="text-center border-2 border-gray-600 w-1/12">Jurusan</th>
                        <th class="text-center border-2 border-gray-600 w-2/12">Perguruan Tinggi</th>
                        <th class="text-center border-2 border-gray-600 w-2/12">No. Handphone</th>
                        <th class="text-center border-2 border-gray-600 w-2/12">Email</th>
                        <th class="text-center border-2 border-gray-600 w-1/12">Devisi</th>
                        <th class="text-center border-2 border-gray-600 w-1/12">Aksi</th>
                    </tr>
                </thead>
                <tfoot>
                    <tr>
                        <th class="text-center border-2 border-gray-600 w-1/12">NPM</th>
                        <th class="text-center border-2 border-gray-600 w-2/12">Nama Lengkap</th>
                        <th class="text-center border-2 border-gray-600 w-1/12">Jurusan</th>
                        <th class="text-center border-2 border-gray-600 w-2/12">Perguruan Tinggi</th>
                        <th class="text-center border-2 border-gray-600 w-2/12">No. Handphone</th>
                        <th class="text-center border-2 border-gray-600 w-2/12">Email</th>
                        <th class="text-center border-2 border-gray-600 w-1/12">Devisi</th>
                        <th class="text-center border-2 border-gray-600 w-1/12">Aksi</th>
                    </tr>
                </tfoot>
                <tbody>
                        @foreach ($result as $output)
                        <tr>
                            <td class="font-bold text-center border-2 border-gray-600">{{ $output->npm }}</td>
                            <td class="text-left pl-2 pr-2 border-2 border-gray-600">{{ $output->nama_lengkap }}</td>
                            <td class="text-center border-2 border-gray-600">{{ $output->jurusan }}</td>
                            <td class="text-center pl-2 pr-2 border-2 border-gray-600">{{ $output->perguruan_tinggi }}</td>
                            <td class="text-center border-2 border-gray-600">{{ $output->nomor_handphone }}</td>
                            <td class="text-left pl-2 pr-2 border-2 border-gray-600">{{ $output->email }}</td>
                            <td class="text-center border-2 border-gray-600">{{ $output->devisi }}</td>
                            <td class="text-center border-2 border-gray-600"><Button type="button" class="bg-red-500 pl-8 pr-7 pt-2 pb-2 text-white inline-block m-3 rounded shadow hover:bg-red-700" onclick="deleteItem('{{ $output->id }}','{{ $output->nama_lengkap }}')">Delete</Button></td>
                        </tr>
                        @endforeach
                </tbody>
            </table>
        </div>
    </div>

    <script>
        if (localStorage.getItem('id') === null){
            window.location.href = '{{ env('APP_URL') }}';
        } else if (localStorage.getItem('id') === ''){
            window.location.href = '{{ env('APP_URL') }}';
        }

        function keluar() {
            const result = confirm(`Apakah Anda yakin ingin keluar?`);

            if (result) {
                localStorage.clear();
                window.location.href = '{{ env('APP_URL') }}';
            }
        }

        function tambah_data() {
            window.location.href = '{{ env('APP_URL') . '/tambah_data' }}';
        }

        function reload() {
            window.location.href = '{{ env('APP_URL') . '/dashboard' }}';
        }

        function deleteItem(id, nama) {
            const result = confirm(`Apakah Anda yakin ingin melanjutkan menghapus ${nama}?`);

            if (result) {
                fetch(`{{ env('API_URL') }}/api/magang/${id}`, {
                method: 'DELETE',
                headers: {
                    'Content-Type': 'application/json'
                }
                })
                .then(response => response.json())
                .then(data => {
                    alert(data.pesan);
                    if (data.status) {
                        window.location.href = '{{ env('APP_URL') . '/dashboard' }}';
                    }
                })
                .catch(error => console.error(error));
            }
        }
    </script>
</body>
</html>