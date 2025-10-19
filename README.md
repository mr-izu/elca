# Elca - Jekyll Theme for Qxel Platform

![Elca Theme](https://img.shields.io/badge/Elca-Jekyll%20Theme-blue?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-green?style=for-the-badge)

A clean, modern, and easy-to-customize Jekyll theme specifically designed for Qxel Platform documentation. Elca provides a professional and responsive layout perfect for technical documentation, project websites, and platform guides.

## 🌟 Demo

Check out the live demo: [https://mr-izu.github.io/assignments/](https://mr-izu.github.io/assignments/)

## 📦 Repository

**Elca Theme GitHub**: [https://github.com/mr-izu/elca](https://github.com/mr-izu/elca)

## ✨ Features

- **Responsive Design** - Looks great on all devices
- **Easy Customization** - Simple configuration and styling
- **Clean Layout** - Professional and readable documentation format
- **Fast Performance** - Optimized for quick loading
- **SEO Friendly** - Built with search engine optimization in mind
- **Syntax Highlighting** - Perfect for code documentation
- **Dark/Light Mode** (if applicable) - User preference support

## 🚀 Quick Start

### Prerequisites

Make sure you have the following installed:
- Ruby (version 2.5.0 or higher)
- RubyGems
- GCC and Make

### Installation

1. **Install Jekyll and Bundler**
   ```bash
   gem install jekyll bundler
   ```

2. **Create a new Jekyll site** (if starting from scratch)
   ```bash
   jekyll new my-site
   cd my-site
   ```

3. **Configure Elca theme in your `_config.yml`**
   ```yaml
   remote_theme: mr-izu/elca
   ```

4. **Install dependencies**
   ```bash
   bundle install
   ```

5. **Serve your site locally**
   ```bash
   bundle exec jekyll serve
   ```

6. **View your site** at `http://localhost:4000`

## ⚙️ Configuration

Add the following to your `_config.yml` file to use Elca theme:

```yaml
# Theme Configuration
remote_theme: mr-izu/elca

# Site Settings
title: "Your Qxel Documentation"
description: "Documentation for Qxel Platform"
baseurl: "" # subpath of your site
url: "https://yourdomain.com" # base hostname & protocol

# Elca Theme Settings
elca:
  primary_color: "#your-color"
  accent_color: "#your-color"
  
# Navigation
navigation:
  - name: "Home"
    link: "/"
  - name: "Docs"
    link: "/docs"
  - name: "About"
    link: "/about"
```

## 📁 Project Structure

After setting up with Elca theme, your site structure should look like:

```
your-site/
├── _config.yml         # Configuration file
├── index.md            # Homepage
├── about.md            # About page
├── docs/               # Documentation folder
│   ├── index.md
│   └── other-pages.md
└── assets/             # Your custom assets (optional)
    ├── images/
    └── css/
```

## 🎨 Customization

### Using Custom Styles

Create an `assets/css/custom.scss` file in your repository:

```scss
---
---

@import "{{ site.theme }}";

// Your custom CSS overrides here
body {
  font-family: 'Your Custom Font', sans-serif;
}

.primary-color {
  color: #your-color;
}
```

### Custom Layouts

You can override default layouts by creating files in your `_layouts` directory with the same names as the theme's layouts.

## 📝 Content Management

### Creating Pages

Add markdown files with front matter:

```markdown
---
layout: default
title: "About Qxel"
permalink: /about/
---

Your content here...
```

### Documentation Structure

For documentation sites, organize your content:

```markdown
---
layout: docs
title: "Getting Started"
permalink: /docs/getting-started/
---

# Getting Started with Qxel Platform

Step-by-step guide...
```

## 🚀 Deployment

### GitHub Pages

1. Push your repository to GitHub
2. Ensure your `_config.yml` has:
   ```yaml
   remote_theme: mr-izu/elca
   ```
3. Go to Settings → Pages
4. Select source branch (usually `gh-pages` or `main`)

### Netlify

1. Connect your repository to Netlify
2. Set build command: `bundle exec jekyll build`
3. Set publish directory: `_site`
4. Ensure your `_config.yml` uses `remote_theme: mr-izu/elca`

### Vercel

1. Import your repository to Vercel
2. Use default settings for Jekyll sites
3. Make sure `remote_theme` is configured in your `_config.yml`

## 🤝 Contributing to Elca

We welcome contributions to improve Elca theme! 

### Development Setup for Elca Theme

1. Fork the repository: [https://github.com/mr-izu/elca](https://github.com/mr-izu/elca)
2. Clone your fork
3. Install dependencies: `bundle install`
4. Make your changes
5. Test locally: `bundle exec jekyll serve`
6. Submit a pull request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](https://github.com/mr-izu/elca/blob/main/LICENSE) file for details.

## 🆘 Support

If you encounter any issues or have questions:

1. Check the [Elca Issues](https://github.com/mr-izu/elca/issues) page
2. Create a new issue with detailed information
3. Contact the Qxel Platform team

## 🙏 Acknowledgments

- Jekyll team for the amazing static site generator
- Contributors and testers
- Qxel Platform community

---

**Elca Theme** - Making documentation beautiful and accessible for the Qxel Platform.

**Repository**: [https://github.com/mr-izu/elca](https://github.com/mr-izu/elca)  
**Demo**: [https://mr-izu.github.io/assignments/](https://mr-izu.github.io/assignments/)
