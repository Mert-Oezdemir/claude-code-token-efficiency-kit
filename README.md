# Claude Code Token Verimliliği Kiti

**Türkçe · açık kaynak · bağımsız topluluk rehberi · son kaynak kontrolü: 14 Ekim 2026**

Claude Code ile çalışırken gereksiz bağlamı azaltmak, büyük kod tabanlarında daha az dosya açmak, kullanımın nereye gittiğini anlamak ve gereksiz kod üretimini önlemek için dört **ayrı** aracı tanıtan pratik bir başlangıç noktası.

> **Önemli:** Bu depo Headroom, Graphify, CodeBurn veya Ponytail'in yeniden dağıtımı değildir. Uygulamaları **içermez, otomatik indirmez veya kurmaz**. Resmî projelere bağlanan özgün bir Türkçe rehberdir. Hiçbir araç Claude planının gerçek kota sınırını yükseltmeyi garanti etmez.

## Araçlar

| Araç | Ne işe yarar? | Resmî kaynak | Lisans |
| --- | --- | --- | --- |
| **Headroom** | LLM'ye ulaşan büyük araç çıktılarının ve bağlamın sıkıştırılmasına yardımcı olur | [headroomlabs-ai/headroom](https://github.com/headroomlabs-ai/headroom) | Apache-2.0 (açık kaynak CLI) |
| **Graphify** | Yerel kod/doküman ilişkileri grafiği oluşturur, kodda keşfi kolaylaştırır | [Graphify-Labs/graphify](https://github.com/Graphify-Labs/graphify) | Apache-2.0 |
| **CodeBurn** | Yerel ajan oturumlarından token ve tahmini maliyet görünürlüğü sunar | [getagentseal/codeburn](https://github.com/getagentseal/codeburn) | MIT |
| **Ponytail** | Az ama yeterli kod yazma ilkesini ajan çalışma akışına uygular | [DietrichGebert/ponytail](https://github.com/DietrichGebert/ponytail) | MIT |

**Ücretsiz mi?** Bu dört aracın listelenen açık kaynak projeleri ücretsiz kullanılabilir; ancak **Headroom'un `extraheadroom.com` üzerinden sunulan ayrı macOS masaüstü uygulaması yedi günlük deneme sonrasında ücretlidir**. Aşağıdaki komutlar açık kaynak Headroom CLI içindir. Hizmet, plan ve sürüm şartlarını resmî sitelerden kontrol edin.

## Hızlı başlangıç

Önce ilgili aracın [ayrıntılı rehberini](#rehberler) okuyun. Aşağıdaki komutlar **örnektir**; doğrudan çalıştırmadan önce kaynağı, erişim izinlerini ve gereksinimleri denetleyin.

**1. Headroom (isteğe bağlı proxy/bağlam optimizasyonu)**

```bash
# uv ve Python 3.13 gerektirir; resmî CLI kurulum örneği
uv tool install --python 3.13 "headroom-ai[all]"
headroom --version

# Claude Code önceden kurulu olmalı
headroom wrap claude
```

**2. Graphify (özellikle büyük ya da tanımadığınız projelerde)**

```bash
uv tool install graphifyy
graphify install
```

Claude Code'da projenin kökünde `/graphify .` çalıştırın. Paket adı **`graphifyy`** (iki `y`), komut adı `graphify`'dır.

**3. CodeBurn (ölçüm)**

```bash
# Node.js >=22.13.0 gerekli; yerel oturum dosyalarınızı okur
npx codeburn
```

**4. Ponytail (Claude Code içindeki iki ayrı komut)**

```text
/plugin marketplace add DietrichGebert/ponytail
/plugin install ponytail@ponytail
```

Yeni oturum açıp `/ponytail-help` ile kontrol edin. Ponytail'in **bağımsız resmî GitHub deposu** vardır; Headroom masaüstü uygulamasına bağımlı değildir.

## Önerilen iş akışı

1. **Önce ölçün:** CodeBurn üzerinden en çok tüketen proje/görevleri not edin.
2. **Gerekiyorsa haritalayın:** Bilinmeyen veya büyük depoda Graphify ile ilişki grafiğini üretin.
3. **Girdiyi azaltın:** Tekrarlanan log ve büyük araç çıktıları baskınsa Headroom'u deneyin; davranışı test edin.
4. **Çıktıyı sadeleştirin:** Ponytail'i rutin geliştirmede deneyin; doğrulama, güvenlik ve testlerden ödün vermeyin.
5. **Aynı görevleri karşılaştırın:** Kaliteyi, süreyi ve maliyeti birlikte değerlendirin; tüm araçları kullanmak her projede daha iyi sonuç vermez.

## Rehberler

- [Headroom — kurulum, doğrulama, riskler](docs/headroom.md)
- [Graphify — keşif ve grafik güncelleme](docs/graphify.md)
- [CodeBurn — yerel kullanım analizi](docs/codeburn.md)
- [Ponytail — resmî bağımsız kurulum](docs/ponytail.md)
- [Dördünü birlikte kullanmak](docs/birlikte-kullanim.md)
- [Ölçüm ve beklentiler](docs/olcum.md)
- [Kaynaklar ve doğrulama notları](docs/kaynaklar.md)
- [Lisans, atıf, marka ve güvenlik](LEGAL.md)
- [Örnek CLAUDE.md ilkeleri](examples/CLAUDE.md)

## Bu repo neleri **yapmaz**?

- `Headroom + Graphify + CodeBurn + Ponytail` için resmî bir birleşik ürün/entegrasyon vaat etmez.
- Plan kotasını veya faturalandırma sınırını aşmaya çalışmaz.
- Yayıncıya ait kod, logo, benchmark grafiği, ekran görüntüsü, özel skill dosyaları ya da makaleleri kopyalamaz.
- Kullanıcının sistemine otomatik müdahalede bulunmaz.
- “%50 daha az token” veya “2 kat kota” gibi sonuçları evrensel gerçek olarak sunmaz.

## Katkı ve lisans

Bu **rehberin özgün içerikleri** [MIT](LICENSE) koşullarıyla paylaşılır. Üçüncü taraf araçların kendi lisansları bağımsızdır; ayrıntı için [LEGAL.md](LEGAL.md). Hata düzeltmeleri ve resmî kaynağa dayalı PR'lar memnuniyetle karşılanır: [CONTRIBUTING.md](CONTRIBUTING.md).

**Not:** Bu proje Anthropic, Headroom, Graphify, AgentSeal, Ponytail veya ilgili ürün geliştiricileriyle bağlantılı/resmî değildir.