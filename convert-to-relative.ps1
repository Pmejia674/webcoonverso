# Script para cambiar rutas de GCP a rutas relativas
$bucketUrl = "https://storage.googleapis.com/web-1-p-public"

Write-Host "Cambiando rutas de GCP a relativas..." -ForegroundColor Yellow

# Procesar index.html
$content = Get-Content "index.html" -Raw -Encoding UTF8
$content = $content.Replace("$bucketUrl/", "/")
$content | Out-File -FilePath "index.html" -Encoding UTF8 -NoNewline

Write-Host "✓ index.html actualizado" -ForegroundColor Green

# Procesar 24_404/index.html
$content = Get-Content "24_404\index.html" -Raw -Encoding UTF8
$content = $content.Replace("$bucketUrl/", "/")
$content | Out-File -FilePath "24_404\index.html" -Encoding UTF8 -NoNewline

Write-Host "✓ 24_404/index.html actualizado" -ForegroundColor Green

Write-Host "`nListo! Ahora las rutas son relativas y funcionarán en Vercel." -ForegroundColor Cyan
