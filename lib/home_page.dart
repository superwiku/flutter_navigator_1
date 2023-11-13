import 'package:flutter/material.dart';
import 'package:navigator_object/detail_page.dart';
import 'package:navigator_object/siswa.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final inputController1 = TextEditingController();
  final inputController2 = TextEditingController();
  final inputController3 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Center(child: Text("MASUKKAN DATA ANDA"))),
          Flexible(
              flex: 2,
              fit: FlexFit.tight,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextField(
                      controller: inputController1,
                      decoration: InputDecoration(
                        labelText: 'NAMA',),
                    ),
                    TextField(
                      controller: inputController2,
                      decoration: InputDecoration(labelText: 'ALAMAT'),
                    ),
                    TextField(
                      controller: inputController3,
                      decoration: InputDecoration(labelText: 'NISN'),
                    ),
                  ],
                ),
              )),
          Flexible(
              flex: 1,
              child: Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          String namanya = inputController1.text;
                          String alamatnya = inputController2.text;
                          String nisnnya = inputController3.text;
                          Siswa siswanya = Siswa(nama: namanya, alamat: alamatnya, nisn: nisnnya);
                          return DetailPage(orangnya: siswanya);
                        }));
                      },
                      child: Text('INPUT')))),
        ],
      ),
    );
  }
}
