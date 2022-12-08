<h1 align="center">Selamat datang di E - Wallet 👋</h1>

## Apa itu E - Wallet?

Web E - Wallet  yang dibuat oleh <a href="https://github.com/prosoxwb"> Kelompok WhyPhi </a>. **E - Wallet adalah Website untuk para mahasiswa dapat melihat jumlah saldo, dan mengirim uang dengan mudah melalui website.**

## Fitur apa saja yang tersedia di Sistem Informasi Akademik Sekolah?

- Register
- Login
- Nomor Transaksi
- Riwayat Transaksi
- Saldo
- Admin
- User
- Send Money
- Dan lain-lain

## Release Date

**Release date : 1 Desember 2022**

> E - Wallet merupakan project open source yang dibuat oleh Kelompok WhyPhi. Kalian dapat download/fork/clone. Cukup beri stars di project ini agar memberiku semangat. Terima kasih!

---

## Default Account for testing

**Admin Default Account**

- email: kamalmlzka@gmail.com
- Password: kamal

---

## Install

1. **Clone Repository**

```bash
git clone https://github.com/prosoxwb/e-wallet.git
cd e-wallet
composer install
composer update
cp .env.example .env
```

2. **Buka `.env` lalu ubah baris berikut sesuai dengan databasemu yang ingin dipakai**

```bash
DB_PORT=3306
DB_DATABASE=mywallet
DB_USERNAME=root
DB_PASSWORD=
```

3. **Instalasi website**

```bash
php artisan key:generate
php artisan migrate --seed
```

4. **Jalankan website**

```bash
php artisan serve
```

## Author

- Instagram : <a href="https://instagram.com/kamalmlzka/"> kamalmlzka</a>
- Github : <a href="https://github.com/prosoxwb"> prosoxwb</a>

## Contributing

Contributions, issues and feature requests di persilahkan.
Jangan ragu untuk memeriksa halaman masalah jika Anda ingin berkontribusi. **Berhubung Project ini saya sudah selesaikan sendiri, namun banyak fitur yang kalian dapat tambahkan silahkan berkontribusi yaa!**

## License

- Copyright © 2022 Tubes Pa WhyPhi.
- **E - Wallet is open-sourced software licensed under the MIT license.**