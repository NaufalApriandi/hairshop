import 'package:flutter/material.dart';
import 'package:hairshop/pembayaran/datapembayaran.dart';
import 'package:custom_calender_picker/custom_calender_picker.dart';
import 'package:hairshop/pembayaran/selecttime.dart';

class PembayaranKu extends StatefulWidget {
  final nama;

  const PembayaranKu({super.key, this.nama});

  @override
  State<PembayaranKu> createState() => _PembayaranKuState();
}

class _PembayaranKuState extends State<PembayaranKu> {
  List<DateTime> eachDateTime = [];

  DateTimeRange? rangeDateTime;
  var selectDataPembayaran = 'Pelayanan';
  void _selectedPaket(name) {
    setState(() {
      selectDataPembayaran = name;
    });
  }

  var selectedTime = '15.00';
  void _selectTime(time) {
    setState(() {
      selectedTime = time;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (widget.nama != null) {
      setState(() {
        selectDataPembayaran = widget.nama;
      });
    }
    return Scaffold(
      backgroundColor: Colors.brown.shade400,
      appBar: AppBar(
        title: Text(
          "Order",
          style: TextStyle(color: Colors.amber),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 56, 53, 53),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Container(
              height: 30.0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Paket Pelayanan",
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      )
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
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          SizedBox(
            height: 175.0,
            child: ListView(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 15.0),
                DataPembayaran(
                  imgPath: 'assets/grooming.jpg',
                  name: 'Grooming',
                  tapHandler: _selectedPaket,
                  isSelected: selectDataPembayaran == 'Grooming',
                ),
                const SizedBox(width: 15.0),
                DataPembayaran(
                  imgPath: 'assets/hairspa.jpg',
                  name: 'Grooming & Hairspa',
                  tapHandler: _selectedPaket,
                  isSelected: selectDataPembayaran == 'Grooming & Hairspa',
                ),
                const SizedBox(width: 15.0),
                DataPembayaran(
                  imgPath: 'assets/smooting.jpeg',
                  name: 'Smooting',
                  tapHandler: _selectedPaket,
                  isSelected: selectDataPembayaran == 'Smooting',
                ),
                const SizedBox(width: 15.0),
                DataPembayaran(
                  imgPath: 'assets/treatment.jpeg',
                  name: 'Perm hair treatment',
                  tapHandler: _selectedPaket,
                  isSelected: selectDataPembayaran == 'Perm hair treatment',
                ),
                const SizedBox(width: 15.0),
                DataPembayaran(
                  imgPath: 'assets/basiccolor.jpeg',
                  name: 'Basic hair color',
                  tapHandler: _selectedPaket,
                  isSelected: selectDataPembayaran == 'Basic hair color',
                ),
                const SizedBox(width: 15.0),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.amber.shade400)),
                  onPressed: () async {
                    var result = await showDialog(
                      context: context,
                      builder: (context) => Dialog(
                        insetPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                        ),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        child: CustomCalenderPicker(
                          returnDateType: ReturnDateType.list,
                          initialDateList: eachDateTime,
                          calenderThema: CalenderThema.dark,
                        ),
                      ),
                    );
                    if (result != null) {
                      if (result is List<DateTime>) {
                        setState(() {
                          eachDateTime.clear();
                          eachDateTime.addAll(result);
                        });
                      }
                    }
                  },
                  child: const Text('Pilih Tanggal'),
                ),
                ...List.generate(
                    eachDateTime.length,
                    (index) => Text(
                          eachDateTime[index].toString().substring(0, 10),
                        )),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          const SizedBox(height: 25.0),
          SizedBox(
            height: 150.0,
            child: Wrap(
              spacing: 10,
              alignment: WrapAlignment.end,
              runSpacing: 10,
              children: [
                const SizedBox(width: 25.0),
                SelectTime(
                  time: '10.00',
                  tapHandler: _selectTime,
                  isSelected: selectedTime == '10.00',
                ),
                const SizedBox(width: 25.0),
                SelectTime(
                  time: '10.30',
                  tapHandler: _selectTime,
                  isSelected: selectedTime == '10.30',
                ),
                const SizedBox(width: 25.0),
                SelectTime(
                  time: '11.00',
                  tapHandler: _selectTime,
                  isSelected: selectedTime == '11.00',
                ),
                const SizedBox(width: 25.0),
                SelectTime(
                  time: '11.30',
                  tapHandler: _selectTime,
                  isSelected: selectedTime == '11.30',
                ),
                const SizedBox(width: 25.0),
                SelectTime(
                  time: '13.00',
                  tapHandler: _selectTime,
                  isSelected: selectedTime == '13.00',
                ),
                const SizedBox(width: 25.0),
                SelectTime(
                  time: '13.30',
                  tapHandler: _selectTime,
                  isSelected: selectedTime == '13.30',
                ),
                const SizedBox(width: 25.0),
                SelectTime(
                  time: '14.00',
                  tapHandler: _selectTime,
                  isSelected: selectedTime == '14.00',
                ),
                const SizedBox(width: 25.0),
                SelectTime(
                  time: '14.30',
                  tapHandler: _selectTime,
                  isSelected: selectedTime== '14.30',
                ),
                const SizedBox(width: 25.0),
                SelectTime(
                  time: '15.00',
                  tapHandler: _selectTime,
                  isSelected: selectedTime == '15.00',
                ),
                const SizedBox(width: 25.0),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 60),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                    width: 100,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.amber.shade400)),
                      child: const Text(
                        'Booking',
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                  )))
        ],
      ),
    );
  }
}
