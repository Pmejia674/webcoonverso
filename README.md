# Landing Page Estática

Sitio web WordPress convertido a estático y desplegado en Google Cloud Storage.

## 🌐 URL en Vivo

**Sitio principal:** https://storage.googleapis.com/web-1-p-public/index.html

## 📁 Contenido

- **index.html** - Landing page principal
- **24_404/** - Página de error 404
- **wp-content/** - Estilos, scripts, imágenes y fuentes
- **wp-includes/** - Librerías JavaScript y CSS de WordPress

## 🚀 Deployment

El sitio está desplegado en Google Cloud Storage bucket: `web-1-p-public`

### Actualizar el sitio:

```bash
# Subir index.html
gsutil cp index.html gs://web-1-p-public/index.html

# Subir CSS modificado
gsutil cp wp-content/themes/appilo/css/sass-landing.css gs://web-1-p-public/wp-content/themes/appilo/css/sass-landing.css
```

## 🔧 Stack Tecnológico

- WordPress (convertido a estático con Simply Static)
- Google Cloud Storage
- Appilo Theme
- Elementor Page Builder
- FontAwesome Icons

## 📝 Notas

- Solo se incluyen archivos esenciales para la landing page
- Páginas adicionales (blog, shop, etc.) están excluidas
- Bucket configurado con acceso público de lectura
