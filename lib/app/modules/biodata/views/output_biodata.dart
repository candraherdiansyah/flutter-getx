import 'package:flutter/material.dart';

class OutputBiodata extends StatelessWidget {
  final String nama;
  final String tanggalLahir;
  final String agama;
  final String jenisKelamin;
  final String alamat;
  final String umur;
  final List<String> hobi;

  OutputBiodata({
    required this.nama,
    required this.tanggalLahir,
    required this.agama,
    required this.jenisKelamin,
    required this.alamat,
    required this.hobi,
    required this.umur,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Output Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama: $nama'),
            Text('Tanggal Lahir: $tanggalLahir'),
            Text('Agama: $agama'),
            Text('Jenis Kelamin: $jenisKelamin'),
            Text('Alamat: $alamat'),
            Text('Hobi: ${hobi.join(', ')}'),
            Text('Umur: $umur'),
          ],
        ),
      ),
    );
  }
}
