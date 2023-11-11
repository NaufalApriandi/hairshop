import 'package:flutter/material.dart';

class DataPembayaran extends StatefulWidget {
  final String imgPath;
  final String name;
  final void Function(String) tapHandler;
  final bool isSelected;
  const DataPembayaran({
    Key? key,
    required this.imgPath,
    required this.name,
    required this.tapHandler,
    required this.isSelected,
  }) : super(key: key);

  @override
  State<DataPembayaran> createState() => _DataPembayaranState();
}

class _DataPembayaranState extends State<DataPembayaran> {
  Color getSelectedTrainer() {
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
              },
              child: Container(
                height: 150.0,
                width: 150.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.0),
                  color: getSelectedTrainer(),
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