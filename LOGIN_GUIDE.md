# SIKIM - Panduan Login dan Akses Sistem

## Sistem Authentication

SIKIM menggunakan **Replit Auth** yang terintegrasi dengan akun Replit. Tidak ada username/password tradisional yang perlu dibuat secara terpisah.

## Cara Login

### 1. Akses Aplikasi
- Buka website SIKIM di browser
- Klik tombol **"Masuk Sistem"** di halaman utama

### 2. Login dengan Replit
- Anda akan diarahkan ke halaman login Replit
- Masukkan kredensial Replit Anda:
  - **Email/Username**: Akun Replit Anda
  - **Password**: Password Replit Anda

### 3. Otorisasi Aplikasi
- Replit akan meminta izin untuk memberikan akses ke SIKIM
- Klik **"Authorize"** atau **"Izinkan"**

### 4. Redirect ke Dashboard
- Setelah berhasil login, Anda akan diarahkan ke Dashboard SIKIM
- Sistem akan otomatis membuat profil pengguna berdasarkan data Replit

## Role dan Permissions

### Admin
- Akses penuh ke semua fitur
- Manajemen user dan password
- Konfigurasi sistem
- Export/import data
- Analytics dan reports

### Staff  
- Input data pasien
- Recording imunisasi
- WhatsApp communication
- Basic reports
- QR code scanning

### Field Worker
- Mobile interface
- Data entry di lapangan
- QR code scanning
- Offline capability

## Untuk Development/Testing

Jika Anda ingin membuat sistem login tradisional atau akun demo, saya dapat menambahkan:

### Option 1: Demo Accounts
```
Admin Demo:
- Username: admin@sikim.id
- Password: admin123

Staff Demo:
- Username: staff@sikim.id  
- Password: staff123
```

### Option 2: Local Authentication
Menambahkan sistem login lokal dengan database users:
- Registration form
- Password hashing
- Session management
- Role assignment

## Akses Cepat untuk Testing

Untuk keperluan testing dan demo, saya dapat membuat:

1. **Bypass Authentication** (untuk development)
2. **Demo Mode** dengan data sample
3. **Guest Access** dengan fitur terbatas

## Konfigurasi Admin

Setelah login pertama kali sebagai admin, Anda dapat:

1. **Manage Users**
   - Assign roles ke user baru
   - Change permissions
   - Deactivate accounts

2. **System Settings**
   - Hospital/clinic name
   - WhatsApp configuration
   - Notification settings

3. **Password Management**
   - Reset user passwords
   - Force password changes
   - Set password policies

## Troubleshooting Login

### Jika Login Gagal:
1. Clear browser cache dan cookies
2. Pastikan Replit account aktif
3. Check internet connection
4. Try incognito/private browsing

### Jika Stuck di Authorization:
1. Refresh halaman login
2. Logout dari Replit terlebih dahulu
3. Login ulang ke Replit
4. Coba akses SIKIM lagi

### Jika Error 401 Unauthorized:
1. Check environment variables
2. Verify REPL_ID dan REPLIT_DOMAINS
3. Restart aplikasi
4. Clear session storage

## Contact Support

Jika masih ada masalah dengan login:
- Email: admin@sikim-lombok.id
- WhatsApp: +62-xxx-xxxx-xxxx
- Internal: Hubungi administrator sistem