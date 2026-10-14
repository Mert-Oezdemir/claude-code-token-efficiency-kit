# CodeBurn — token ve maliyet görünürlüğü

**Resmî proje:** https://github.com/getagentseal/codeburn
**Lisans:** MIT.

CodeBurn, desteklenen ajanların diskte saklanan yerel oturum verilerini okuyarak kullanım ve tahmini maliyet bilgisi sunar.

## Kurulum
Node.js 22.13.0 veya üzeri:

```bash
node --version
npx codeburn
```

Web arayüzü için:

```bash
npx codeburn web
```

## İzlenecek ölçütler
Proje, görev ve model başına kullanım; giriş ve çıkış token'ları; yaklaşık maliyet; tekrar deneme. Başlangıç ölçümünden sonra eşdeğer görevlerde karşılaştırma yapın.

## Sınırlamalar
Yerel oturum kaydı bulunmadığında veri eksik olabilir. Gösterilen maliyet tahmindir, resmî sağlayıcı faturası veya abonelik limitiyle birebir aynı değildir. Log ve ekran görüntülerini yayımlarken gizli bilgileri kaldırın. `npx` paket kodu çalıştırır; güvenlik incelemesi yapın.
