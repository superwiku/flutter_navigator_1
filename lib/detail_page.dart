import 'package:flutter/material.dart';
import 'package:navigator_object/siswa.dart';

class DetailPage extends StatelessWidget {
  Siswa orangnya;
  DetailPage({super.key, required this.orangnya});
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DETAIL PAGE'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(orangnya.getNama.toString(), style: TextStyle(fontSize: 30),),
          Text(orangnya.getAlamat.toString(), style: TextStyle(fontSize: 30),),
          Text(orangnya.getNisn.toString(), style: TextStyle(fontSize: 30),),
        ]),
      ),
    );
  }
}
