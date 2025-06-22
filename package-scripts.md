# SIKIM - Package Scripts Documentation

## Available Scripts

### Development
```bash
npm run dev
```
Menjalankan aplikasi dalam mode development dengan hot reload.

### Database
```bash
npm run db:push
```
Push schema changes ke database PostgreSQL.

```bash
npm run db:studio
```
Buka Drizzle Studio untuk database management (jika diperlukan).

### Build & Production
```bash
npm run build
```
Build aplikasi untuk production.

```bash
npm start
```
Start production server.

### Utility Scripts
```bash
npm run type-check
```
Check TypeScript types tanpa build.

```bash
npm run lint
```
Run ESLint untuk code quality check.

## Environment Setup

### Development
1. Clone repository
2. Install dependencies: `npm install`
3. Setup environment variables
4. Initialize database: `npm run db:push`
5. Start development: `npm run dev`

### Production
1. Set production environment variables
2. Build application: `npm run build`
3. Start server: `npm start`

## Custom Scripts (if needed)

### Seed Database
```bash
npm run seed
```
Populate database dengan sample data.

### Reset Database
```bash
npm run db:reset
```
Reset database dan re-create tables.

### Export Data
```bash
npm run export
```
Export data untuk backup.

### Import Data
```bash
npm run import
```
Import data dari backup file.