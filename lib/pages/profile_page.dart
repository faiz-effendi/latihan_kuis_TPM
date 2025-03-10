import 'package:flutter/material.dart';
import '../custom_widgets/button.dart';
import 'login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
    required this.nama,
    required this.nim,
    required this.pengalamanKerja,
    required this.pengalamanOrganisasi,
    required this.hardSkill,
    required this.softSkill,
    required this.pencapaian,
  });

  final String nama;
  final String nim;
  final String pengalamanKerja;
  final String pengalamanOrganisasi;
  final String hardSkill;
  final String softSkill;
  final String pencapaian;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SizedBox(
          height: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("assets/images/zuck.jpg"), 
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 131, 176, 253),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Nama:", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12)),
                      Text(nama, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16)),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 131, 176, 253),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("NIM:", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12)),
                      Text(nim, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16)),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 131, 176, 253),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pengalaman Kerja:", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12)),
                      Text(pengalamanKerja, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16)),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 131, 176, 253),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pengalaman Organisasi:", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12)),
                      Text(pengalamanOrganisasi, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16)),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 131, 176, 253),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Hard Skill:", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12)),
                      Text(hardSkill, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16)),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 131, 176, 253),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Soft Skill:", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12)),
                      Text(softSkill, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16)),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 131, 176, 253),
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Pencapaian:", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w400, fontSize: 12)),
                      Text(pencapaian, style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16)),
                    ],
                  ),
                ),
              ),

              SendButton(
                text: "Logout",
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context, 
                    MaterialPageRoute(builder: (context) {
                      return LoginPage();
                    }), 
                    (Route<dynamic> route) => false
                  );
                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}