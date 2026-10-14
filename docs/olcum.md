# Token tasarrufunu ölçme

Kullanım planı kotası, API faturası, toplam token, output token ve kod satır sayısı **aynı metrik değildir**. “%50 tasarruf” gibi üretici iddialarını koşullardan bağımsız sonuç olarak sunmayın.

## A/B yöntemi
1. Ölçülebilir kabul kriterleri olan benzer görevler seçin.
2. Model, kaynak kod sürümü, cache ve komut ortamını sabitleyin.
3. Eklenti kapalı/açık koşulları karşılaştırın.
4. Girdi token'ı, çıktı token'ı, tahmini maliyet, süre ve test sonucunu kaydedin.
5. Başarı, medyan ve başarısızlık sayısını birlikte değerlendirin.

| Görev | Durum | Test geçti? | Input token | Output token | Maliyet | Süre |
| --- | --- | --- | ---: | ---: | ---: | ---: |
| API hatası | Eklenti kapalı | E/H | … | … | … | … |
| API hatası | Eklenti açık | E/H | … | … | … | … |

Bir görev hatalı sonuç üretiyorsa düşük token tüketimi başarı değildir.

Bağımsız Ponytail inceleme örneği:
https://blog.jetbrains.com/ai/2026/07/ponytail-skill-claude-tested/
