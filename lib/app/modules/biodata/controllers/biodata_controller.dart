import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:learn_getx/app/modules/biodata/views/output_biodata.dart';

class BiodataController extends GetxController {
  var nama = ''.obs;
  var agama = ''.obs;
  var jenisKelamin = 'Laki-laki'.obs;
  var alamat = ''.obs;
  var umur = ''.obs;
  final List<String> hobiList = [
    'Menari',
    'Membaca',
    'Bernyanyi',
    'Berenang',
    'Sepak Bola'
  ];

  var hobi = <String>[].obs;

  List<String> getHobiList() => hobiList;

  var isFormSubmitted = false.obs;
  var tanggalLahir = ''.obs;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      final formattedDate = DateFormat('yyyy-MM-dd').format(picked);
      tanggalLahir.value = formattedDate; // simpan tanggal yang dipilih
    }
  }

  void toggleHobi(String hobiValue) {
    if (hobi.contains(hobiValue)) {
      hobi.remove(hobiValue);
    } else {
      hobi.add(hobiValue);
    }
  }

  String calculateAge(DateTime birthDate) {
    DateTime currentDate = DateTime.now();
    int age = currentDate.year - birthDate.year;
    int month1 = currentDate.month;
    int month2 = birthDate.month;
    if (month2 > month1) {
      age--;
    } else if (month1 == month2) {
      int day1 = currentDate.day;
      int day2 = birthDate.day;
      if (day2 > day1) {
        age--;
      }
    }
    return age.toString();
  }

  void submitForm() {
    try {
      final DateTime birthDate =
          DateFormat('yyyy-MM-dd').parse(tanggalLahir.value);

      umur.value = calculateAge(birthDate);
      print(
        'Data formulir: $nama, $tanggalLahir, $agama, $jenisKelamin, $alamat, ${hobi.value}, Umur: ${umur.value}',
      );
      isFormSubmitted.value = true;

      // Pindah ke halaman output dengan membawa data
      Get.to(() => OutputBiodata(
            nama: nama.value,
            tanggalLahir: tanggalLahir.value,
            agama: agama.value,
            jenisKelamin: jenisKelamin.value,
            alamat: alamat.value,
            hobi: hobi.toList(),
            umur: umur.value,
          ));
    } catch (e) {
      // Tangani kesalahan format tanggal di sini
      print('Error parsing date: $e');
      // Atau, berikan umpan balik kepada pengguna
      // (misalnya dengan menggunakan snackbar)
      Get.snackbar(
        'Error',
        'Format tanggal tidak valid. Harap masukkan tanggal dengan format yyyy-MM-dd',
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
    }
  }
}
