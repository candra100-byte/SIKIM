# SIKIM - GitHub Deployment Guide

## Langkah-langkah Deploy ke GitHub Pages

### 1. Setup Repository GitHub

1. **Buat repository baru di GitHub:**
   ```
   Nama: sikim
   Deskripsi: SIKIM - Sistem Informasi Kesehatan Imunisasi Lombok Tengah
   Public/Private: Public (untuk GitHub Pages gratis)
   ```

2. **Clone dan push kode:**
   ```bash
   git init
   git add .
   git commit -m "Initial commit: SIKIM application"
   git branch -M main
   git remote add origin https://github.com/USERNAME/sikim.git
   git push -u origin main
   ```

### 2. Konfigurasi GitHub Pages

1. **Masuk ke Settings repository**
2. **Scroll ke bagian "Pages"**
3. **Source: Pilih "GitHub Actions"**
4. **Custom domain (opsional):** Masukkan domain custom jika ada

### 3. Setup Environment Variables

Di repository GitHub, masuk ke **Settings > Secrets and variables > Actions**

Tambahkan secrets berikut:

```
VITE_API_URL = https://your-backend-api.herokuapp.com/api
VITE_BACKEND_URL = https://your-backend-service.com
DATABASE_URL = postgresql://username:password@host:port/database
SESSION_SECRET = your-secret-key
```

### 4. Build Configuration

File yang sudah dibuat untuk deployment:

- ✅ `.github/workflows/deploy.yml` - GitHub Actions workflow
- ✅ `vite.config.production.ts` - Production build config
- ✅ `package-production.json` - Production dependencies
- ✅ `client/src/config/api.ts` - API configuration dengan fallback

### 5. Deploy Backend (Pilihan)

#### Option A: Heroku (Recommended)
```bash
# Install Heroku CLI
npm install -g heroku

# Login dan create app
heroku login
heroku create sikim-backend

# Set environment variables
heroku config:set NODE_ENV=production
heroku config:set DATABASE_URL="your-postgresql-url"
heroku config:set SESSION_SECRET="your-secret"

# Deploy
git push heroku main
```

#### Option B: Railway/Render/Vercel
Gunakan platform deployment lain yang mendukung Node.js dan PostgreSQL

#### Option C: Demo Mode Only
Aplikasi akan berjalan dalam demo mode dengan data static

### 6. Demo Mode Configuration

Aplikasi sudah dikonfigurasi untuk berjalan dalam demo mode jika backend tidak tersedia:

- ✅ Data demo untuk semua endpoints
- ✅ Login system dengan kredensial demo
- ✅ Offline functionality
- ✅ Static data untuk charts dan reports

### 7. Domain Custom (Opsional)

1. **Beli domain (contoh: sikim-lombok.com)**
2. **Tambahkan CNAME record:**
   ```
   Type: CNAME
   Name: www
   Value: username.github.io
   ```
3. **Update file `deploy.yml`:**
   ```yaml
   cname: sikim-lombok.com
   ```

### 8. SSL Certificate

GitHub Pages otomatis menyediakan SSL certificate untuk:
- ✅ username.github.io/sikim
- ✅ Domain custom yang dikonfigurasi

### 9. Performance Optimization

File yang sudah dikonfigurasi:

- ✅ Code splitting untuk vendor libraries
- ✅ Minification dan compression
- ✅ Lazy loading untuk components
- ✅ Service Worker untuk caching
- ✅ PWA configuration

### 10. Testing Deployment

Setelah push ke GitHub:

1. **Check Actions tab** untuk melihat build progress
2. **Akses URL:** `https://username.github.io/sikim`
3. **Test demo login:**
   - admin/admin123
   - staff/staff123
   - petugas/petugas123

### 11. Monitoring & Analytics

Tambahkan (opsional):

- **Google Analytics 4**
- **Sentry untuk error tracking**
- **Uptime monitoring**

### 12. Update & Maintenance

Untuk update aplikasi:

```bash
git add .
git commit -m "Update: description of changes"
git push origin main
```

GitHub Actions akan otomatis rebuild dan deploy.

### 13. Troubleshooting

**Jika build gagal:**
- Check Actions logs di GitHub
- Pastikan environment variables benar
- Verify Node.js version compatibility

**Jika API tidak berfungsi:**
- Aplikasi akan otomatis fallback ke demo mode
- Check CORS configuration di backend
- Verify API URLs di environment variables

**Jika domain custom tidak berfungsi:**
- Wait 24-48 jam untuk DNS propagation
- Check CNAME configuration
- Verify GitHub Pages settings

### 14. Production URLs

Setelah deployment berhasil:

- **GitHub Pages:** `https://username.github.io/sikim`
- **Custom Domain:** `https://sikim-lombok.com`
- **Backend API:** `https://sikim-backend.herokuapp.com`

### 15. Security Notes

- ✅ HTTPS enforced
- ✅ Environment variables secured
- ✅ No sensitive data in client code
- ✅ CORS properly configured
- ✅ Rate limiting implemented

Aplikasi siap untuk production use dengan high availability dan performance yang optimal!