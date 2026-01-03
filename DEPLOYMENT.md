# Deployment Guide for AlignSAE Website

## Quick Start

### Local Preview

To preview the website locally:

```bash
# Make the script executable (first time only)
chmod +x serve.sh

# Start the local server
./serve.sh
```

Then open your browser to `http://localhost:8000`

Alternatively, you can use any static file server:
```bash
# Python 3
python3 -m http.server 8000

# Node.js (if you have npx)
npx serve

# PHP
php -S localhost:8000
```

## Deploying to GitHub Pages

### Option 1: Using GitHub's Web Interface

1. **Create a new repository** on GitHub (e.g., `alignsae-site`)

2. **Upload all files** from this directory to the repository

3. **Enable GitHub Pages:**
   - Go to repository Settings → Pages
   - Under "Source", select "Deploy from a branch"
   - Select the `main` branch and `/ (root)` folder
   - Click Save

4. Your site will be available at: `https://yourusername.github.io/alignsae-site`

### Option 2: Using Git Command Line

```bash
# Initialize git repository (if not already done)
git init
git add .
git commit -m "Initial commit: AlignSAE website"

# Add remote and push
git remote add origin https://github.com/yourusername/alignsae-site.git
git branch -M main
git push -u origin main

# Enable GitHub Pages through Settings → Pages
```

### Option 3: Using GitHub CLI

```bash
# Create repository and push
gh repo create alignsae-site --public --source=. --remote=origin --push

# Enable GitHub Pages
gh api repos/yourusername/alignsae-site/pages \
  -X POST \
  -f source[branch]=main \
  -f source[path]=/
```

## Custom Domain (Optional)

To use a custom domain:

1. Add a `CNAME` file to the repository root with your domain:
   ```
   alignsae.yourdomain.com
   ```

2. Configure DNS:
   - Add a CNAME record pointing to `yourusername.github.io`
   - Or for apex domain, add A records to GitHub's IPs:
     ```
     185.199.108.153
     185.199.109.153
     185.199.110.153
     185.199.111.153
     ```

3. In GitHub Settings → Pages, enter your custom domain and save

## Updating the Website

After making changes:

```bash
# Stage all changes
git add .

# Commit with descriptive message
git commit -m "Update: description of changes"

# Push to GitHub
git push origin main
```

GitHub Pages will automatically rebuild and deploy (usually takes 1-2 minutes).

## Troubleshooting

### PDFs Not Displaying

Some browsers may not display embedded PDFs. The website includes fallback links to download PDFs directly. For better compatibility, you can:

1. Convert PDFs to PNG:
   ```bash
   # Using ImageMagick
   convert -density 300 figure.pdf figure.png
   
   # Or using pdftoppm
   pdftoppm -png -r 300 figure.pdf figure
   ```

2. Update the image references in `index.html`

### Images Not Loading

- Ensure all image paths are relative (not absolute)
- Check that image files are committed to the repository
- Verify file names match exactly (case-sensitive)

### CSS/JS Not Loading

- Check that `static/` directory is included in the repository
- Ensure file paths in HTML are correct
- Clear browser cache (Ctrl+Shift+R or Cmd+Shift+R)

### GitHub Pages Not Building

- Check the Actions tab for build errors
- Ensure `index.html` is in the root directory
- Verify branch name is correct in Pages settings

## File Structure

```
alignsae-site/
├── index.html              # Main webpage
├── serve.sh               # Local server script
├── README.md              # Template README
├── README_PROJECT.md      # Project-specific README
├── DEPLOYMENT.md          # This file
├── plots/                 # Result visualizations
│   ├── logo.png
│   ├── bind&control.png
│   ├── heatmap_0_6.png
│   └── ...
├── figures/               # Paper figures
│   ├── fig1_pipeline_final.pdf
│   ├── fig2_2_hop_final.pdf
│   └── ...
├── AlignSAE/             # Additional resources
└── static/               # CSS, JS, fonts
    ├── css/
    ├── js/
    └── images/
```

## Best Practices

1. **Optimize Images**: Compress images before uploading to reduce load times
2. **Test Locally**: Always preview changes locally before pushing
3. **Git Commits**: Use descriptive commit messages
4. **Backup**: Keep local backups of all source files
5. **Mobile Testing**: Test on mobile devices or use browser dev tools

## Additional Resources

- [GitHub Pages Documentation](https://docs.github.com/en/pages)
- [Custom Domain Setup](https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site)
- [Academic Project Page Template](https://github.com/eliahuhorwitz/Academic-project-page-template)

## Support

For issues with the website template:
- Template Issues: https://github.com/eliahuhorwitz/Academic-project-page-template/issues

For issues with AlignSAE content:
- Contact: mingly@arizona.edu
- GitHub: https://github.com/yminglai/AlignSAE
