<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <link href="/css/app.css" rel="stylesheet">
</head>
<body>
    <div class="flex items-center justify-center h-96">
        <div class="px-10 py-6 mt-4 text-left shadow-lg rounded-md bg-green-200">
            <h3 class="text-2xl font-bold text-center text-sky-900">Selamat Datang</h3>
            <form class="mt-4">
                <div class="mb-3 text-center">
                    <label class="w-auto mr-2">Username</label>
                    <input type="email" class="rounded-md"id="username">
                </div>

                <div class="mb-3 text-center">
                    <label class="w-auto ml-1 mr-2">Password</label>
                    <input type="password" class="rounded-md"id="password">
                </div>

                <div class="text-center">
                    <button type="button" class="bg-green-500 pl-8 pr-7 pt-2 pb-2 text-white inline-block m-3 rounded shadow hover:bg-green-700" onclick="login()">Login</button>
                </div>
            </form>
        </div>
    </div>

    <script>
        function login(){
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;

            if (username === '') {
                alert('Username Tidak Boleh Kosong');
            } else if (password === '') {
                alert('Password Tidak Boleh Kosong');
            } else {
                const data = {
                        username: username,
                        password: password
                    };

                    fetch('{{ env('API_URL') }}/api/login', {
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
                               localStorage.setItem('id', data.id);
                               window.location.href = '{{ env('APP_URL') . '/dashboard' }}';
                            }
                        })
                        .catch(error => console.error(error))
            }
        }
    </script>
</body>
</html>