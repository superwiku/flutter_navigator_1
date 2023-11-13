class Siswa {
  String? nama;
  String? alamat;
  String? nisn;

 String? get getNama => this.nama;

 set setNama(String? nama) => this.nama = nama;

  get getAlamat => this.alamat;

 set setAlamat( alamat) => this.alamat = alamat;

  get getNisn => this.nisn;

 set setNisn( nisn) => this.nisn = nisn;
 
  Siswa({this.nama, this.alamat, this.nisn});



}
