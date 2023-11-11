import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hairshop/pesan/pesanku.dart';
import 'package:hairshop/home/myhome.dart';
import 'package:hairshop/pembayaran/pembayaran.dart';
import 'package:hairshop/profil/profilku.dart';

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  List<Widget> wg = [MyHome(), PesanKu(), PembayaranKu(), ProfilKu()];
  int currentidx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: wg[currentidx],
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Home',
                onPressed: () {
                  setState(() {
                    currentidx = 0;
                  });
                },
              ),
              GButton(
                icon: Icons.message,
                text: 'Pesan',
                onPressed: () {
                  setState(() {
                    currentidx = 1;
                  });
                },
              ),
              GButton(
                icon: Icons.monetization_on,
                text: 'Pemesanan',
                onPressed: () {
                  setState(() {
                    currentidx = 2;
                  });
                },
              ),
              GButton(
                icon: Icons.person,
                text: 'Profil',
                onPressed: () {
                  setState(() {
                    currentidx = 3;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
