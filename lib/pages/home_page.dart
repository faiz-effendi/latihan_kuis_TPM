import 'package:flutter/material.dart';
import '../custom_widgets/button.dart';
import 'profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.username,
    this.panggilan,
  });

  final String username;
  final String? panggilan;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _namaLengkap = TextEditingController();
  final TextEditingController _nim = TextEditingController();
  final TextEditingController _pengalamanKerja = TextEditingController();
  final TextEditingController _pengalamanOrganisasi = TextEditingController();
  final TextEditingController _hardSkill = TextEditingController();
  final TextEditingController _softSkill = TextEditingController();
  final TextEditingController _pencapaian = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void _savedAndSendData() {
    String namaLengkap = _namaLengkap.text;
    String nim = _nim.text;
    String pengalamanKerja = _pengalamanKerja.text;
    String pengalamanOrganisasi = _pengalamanOrganisasi.text;
    String hardSkill = _hardSkill.text;
    String softSkill = _softSkill.text;
    String pencapaian = _pencapaian.text;

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return ProfilePage(
        nama: namaLengkap, 
        nim: nim, 
        pengalamanKerja: pengalamanKerja, 
        pengalamanOrganisasi: pengalamanOrganisasi, 
        hardSkill: hardSkill, 
        softSkill: softSkill,
        pencapaian: pencapaian,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Selamat datang ${widget.panggilan?.isNotEmpty == true ? widget.panggilan : widget.username}",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: SizedBox(
            height: 540,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    controller: _namaLengkap,
                    decoration: InputDecoration(
                        labelText: "Nama Lengkap",
                        // hintText: "Nama Lengkap Anda",
                        border: OutlineInputBorder()),
                  ),
                  TextFormField(
                    controller: _nim,
                    decoration: InputDecoration(
                        labelText: "NIM",
                        // hintText: "Nama Lengkap Anda",
                        border: OutlineInputBorder()),
                  ),
                  TextFormField(
                    controller: _pengalamanKerja,
                    decoration: InputDecoration(
                        labelText: "Pengalaman Kerja",
                        // hintText: "Nama Lengkap Anda",
                        border: OutlineInputBorder()),
                  ),
                  TextFormField(
                    controller: _pengalamanOrganisasi,
                    decoration: InputDecoration(
                        labelText: "Pengalaman Organisasi",
                        // hintText: "Nama Lengkap Anda",
                        border: OutlineInputBorder()),
                  ),
                  TextFormField(
                    controller: _hardSkill,
                    decoration: InputDecoration(
                        labelText: "Hardskill",
                        // hintText: "Nama Lengkap Anda",
                        border: OutlineInputBorder()),
                  ),
                  TextFormField(
                    controller: _softSkill,
                    decoration: InputDecoration(
                        labelText: "Soft Skill",
                        // hintText: "Nama Lengkap Anda",
                        border: OutlineInputBorder()),
                  ),
                  TextFormField(
                    controller: _pencapaian,
                    decoration: InputDecoration(
                        labelText: "Pencapaian",
                        // hintText: "Nama Lengkap Anda",
                        border: OutlineInputBorder()),
                  ),
                  SendButton(// manggil callback dari custom_widgets
                    text: "Lihat Profil",
                    onPressed: () {
                      if(_formKey.currentState!.validate()) {
                        _savedAndSendData();
                      }
                    }
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
