# Headroom — bağlam ve araç çıktısı optimizasyonu

**Resmî proje:** https://github.com/headroomlabs-ai/headroom
**Resmî hızlı başlangıç:** https://github.com/headroomlabs-ai/headroom/blob/main/wiki/quickstart.md
**Lisans:** Apache-2.0 (kaynak kodu buraya kopyalanmadı).

Headroom, uzun araç çıktıları, yapılandırılmış veriler ve bazı bağlam girdilerinde sıkıştırma/geri çağırma mekanizmaları sunar.

## Kurulum
Ön koşullar: `uv`, Claude Code ve uyumlu Python sürümü.

```bash
uv tool install --python 3.13 "headroom-ai[all]"
headroom --version
headroom wrap claude
```

Alternatif proxy yöntemi:

```bash
headroom proxy --port 8787
# Ayrı terminalde
ANTHROPIC_BASE_URL=http://localhost:8787 claude
```

İki yaklaşım alternatiftir; birlikte otomatikleştirmeyin.

## Ne zaman?
Uzun JSON/log veya tekrarlanan çıktı olan görevlerde deneyin. Hata ayıklama için kritik bilgi sıkışabilir; önce küçük görevlerde kaliteyi karşılaştırın.

## Lisans / ürün ayrımı
Headroom açık kaynak CLI Apache-2.0 altındadır; `extraheadroom.com` üzerindeki macOS masaüstü uygulaması ayrı, deneme sonrası ücretli bir üründür: https://extraheadroom.com/ .

Proxy ve yerel logların hassas bilgi işlemesini kontrol edin. Kullanım tasarrufu ve plan kotasının artışı garanti değildir.
