# SIKIM - Setup Administrator

## Akun Administrator

Saat ini sistem menggunakan Replit Auth, namun untuk keperluan demo dan testing, berikut informasi akun:

### Current System User
```
ID: system
Email: system@sikim.id
Role: admin
Status: active
```

## Untuk Akses Demo/Testing

Jika Anda memerlukan akses demo tanpa harus login Replit, saya dapat:

### 1. Membuat Demo Mode
```javascript
// Bypass authentication untuk demo
const DEMO_MODE = true;
const DEMO_USER = {
  id: 'demo-admin',
  email: 'admin@demo.sikim.id',
  firstName: 'Demo',
  lastName: 'Administrator',
  role: 'admin'
};
```

### 2. Local Authentication System
Menambahkan sistem login lokal dengan kredensial:
```
Admin:
- Username: admin
- Password: sikim2024

Staff:
- Username: staff  
- Password: staff2024

Field Worker:
- Username: petugas
- Password: petugas2024
```

### 3. Quick Access Links
```
Admin Dashboard: /admin
Staff Portal: /staff
Field Worker: /mobile
Public Reports: /public
```

## Password Management Features

Sebagai admin, Anda akan memiliki akses ke:

1. **User Management**
   - Lihat semua user
   - Edit user roles
   - Reset passwords
   - Deactivate accounts

2. **Password Policies**
   - Minimum length: 8 characters
   - Require special characters
   - Password expiry: 90 days
   - Login attempt limits

3. **Security Settings**
   - Session timeout
   - IP whitelisting
   - Two-factor authentication
   - Audit logging

## Implementasi Cepat

Apakah Anda ingin saya:

1. **Aktifkan Demo Mode** - Bypass Replit Auth untuk testing
2. **Buat Local Auth** - Sistem login tradisional dengan username/password
3. **Setup Admin Panel** - Interface untuk manage users dan passwords
4. **Tetap Replit Auth** - Gunakan akun Replit yang sudah ada

Pilih opsi mana yang Anda preferensi untuk akses aplikasi SIKIM.