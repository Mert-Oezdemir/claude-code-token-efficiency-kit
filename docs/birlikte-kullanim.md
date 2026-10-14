# Dört aracı birlikte kullanma

Bu dört araç resmî olarak tek bir birleşik ürün değildir; birbirinden bağımsız çalışır.

| Gereksinim | Araç | Kontrol |
| --- | --- | --- |
| Nerede token harcanıyor? | CodeBurn | Başlangıç ölçümü ve görev bazında rapor |
| Kod tabanı ilişkileri belirsiz | Graphify | Güncel grafik ve kaynağı doğrulama |
| Çok uzun araç çıktıları | Headroom | Sıkıştırılmış yanıt doğruluğu |
| Gereksiz çok kod | Ponytail | Test, güvenlik ve kabul kriterleri |

## Örnek uygulama
1. Önce CodeBurn ile karşılaştırılabilir bir başlangıç ölçümü alın.
2. Yabancı ya da karmaşık kod tabanında Graphify grafiği hazırlayın.
3. Headroom'u yalnızca çıktı gürültüsünün belirgin olduğu işlerde deneyin.
4. Ponytail'i kod düzenleme görevlerinde açın; testleri çalıştırın.
5. Aynı tür görevlerde süre, maliyet, sonuç kalitesi ve başarısızlık oranını karşılaştırın.

Her araç ek kurulum, izin ve bakım maliyeti getirir; hepsini kullanmak zorunlu değildir.

## Genel tasarruf ilkeleri
Büyük dosyaların tamamını defalarca okutmayın; ilgili fonksiyonu veya satır aralığını seçin. `rg` sonuçlarını filtreleyin. Loglarda gereksiz satırları ayıklayın. Mevcut kütüphaneyle çözülebilen işler için yeni bağımlılık eklemeyin. Gizli anahtarları ve kişisel verileri paylaşmayın.
