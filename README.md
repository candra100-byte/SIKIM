# SIKIM - Sistem Informasi Kesehatan Imunisasi

Platform komprehensif untuk monitoring dan manajemen imunisasi di Kabupaten Lombok Tengah, Indonesia.

## 🚀 Quick Deploy to GitHub Pages

### 1. Upload to GitHub
```bash
git init
git add .
git commit -m "SIKIM: Production ready deployment"
git remote add origin https://github.com/YOUR_USERNAME/sikim.git
git push -u origin main
```

### 2. Enable GitHub Pages
1. Go to repository Settings > Pages
2. Source: Select "GitHub Actions"
3. Save

### 3. Access Your Website
After 3-5 minutes: `https://YOUR_USERNAME.github.io/sikim`

## 🔐 Demo Login Credentials

| Role | Username | Password | Access Level |
|------|----------|----------|--------------|
| Administrator | `admin` | `admin123` | Full system access |
| Staff Kesehatan | `staff` | `staff123` | Data entry & reports |
| Petugas Lapangan | `petugas` | `petugas123` | Mobile & QR scanner |

## ✨ Features

- **Real-time Dashboard** - Statistics and analytics
- **Patient Management** - Complete CRUD operations
- **Immunization Tracking** - Comprehensive records
- **WhatsApp Integration** - Automated communication
- **QR Code System** - Generate and scan functionality
- **AI Predictions** - Forecasting and trends
- **Mobile Responsive** - Touch-friendly interface
- **PWA Ready** - Installable as mobile app
- **Offline Mode** - Works without internet

## 🛠 Technology Stack

- **Frontend**: React 18, TypeScript, Tailwind CSS
- **Backend**: Node.js, Express, PostgreSQL
- **Deployment**: GitHub Pages, GitHub Actions
- **Authentication**: Multi-role demo system
- **Database**: PostgreSQL with Drizzle ORM

## 📱 Mobile App Features

- QR code scanner for patient verification
- Offline data synchronization
- Touch-optimized interface
- Field worker functionality

## 🌐 Production URLs

- **GitHub Pages**: https://YOUR_USERNAME.github.io/sikim
- **Custom Domain**: Configure in Settings > Pages

## 🔧 Local Development

```bash
npm install
npm run dev
```

Server runs on `http://localhost:5000`

## 📊 System Requirements

- Node.js 18+
- Modern web browser
- Internet connection (for initial load)

## 🔒 Security Features

- HTTPS enforced
- Secure authentication
- Input validation
- XSS protection
- CSRF protection

## 📞 Support

- Repository: https://github.com/YOUR_USERNAME/sikim
- Issues: Use GitHub Issues for bug reports
- Documentation: See docs/ folder

---

**SIKIM** - Meningkatkan cakupan imunisasi melalui teknologi modern 💉🏥