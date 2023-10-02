import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: CustomHeader(),
        ),
        body: SingleChildScrollView(
          // <-- Añadir SingleChildScrollView
          child: Column(
            children: [
              BannerSection(),
              TextSection(),
              ProjectsSection(),
              tarjetaproyectoildefonso(),
              tarjetaproyectosantaagustina(),
              tarjetaproyectodepthouselombarda(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SocialMediaBar(),
        LogoAndMenuRow(),
      ],
    );
  }
}

class SocialMediaBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.facebook), // Añade íconos reales y acciones
        SizedBox(width: 10), // Espacio entre íconos
        Icon(FontAwesomeIcons.instagram), // Añade íconos reales y acciones
      ],
    );
  }
}

class LogoAndMenuRow extends StatefulWidget {
  @override
  LogoAndMenuRowState createState() => LogoAndMenuRowState();
}

class LogoAndMenuRowState extends State<LogoAndMenuRow> {
  bool _isMenuOpen = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/logo-delreal.png', height: 50.0),
            IconButton(
              icon: Icon(_isMenuOpen ? Icons.close : Icons.menu),
              onPressed: () {
                setState(() {
                  _isMenuOpen = !_isMenuOpen;
                });
              },
            ),
          ],
        ),
        // Mostrar el menú solo si _isMenuOpen es true
        if (_isMenuOpen)
          Positioned.fill(
            child: Container(
              color: Colors.white, // fondo blanco
              child: Container(
                color: Colors.white, // Asegurando que el fondo es blanco
                child: Column(
                  children: [
                    ListTile(
                      title: const Text('Home'),
                      onTap: () {},
                    ),
                    ListTile(
                      title: const Text('Barrio'),
                      onTap: () {},
                    ),
                    ExpansionTile(
                      backgroundColor:
                          Colors.white, // Asegurando que el fondo es blanco
                      title: const Text('Nuestros Proyectos'),
                      children: <Widget>[
                        ListTile(
                          title: const Text('Condominio Ildefonso'),
                          onTap: () {},
                        ),
                        ListTile(
                          title: const Text('Santa Agustina'),
                          onTap: () {},
                        ),
                        ListTile(
                          title: const Text('Depthouse Lombarda'),
                          onTap: () {},
                        ),
                      ],
                    ),
                    ListTile(
                      title: const Text('Nosotros'),
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}

class BannerSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imgList.length,
      options: CarouselOptions(
        autoPlay: true,
        viewportFraction:
            1.0, // Asegura que las imágenes se expandan al 100% del ancho
        enlargeCenterPage: false, // Desactiva el efecto de agrandamiento
      ),
      itemBuilder: (context, index, _) {
        return Container(
          width: MediaQuery.of(context)
              .size
              .width, // Establece el ancho al 100% del ancho de pantalla
          child: Image.asset(
            imgList[index],
            fit: BoxFit
                .cover, // Asegura que la imagen cubra todo el espacio del contenedor
          ),
        );
      },
    );
  }
}

final List<String> imgList = [
  'assets/banner1.png',
  'assets/banner2.png',
  'assets/banner3.png',
];

class TextSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.only(
        left: 24.0, // 1.5rem, suponiendo que 1rem = 16.0 píxeles en Flutter
        right: 24.0, // 1.5rem
      ),
      child: const Text(
        'Somos una empresa regional con más de 20 años de experiencia en el rubro, buscamos desarrollar un producto inmobiliario de primer nivel para quienes disfrutan de vivir con estilo, en excelentes ubicaciones y espacios pensados en elevar los estándares de confort.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 13,
          color: Color(0xFFE8E8E8),
          height: 1.5,
        ),
      ),
    );
  }
}

class ProjectsSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: const Center(
            child: Text(
          'Nuestros Proyectos',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            height: 2,
          ),
        )));
  }
}

class tarjetaproyectoildefonso extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) => Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 5)],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              child: Image.asset(
                'assets/ildefonso.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: const Color(0xFF999999),
              padding: const EdgeInsets.all(5),
              child: const Center(
                child: Text(
                  '100% VENDIDO',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const Divider(
              color: Color(0xFF333333),
              thickness: 1,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'CONDOMINIO ILDEFONSO',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    'Chillan',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    color: const Color(0xFFC9C9C9),
                    padding: const EdgeInsets.all(10),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'DESDE',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              'UF',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'DORMS.',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              '3 a 6',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'M. TOTALES',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              '140 a 223m2',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color(0xFF333333),
                    thickness: 1,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(width: 5),
                        Text(
                          'Camino interior Jardín del Este 2780, Chillán.',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color(0xFF333333),
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        color: const Color(0xFF333333),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.phone, color: Colors.white),
                            Icon(FontAwesomeIcons.instagram,
                                color: Colors.white),
                            Icon(FontAwesomeIcons.facebookF,
                                color: Colors.white),
                            Icon(Icons.email, color: Colors.white),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Acción del botón
                          },
                          child: const Text('Ver Proyecto'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1A1A1A),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class tarjetaproyectosantaagustina extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) => Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 5)],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              child: Image.asset(
                'assets/santaaguistina.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: const Color(0xFF999999),
              padding: const EdgeInsets.all(5),
              child: const Center(
                child: Text(
                  'PROYECTO EN VENTA',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const Divider(
              color: Color(0xFF333333),
              thickness: 1,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'SANTA AGUSTINA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    'Chillan',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    color: const Color(0xFFC9C9C9),
                    padding: const EdgeInsets.all(10),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'DESDE',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              'UF 6643',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'DORMS.',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              '3',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'M. TOTALES',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              '109m2',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color(0xFF333333),
                    thickness: 1,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(width: 5),
                        Text(
                          'Jardín del Este 2548, Chillán.',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color(0xFF333333),
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        color: const Color(0xFF333333),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.phone, color: Colors.white),
                            Icon(FontAwesomeIcons.instagram,
                                color: Colors.white),
                            Icon(FontAwesomeIcons.facebookF,
                                color: Colors.white),
                            Icon(Icons.email, color: Colors.white),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Acción del botón
                          },
                          child: const Text('Ver Proyecto'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1A1A1A),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class tarjetaproyectodepthouselombarda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (BuildContext context) => Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [BoxShadow(color: Colors.grey, blurRadius: 5)],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              child: Image.asset(
                'assets/lombarda.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              color: const Color(0xFF999999),
              padding: const EdgeInsets.all(5),
              child: const Center(
                child: Text(
                  '100% VENDIDO',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const Divider(
              color: Color(0xFF333333),
              thickness: 1,
            ),
            Container(
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'DEPTHOUSE LOMBARDA',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF333333),
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    'Chillan',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 20,
                    ),
                  ),
                  Container(
                    color: const Color(0xFFC9C9C9),
                    padding: const EdgeInsets.all(10),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'DESDE',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              'UF',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'DORMS.',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              '2 y 3',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'M. TOTALES',
                              style: TextStyle(fontSize: 13),
                            ),
                            Text(
                              '115 a 132m2',
                              style: TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color(0xFF333333),
                    thickness: 1,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(width: 5),
                        Text(
                          'Jardín del Este 2548, Chillán.',
                          style: TextStyle(
                            color: Color(0xFF333333),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    color: Color(0xFF333333),
                    thickness: 1,
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 0.5,
                        color: const Color(0xFF333333),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.phone, color: Colors.white),
                            Icon(FontAwesomeIcons.instagram,
                                color: Colors.white),
                            Icon(FontAwesomeIcons.facebookF,
                                color: Colors.white),
                            Icon(Icons.email, color: Colors.white),
                          ],
                        ),
                      ),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Acción del botón
                          },
                          child: const Text('Ver Proyecto'),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1A1A1A),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
