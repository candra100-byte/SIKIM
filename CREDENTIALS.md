# SIKIM - Kredensial Login Sistem

## Username dan Password untuk Akses Website

Berikut adalah kredensial login yang dapat Anda gunakan untuk mengakses sistem SIKIM:

### 👨‍💼 Administrator
- **Username**: `admin`
- **Password**: `admin123`
- **Role**: Administrator
- **Akses**: Semua fitur sistem, manajemen user, reports, settings

### 👩‍⚕️ Staff Kesehatan  
- **Username**: `staff`
- **Password**: `staff123`
- **Role**: Staff Kesehatan
- **Akses**: Input data pasien, recording imunisasi, laporan dasar

### 👨‍🔬 Petugas Lapangan
- **Username**: `petugas`  
- **Password**: `petugas123`
- **Role**: Petugas Lapangan
- **Akses**: Mobile interface, QR scanner, data entry lapangan

## Cara Login

### Option 1: Demo Login (Recommended untuk Testing)
1. Buka aplikasi SIKIM
2. Klik tombol **"Demo Login"** 
3. Pilih salah satu akun demo atau masukkan kredensial manual
4. Klik **"Masuk Sistem"**

### Option 2: Replit Auth (Production)
1. Klik **"Login dengan Replit"**
2. Gunakan akun Replit Anda
3. Authorize aplikasi
4. Otomatis masuk ke dashboard

## Features per Role

### Admin Access
- ✅ Dashboard lengkap dengan analytics
- ✅ Manajemen pasien (CRUD)
- ✅ Recording imunisasi
- ✅ WhatsApp chat management  
- ✅ AI predictions & reports
- ✅ System settings
- ✅ User management
- ✅ Export/import data
- ✅ QR code generation

### Staff Access
- ✅ Dashboard dengan statistik
- ✅ Input data pasien baru
- ✅ Recording imunisasi
- ✅ WhatsApp communication
- ✅ Basic reports
- ✅ QR code scanning
- ❌ System settings
- ❌ User management

### Petugas Lapangan
- ✅ Mobile-optimized interface
- ✅ QR code scanner
- ✅ Basic data entry
- ✅ Patient lookup
- ❌ Advanced reports
- ❌ System configuration

## Quick Access URLs

Setelah login, Anda dapat akses langsung:
- Dashboard: `/`
- Patients: `/patients`
- Immunization: `/immunization`
- Reports: `/reports`
- Chat: `/chat`
- Settings: `/settings`

## Database Seeded dengan Sample Data

Sistem sudah berisi data sample:
- 4 pasien demo
- 5 record imunisasi
- 4 chat messages
- 4 survey responses
- 3 AI predictions
- 6 master vaccines
- System settings

## Session Management

- Demo sessions berlangsung selama browser session
- Untuk logout: gunakan tombol logout di header
- Session otomatis expire setelah inaktif

## Production Notes

Untuk production deployment:
- Gunakan Replit Auth sebagai primary authentication
- Demo mode dapat dinonaktifkan dengan environment variable
- Implement proper password policies
- Add two-factor authentication
- Setup audit logging