import 'package:flutter/material.dart';

void main() {
  runApp(SnakeApp());
}

class SnakeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Snake Encyclopedia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SnakeListScreen(),
    );
  }
}

class SnakeListScreen extends StatefulWidget {
  @override
  _SnakeListScreenState createState() => _SnakeListScreenState();
}

class _SnakeListScreenState extends State<SnakeListScreen> {
  List<Snake> snakes = [
    Snake(
      name: '1. Şeritli Engerek',
      image: 'assets/seritli_engerek.jpg',
      description:
      'Engerekgiller ailesinden olan bu yılan türünün sırt bölgesi genellikle kül rengindedir. Ancak grimsi kahverengi olanları da bulunur. Bu yılan türü, sırtından başlayıp kuyruğuna kadar uzanan siyah ya da koyu kahverengi benekleri sayesinde fark edilebilir. Bu benekler bazen birleşip baklava desenli, dalgalı ya da zikzaklı bir şerit oluşturur. Boyları ortalama 70-80 cm kadardır.\n\nYaşam alanları: Şeritli engerekler, genellikle ormansız ve taşlık alanlarda yaşarlar. Yüksekliği 2 bin metreye kadar olan yerlerde bulunabilirler. Genellikle kemirgenlerle ve kuşlarla beslenen şeritli engereklerin yavru olanları bile yetişkin bir insanı etkileyecek kadar zehir taşır. Genellikle tehlikede olmadıklarında insanlara saldırmazlar. Ancak yine de dikkatli olunması gerekir.',
    ),
    Snake(
      name: '2. Koca Engerek',
      image: 'assets/koca_engerek2.jpg',
      description:
      'Koca engereklerin sırt bölgesi genellikle grimsi kahverengi tonlarında olur. Genel olarak fare gibi küçük kemiriciler, kertenkeleler, kuşlar, yılanlar ve çeşitli omurgasız hayvanlarla beslenirler ve yemeden önce avlarını zehirleyerek öldürürler.\n\nYaşam alanları: Bu tür Türkiye’de Doğu ve Güneydoğu Anadolu’da, Doğu Akdeniz bölgesinde yayılım gösterir. Ovalarda, bahçelerde, tarlalarda yaşarlar. Koca engerek, Türkiye’nin zehri en ölümcül yılanlarından biridir.',
    ),
    Snake(
      name: '3. Kedi Gözlü Yılan',
      image: 'assets/kedigozlu_yılan.jpg',
      description:
      'Kedi gözlü yılanların diğer yılan türlerinden ayırt edici özellikleri, gözlerinin şekli ve zehirli dişleridir. 80 santimetreye kadar ulaşan boylarıyla kedi gözlü yılanlar, genellikle toprak altındaki kovuklara ve çatlaklara sığınırlar.\n\nYaşam alanları: Alçak ve kurak alanlarda yaşarlar. Tarla kenarları, taşlık bölgeler ve dere kenarları gibi yerleri tercih ederler. Toprak altındaki kovuklara ve çatlaklara sığınırlar.',
    ),
    // Diğer yılanların bilgilerini buraya ekleyin.
    // ...
    Snake(
      name: '4.Boynuzlu Engerek',
      image: 'assets/snake.jpg',
      description:
      'Boynuzlu engerek, engerekgiller familyasından bir yılan türü olmakla birlikte sırt bölgesinin rengi genel olarak gri, sarı ve kahverengidir. Boynuzlu engereklerin baş kısımlarında boynuza benzer küçük bir çıkıntı bulunur. Eylül-Ekim’den Mart-Nisan’a kadar kış uykusuna yatarlar. Boyları genel olarak 50-60 cm (erkekler en fazla 90 cm) kadar olur. Üst çenelerinin ön tarafında ise zehir dişleri bulunur. Zehirli olan bu yılan türü Türkiye’de genellikle kumlu yerlerde yaşar. Çalılık ve taşlık bölgelerde de görülebilirler.\n\nYaşam alanları: Türkiye’de kumlu yerlerden daha çok küçük boylu bitkilerin altlarında, orman açıklıklarında, çalılık ve taşlık yerlerde yaşarlar. Yüksekliği 2000 metreye kadar olan yerlerde bulunabilirler. Genellikle; Trakya, Batı, Kuzeydoğu, Doğu ve Güneydoğu Anadolu Bölgesi’nde habitatın uygun olduğu alanlarda dağılım gösterirler.',
    ),
    Snake(
      name: '5. Çukurbaşlı Yılan',
      image: 'assets/cukurbasli.jpg',
      description:
      'Boyu 2 metreye kadar ulaşabilen bu yılan türü, pullu sürüngenler (Squamata) familyasında yer alıyor. Doğu Karadeniz dışında Türkiye’nin hemen hemen her bölgesinde rastlanabilen bu yılan türü, bitkisi az olan taşlık yerlerde yaşar. Zehirli yılan türleri arasında yer alan çukurbaşlı yılanların vücudunu kaplayan pullar hafif çıkıntılı yapıdadır.',
    ),
    Snake(
      name: '6. Çöl Kobrası',
      image: 'assets/col_kobrasi.jpg',
      description:
      'Çöl kobrası Türkiye’de yaşayan tek kobra türüdür. Genellikle Doğu illerinde özellikle Şanlıurfa’da görülür. Bu bölgedeki kurak alanlarda yaşayan çöl kobrasının vücut boyu 120 santimetreye kadar uzayabilir. Gözleri diğer yılan türlerine göre iridir. Vücüdu tek renkli parlak siyah ya da siyahımsı koyu bir kahverengidir. En zehirli türlerden biri olan çöl kobrası genellikle karayılan ile karıştırılabilir.\n\nYaşam alanları: Çöl kobrası, Şanlıurfa il merkezinin batısındaki dağlık kısımda, kayalık yamaçlarda yaşayabilir.',
    ),
    Snake(
      name: '7. Çoruh Engereği',
      image: 'assets/coruh_engeregi.jpg',
      description: 'Çoruh engereği sadece Artvin’de, Çoruh nehrinin yakınlarında yaşar. Türkiye’de nesli tükenmekte olan bu türden yalnızca 50 çift kaldığı düşünülüyor. Zehirli yılanlardan olan çoruh engereğinin vücudundaki pullar bariz çıkıntılı yapıdadır. Göz şekli ise dikeydir. Uzunlukları ise ortalama 40-50 cm civarındadır.',
    ),
    Snake(
      name: '8. Kafkas Engereği (Hopa engereği)',
      image: 'assets/kafkas.jpg',
      description:
      'Kafkas engereğinin sırtı genellikle siyah, gri, sarı ve kırmızı renklidir. Genel olarak küçük kemiriciler, kertenkeleler ve çeşitli omurgasızlarla beslenirler. Boyları ise 50-60 santimetreye kadar uzayabilir. Ancak daha büyük olanlarına da rastlanır.\n\nYaşam alanları: Yağmur ormanılarının taşlık bölgelerinde yaşarlar. Türkiye’de ise sadece Hopa Artvin civarında yaşarlar. Bölgede yaşayanlar tarafından Hopa engereği olarak adlandırılan bu türün de ne yazık ki nesli tükenmek üzere.',
    ),
    Snake(
      name: '9. Baran Engereği',
      image: 'assets/baran_engeregi.jpg',
      description:
      'Türkiye’deki nadir görülen türlerden biri olan baran engereğinin kuyruk ucu sarıdır. Boyları genellikle 55 santimetreye kadar ulaşan bu tür, kısa boylu bitkilerin altında, taşlık yerlerde yaşar. Tür, ismini Türkiye’nin önde gelen herpetologlarından Prof. Dr. İbrahim Baran’dan alır.\n\nYaşam alanları: Sakarya’da, Torosların Silifke civarındaki yerlerde habitatın uygun olduğu alanlarda dağılım gösterirler, zehirli bir türdür.',
    ),
    Snake(
      name: '10. Küçük engerek',
      image: 'assets/kucuk_eng.jpg',
      description:
      'Türkiye’de genellikle Kuzeydoğu Anadolu Bölgesi’nde Kars ve Ardahan ile Güneybatı Anadolu Bölgesi’nde görülen bu türün boyu 50 santimetreye kadar uzar. Gözbebeği dikeydir. Türkiye’deki en küçük engerek türüdür. Genellikle böcekler ve kertenkelelerle beslenen bu yılan türü, avını önce zehirler sonra yutar.',
    ),
    Snake(
      name: '11. Ağrı engereği',
      image: 'assets/agri_engeregi.jpg',
      description:
      'Türkiye’nin en zehirli engerek türlerinden biri olan Ağrı engereği, sırtında baş bölgesinden kuyruğa kadar uzanan sarı ya da kiremit rengindeki lekelerle kolayca fark edilebilir. Başının üzerinde de küçük siyah benekler bulunur. Genel olarak küçük kemiriciler, diğer yılanlar, kertenkeleler ve kuşlarla beslenirler.\n\nYaşam alanları: Genellikle gece avlanan Ağrı engereği, Doğu Anadolu’da Kars, Ağrı, Iğdır, Hakkari ve Van civarında taşlık alanlarda yaşar.',
    ),
    Snake(
      name: '12. Wagner Engereği',
      image: 'assets/wagner.jpg',
      description:
      'Nesli tükenmekte olan zehirli yılan türleri arasında yer alan Wagner engereği; dağlarda, ormansız ve taşlık olan, az bitkili yerlerde yaşar. Yüksekliği bin 200 ile 2 bin metre arasında olan yerlerde bulunabilir. Bu tür Türkiye’de genelde Kars’ta habitatın uygun olduğu alanlarda dağılım gösterir.',
    ),
    Snake(
      name: '13. Bolkar Engereği',
      image: 'assets/bolkar.jpg',
      description:
      'Türkiye’nin güneyindeki dağlara özgü zehirli bir engerek türü olan Bolkar engereğinin başı üçgen şeklinde ve nispeten büyük, boynu incedir. Doğada çok sık rastlanan bir tür olmamakla birlikte son derece zehirlidir.',
    ),
    Snake(
      name: '14. Beyazbantlı Dağ Engereği',
      image: 'assets/beyazbantlı.jpg',
      description:
      'Toplam vücut uzunluğu 60 ile 130 cm arasında değişen bu tür, endemik bir türdür ve Sivas (Kulmaç Dağları) ie Kahramanmaraş civarında yaşayabilir. Başın üstünde koyu renkte iki oblik bant deseni bulunur. Doğada nadir rastlanan türlerden biridir.',
    ),
    Snake(
      name: '15. Darevski Engereği',
      image: 'assets/da.jpg',
      description:
      'Vücut uzunluğu 25 ile 42 cm arasında değişen bu tür, genellikle taşlık ve kayalık alanlarda yaşar. Sırt deseni, sarımsı gri zemin rengi üzerinde kahverengi zikzak şerit deseni şeklindedir. Tür Türkiye’de yalnızca Kars ve Artvin’de görülmüştür.',
    ),


  ];

  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Türkiye'deki Zehirli Yılanlar"),
      ),
      body: PageView.builder(
        itemCount: snakes.length,
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        itemBuilder: (context, index) {
          return SnakeCard(snake: snakes[index]);
        },
      ),
    );
  }
}

class Snake {
  final String name;
  final String image;
  final String description;

  Snake({required this.name, required this.image, required this.description});
}

class SnakeCard extends StatelessWidget {
  final Snake snake;

  SnakeCard({required this.snake});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              snake.image,
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            title: Text(
              snake.name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: SingleChildScrollView(
              child: Text(
                snake.description,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}





