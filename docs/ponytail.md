# Ponytail — gereksiz koddan kaçınma

**Bağımsız resmî depo:** https://github.com/DietrichGebert/ponytail
**Kurulum:** https://github.com/DietrichGebert/ponytail/blob/main/INSTALL.md
**Lisans:** MIT.

Ponytail'in Headroom masaüstünden **bağımsız** açık kaynak kurulumu bulunmaktadır.

## Claude Code kurulumu
Aşağıdaki komutları Claude Code içinde ayrı ayrı çalıştırın:

```text
/plugin marketplace add DietrichGebert/ponytail
/plugin install ponytail@ponytail
```

Yeni Claude Code oturumunda:

```text
/ponytail-help
```

Yoğunluk seçenekleri:

```text
/ponytail lite
/ponytail full
/ponytail off
```

Eklenti hook/çalıştırılabilir dosyalar içerebilir. Kurmadan önce resmî kaynakları inceleyin.

## Yöntem
İstenen davranışı sağlayan en küçük **doğru** değişikliği yapın: var olan fonksiyonları, standart kütüphaneyi ve sade çözümleri tercih edin. Daha az satır uğruna test, hata işleme, güvenlik ve erişilebilirliği feda etmeyin.

Üretici benchmark sonuçları tüm görevler ve modeller için garanti değildir.
