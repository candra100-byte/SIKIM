# SIKIM - Panduan Deployment Online

## Konfigurasi Environment Variables

Pastikan environment variables berikut telah dikonfigurasi di Replit Secrets:

### Required Secrets
```
DATABASE_URL=postgresql://username:password@host:port/database
SESSION_SECRET=random-secret-key-for-sessions
REPL_ID=your-repl-id
REPLIT_DOMAINS=your-domain.replit.app
ISSUER_URL=https://replit.com/oidc
```

### Optional Secrets (WhatsApp Integration)
```
WHATSAPP_ACCESS_TOKEN=your-whatsapp-business-api-token
WHATSAPP_PHONE_NUMBER_ID=your-phone-number-id
WHATSAPP_VERIFY_TOKEN=your-webhook-verify-token
```

## Langkah Deployment

### 1. Setup Database
```bash
npm run db:push
```

### 2. Jalankan Aplikasi
```bash
npm run dev
```

### 3. Verifikasi Database
Pastikan tabel berikut telah terbuat:
- users (untuk authentication)
- patients (data pasien)
- vaccines (master vaksin)
- immunizations (record imunisasi)
- chat_messages (pesan WhatsApp)
- ai_predictions (prediksi AI)
- survey_responses (feedback)
- system_settings (konfigurasi)
- sessions (session management)

### 4. Test Authentication
- Akses aplikasi di browser
- Klik tombol "Login" untuk test Replit Auth
- Setelah login, verify dashboard dapat diakses

### 5. Test Core Features
- **Dashboard**: Statistics dan charts
- **Patients**: Add/edit/search patients
- **Immunization**: Record immunizations
- **Reports**: View analytics dan AI predictions
- **Chat**: WhatsApp message management
- **Settings**: System configuration

## Troubleshooting

### Authentication Issues
- Verify REPL_ID dan REPLIT_DOMAINS di Secrets
- Check SESSION_SECRET ada dan tidak kosong
- Pastikan domain di REPLIT_DOMAINS sesuai dengan actual domain

### Database Issues
- Run `npm run db:push` untuk sync schema
- Check DATABASE_URL connection string
- Verify PostgreSQL database accessible

### WhatsApp Integration
- Verify WHATSAPP_ACCESS_TOKEN valid
- Check WHATSAPP_PHONE_NUMBER_ID correct
- Test webhook dengan ngrok untuk development

## Production Checklist

- [ ] All environment variables configured
- [ ] Database schema up to date
- [ ] Authentication working
- [ ] All pages accessible
- [ ] WhatsApp webhook configured
- [ ] QR code generation working
- [ ] File upload/download functional
- [ ] Mobile responsive
- [ ] SSL certificate active
- [ ] Performance optimized

## Security Notes

- Session cookies secure=true untuk HTTPS
- Database credentials tidak hardcoded
- API endpoints protected dengan authentication
- Input validation dengan Zod schemas
- Rate limiting implemented
- CORS configured properly

## Monitoring

- Check server logs untuk errors
- Monitor database performance
- Track WhatsApp message delivery
- Monitor user authentication success rate
- Check AI prediction accuracy