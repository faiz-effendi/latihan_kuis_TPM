import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _username = TextEditingController();
  final _panggilan = TextEditingController();
  final _password = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: Text(
          "Login",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.blue,
      ),

      body: Form(
        key: _formKey,
        child: Center(
          child: SizedBox(
            height: 320,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    controller: _username,
                    decoration: InputDecoration(
                      labelText: "Username",
                      hintText: "Masukan username",
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Username tidak boleh kosong";
                      }
                      return null;
                    },
                  ),
            
                  TextFormField(
                    controller: _panggilan,
                    decoration: InputDecoration(
                      labelText: "Panggilan",
                      hintText: "Masukan panggilan",
                      border: OutlineInputBorder(),
                    ),
                  ),
            
                  TextFormField(
                    controller: _password,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      labelText: "Password",
                      hintText: "Masukan password",
                      border: OutlineInputBorder(),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        icon: Icon(
                          _obscureText ? Icons.visibility_off : Icons.visibility,
                        ),
                      ),
                    ),
                    validator: (value) {
                      if(value==null || value.isEmpty) {
                        return "Password tidak boleh kosong!";
                      } else {
                        return null;
                      }
                    },
                  ),
            
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if(_formKey.currentState!.validate()) {
                          if(_username.text.trim() == "faiz" && _password.text.trim() == "321") {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Login succesfully!")));

                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return HomePage(
                                username: _username.text, 
                                password: _password.text,
                                panggilan: _panggilan.text
                              );
                            }));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Username atau password salah!")));
                          }
                        }
                      }, 
                      child: Text("Login")
                    )
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
