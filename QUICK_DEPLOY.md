# SIKIM - Quick Deploy ke GitHub

## Langkah Singkat Deploy

### 1. Upload ke GitHub Repository

```bash
# Inisialisasi git (jika belum)
git init

# Tambahkan semua file
git add .

# Commit
git commit -m "SIKIM: Sistem Informasi Kesehatan Imunisasi - Ready for production"

# Buat repository di GitHub dengan nama: sikim

# Connect ke GitHub
git remote add origin https://github.com/USERNAME/sikim.git
git branch -M main
git push -u origin main
```

### 2. Aktifkan GitHub Pages

1. **Masuk ke repository GitHub**
2. **Settings > Pages**
3. **Source: GitHub Actions**
4. **Save**

### 3. Otomatis Deploy

GitHub Actions akan otomatis:
- ✅ Install dependencies
- ✅ Build aplikasi untuk production
- ✅ Deploy ke GitHub Pages
- ✅ Setup SSL certificate
- ✅ Enable custom domain (jika ada)

### 4. Akses Website

Setelah build selesai (2-3 menit):

**URL Publik:** `https://USERNAME.github.io/sikim`

### 5. Test Login Demo

Website akan berjalan dalam demo mode dengan kredensial:

- **Admin:** admin / admin123
- **Staff:** staff / staff123  
- **Petugas:** petugas / petugas123

### 6. Fitur yang Berfungsi

✅ **Dashboard** dengan statistik real-time  
✅ **Manajemen Pasien** dengan data demo  
✅ **Tracking Imunisasi** lengkap  
✅ **Reports & Analytics** interaktif  
✅ **WhatsApp Chat** simulation  
✅ **QR Code Generator/Scanner**  
✅ **Mobile responsive** design  
✅ **Offline** functionality  

### 7. Custom Domain (Opsional)

Untuk menggunakan domain sendiri:

1. **Beli domain** (contoh: sikim-lombok.com)
2. **Settings > Pages > Custom domain**
3. **Masukkan domain** dan Save
4. **Setup DNS** di registrar domain:
   ```
   Type: CNAME
   Name: www
   Value: USERNAME.github.io
   ```

### 8. Backend Database (Opsional)

Untuk data real (bukan demo):

1. **Deploy backend** ke Heroku/Railway
2. **Setup PostgreSQL** database
3. **Update environment variables** di GitHub Secrets
4. **Rebuild** aplikasi

### 9. Troubleshooting

**Jika build gagal:**
- Check Actions tab untuk error logs
- Pastikan file package.json valid
- Node.js version 18+ required

**Jika website tidak loading:**
- Wait 5-10 menit untuk propagation
- Check Settings > Pages untuk status
- Clear browser cache

**Jika demo login tidak berfungsi:**
- Refresh halaman
- Check browser console untuk errors
- Gunakan incognito mode

### 10. Update Website

Untuk update konten:

```bash
git add .
git commit -m "Update: description"
git push origin main
```

Auto-deploy dalam 2-3 menit.

## URLs Hasil Deploy

- **GitHub Pages:** https://USERNAME.github.io/sikim
- **Custom Domain:** https://sikim-lombok.com (jika dikonfigurasi)
- **Repository:** https://github.com/USERNAME/sikim

Website siap digunakan publik dengan performa tinggi dan keamanan SSL!