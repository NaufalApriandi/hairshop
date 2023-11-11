import 'package:flutter/material.dart';
import 'package:hairshop/pembayaran/pembayaran.dart';

class PaketPemesanan extends StatefulWidget {
  final String imgPath;
  final String name;
  final void Function(String) tapHandler;
  final bool isSelected;
  final String deskripsi;
  const PaketPemesanan({
    Key? key,
    required this.imgPath,
    required this.name,
    required this.deskripsi,
    required this.tapHandler,
    required this.isSelected,
  }) : super(key: key);

  @override
  State<PaketPemesanan> createState() => _PaketPemesananState();
}

class _PaketPemesananState extends State<PaketPemesanan> {
  Color getSelectedPaket() {
    if (widget.isSelected) {
      return Colors.green.withOpacity(0.3);
    } else {
      return Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 150.0,
              width: 150.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                image: DecorationImage(
                  image: AssetImage(widget.imgPath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                widget.tapHandler(widget.name);
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text(widget.name),
                      content: Container(
                          height: 300,
                          width: 100,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                      height: 200,
                                      width: 200,
                                      child: Image.asset(widget.imgPath,
                                          fit: BoxFit.fill)),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(widget.deskripsi),
                            ],
                          )),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      PembayaranKu(nama: widget.name)),
                            );
                          },
                          child: Text("Order"),
                        ),
                      ],
                    );
                  },
                ); // Show the AlertDialog
              },
              child: Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: getSelectedPaket(),
                ),
              ),
            )
          ],
        ),
        const SizedBox(height: 7.0),
        Text(
          widget.name,
          style: const TextStyle(
            fontFamily: 'FirSans',
            fontSize: 15.0,
          ),
        )
      ],
    );
  }
}
