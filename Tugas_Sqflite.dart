import 'package:flutter/material.dart';
void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter penyimpanan menambah data',
      home: Scaffold(
        appBar: AppBar(
          title: Text('ROMI-6SIA11'),
        ),
        body: Mahasiswa(),
      ),
    );
  }
}

class DataMahasiswa{
  String nim;
  String nama;
  String jurusan;
  String sks;
  
  
  DataMahasiswa({this.nim, this.nama, this.jurusan, this.sks});
  
}

// class Mahasiswa
class Mahasiswa extends StatefulWidget {
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Mahasiswa> {
  //deklarasi variabel
  final txtnim = TextEditingController();
  final txtnamamhs = TextEditingController();
  final txtjurusan = TextEditingController();
  final txtSKS = TextEditingController();
  

  List<Widget> data = [];

  onTambah() {
    setState(() {
      data.add(ListTile(
        leading: Text(txtSKS.text),
        title: Text(txtnamamhs.text),
        subtitle: Text(txtnim.text),
        trailing: Text(txtjurusan.text),
      ));
      txtnim.clear();
      txtnamamhs.clear();
      txtjurusan.clear();
      txtSKS.clear();
    });
  }

  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        new Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
               TextField(
                controller: txtnim,
                decoration: InputDecoration(hintText: 'NIRM Mahasiswa'),
              ),
              TextField(
                controller: txtnamamhs,
                decoration: InputDecoration(hintText: 'Nama Mahasiswa'),
              ),
              TextField(
                controller: txtjurusan,
                decoration: InputDecoration(hintText: 'Jurusan'),
              ),
              TextField(
                controller: txtSKS,
                decoration: InputDecoration(hintText: 'SKS'),
              ),
              Divider(height: 3.0),
              ElevatedButton(child: Text("Simpan"), onPressed: onTambah),
            ],
          ),
        ),
        new Column(
          children: data,
        )
      ],
    );
  }
}
