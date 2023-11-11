import 'package:flutter/material.dart';
import 'package:hairshop/home/paketpemesanan_widget.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  var selectedPaketPemesanan = 'Pelayanan';
  _selectPaketPemesanan(name) {
    setState(() {
      selectedPaketPemesanan = name;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade400,
      appBar: AppBar(
        title: Text(
          "Nocturn Barbershop",
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 56, 53, 53),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Container(
                height: 255.0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Welcome!",
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 5,
                      thickness: 1,
                      indent: 100,
                      endIndent: 100,
                      color: Colors.amber.shade600,
                    ),
                    Text(
                      "\n\Selamat Datang di Nocturn barbershop, Nocturn barbershop merupakan salah satu Barbershop yang mengadopsi pencukuran booking via aplikasi. Dan kami berencana untuk memperluas cabang kami ke seluruh indonesia.",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.normal,
                          height: double.minPositive,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 45),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Pelayanan Kami",
                          style: TextStyle(
                            color: Colors.amber.shade400,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      height: 5,
                      thickness: 1,
                      indent: 80,
                      endIndent: 80,
                      color: Colors.amber.shade600,
                    ),
                  ],
                )),
          ),
          const SizedBox(height: 5.0),
          SizedBox(
            height: 175.0,
            child: ListView(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 15.0),
                PaketPemesanan(
                  imgPath: 'assets/grooming.jpg',
                  name: 'Grooming',
                  deskripsi:
                      'Dimulai dengan merbersihkan muka dengan handuk dingin kemudian potong rambut lalu keramas.',
                  tapHandler: _selectPaketPemesanan,
                  isSelected: selectedPaketPemesanan == 'Grooming',
                ),
                const SizedBox(width: 15.0),
                PaketPemesanan(
                  imgPath: 'assets/hairspa.jpg',
                  name: 'Grooming & Hairspa',
                  deskripsi:
                      'Dimulai dengan keramas rambut, lalu potong rambut.',
                  tapHandler: _selectPaketPemesanan,
                  isSelected: selectedPaketPemesanan == 'Grooming & Hairspa',
                ),
                const SizedBox(width: 15.0),
                PaketPemesanan(
                  imgPath: 'assets/smooting.jpeg',
                  name: 'Smooting',
                  deskripsi:
                      'Pelurusan rambut dengan hasil yang natural.',
                  tapHandler: _selectPaketPemesanan,
                  isSelected: selectedPaketPemesanan == 'Smooting',
                ),
                const SizedBox(width: 15.0),
                PaketPemesanan(
                  imgPath: 'assets/treatment.jpeg',
                  name: 'Perm hair treatment',
                  deskripsi:
                      'Pengeritingan rambut dengan hasil yang natural dan trendy.',
                  tapHandler: _selectPaketPemesanan,
                  isSelected: selectedPaketPemesanan == 'Perm hair treatment',
                ),
                const SizedBox(width: 15.0),
                PaketPemesanan(
                  imgPath: 'assets/basiccolor.jpeg',
                  name: 'Basic hair color',
                  deskripsi:
                      'Warnai rambut tanpa bleaching dengan sempurna sesuai dengan warna idamanmu.',
                  tapHandler: _selectPaketPemesanan,
                  isSelected: selectedPaketPemesanan == 'Basic hair color',
                ),
                const SizedBox(width: 15.0),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            child: Container(
                height: 250.0,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "About Us",
                          style: TextStyle(
                            color: Colors.amber.shade400,
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "\n\nNocturn barbershop adalah perusahaan yang bergerak dibidang jasa dan ingin me-modernkan barbershop dengan adanya fitur booking online pada aplikasi. Nocturn barbershop didirikan pada 11 November 2023.",
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.normal,
                          height: double.minPositive,
                          color: Colors.white),
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
