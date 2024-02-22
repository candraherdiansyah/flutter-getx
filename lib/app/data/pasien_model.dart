class Pasien {
  bool? success;
  List<Data>? data;

  Pasien({this.success, this.data});

  Pasien.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? nama;
  String? jenisKelamin;
  String? alamat;
  String? tglLahir;
  String? noTelp;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.nama,
      this.jenisKelamin,
      this.alamat,
      this.tglLahir,
      this.noTelp,
      this.createdAt,
      this.updatedAt});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    jenisKelamin = json['jenis_kelamin'];
    alamat = json['alamat'];
    tglLahir = json['tgl_lahir'];
    noTelp = json['no_telp'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama'] = this.nama;
    data['jenis_kelamin'] = this.jenisKelamin;
    data['alamat'] = this.alamat;
    data['tgl_lahir'] = this.tglLahir;
    data['no_telp'] = this.noTelp;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
