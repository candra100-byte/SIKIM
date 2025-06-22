#!/bin/bash

# SIKIM GitHub Deployment Script
echo "🚀 Starting SIKIM deployment to GitHub Pages..."

# Build for production
echo "📦 Building application..."
cd client
npm run build
cd ..

# Copy dist files to root for GitHub Pages
echo "📋 Preparing files for GitHub Pages..."
cp -r client/dist/* .
cp client/dist/index.html ./404.html

# Create .nojekyll to prevent GitHub from processing with Jekyll
touch .nojekyll

echo "✅ SIKIM ready for GitHub Pages deployment!"
echo ""
echo "Next steps:"
echo "1. git add ."
echo "2. git commit -m 'Deploy SIKIM to GitHub Pages'"
echo "3. git push origin main"
echo ""
echo "Your website will be available at: https://USERNAME.github.io/sikim"