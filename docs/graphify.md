# Graphify — kod tabanını haritalama

**Resmî proje:** https://github.com/Graphify-Labs/graphify
**Dokümantasyon:** https://docs.graphify.com/
**Lisans:** Apache-2.0; upstream NOTICE'ı kontrol edin.

Graphify, yerel kod tabanından dosya, sınıf, fonksiyon ve ilişkiler grafiği üretir. Grafik güncel tutulmalıdır.

## Kurulum

```bash
uv tool install graphifyy
graphify --help
graphify install
```

Alternatif: `pipx install graphifyy`. Paket adı **graphifyy**, komut adı **graphify**.

Claude Code'da proje kökünde:

```text
/graphify .
```

## Kullanım
Büyük/yabancı kod tabanı için başlangıç haritası yararlıdır; küçük görevlerde gereksiz olabilir. Kaynak değiştiğinde grafiği yenileyin. Grafiğe güvenmeden önce ilgili dosyalarda kontrol yapın.

`graphify install --project` gibi işlemler upstream skill dosyalarını yerel projeye yazabilir; bunları kendi MIT lisansımız altına almayın ve NOTICE gerekliliklerine uyun.
