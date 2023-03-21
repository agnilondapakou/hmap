import 'package:flutter/material.dart';
import 'package:hmap/pages/dashboard_page.dart';
import '../widgets/text_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _controllePassword = TextEditingController();
  final _controlleMail = TextEditingController();
  String password = '';
  String email = '';
  String error = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const SizedBox(
                height: 200,
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  "Connexion",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 300,
                child: Column(
                  children: [
                    TextInput(
                      hintText: "Email",
                      isPassword: false,
                      textEditingController: _controlleMail,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextInput(
                      hintText: "Mot de passe",
                      isPassword: true,
                      textEditingController: _controllePassword,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      error,
                      style: const TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontStyle: FontStyle.italic),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (validate()) {
                            error = '';
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DashboardPage(),
                              ),
                            );
                          } else {
                            error = "Tout les champs sont obligatoires";
                          }
                        });
                      },
                      child: const Text("Register"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 0, 151, 178),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 100, vertical: 20),
                      ),
                    ),
                    // Text(
                    //   'Email : $email',
                    //   style: const TextStyle(
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 18.0,
                    //       fontFamily: 'Roboto'),
                    // ),
                    // Text(
                    //   'Password : $password',
                    //   style: const TextStyle(
                    //     fontWeight: FontWeight.bold,
                    //     fontSize: 18.0,
                    //     fontFamily: 'Roboto',
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool validate() {
    email = _controlleMail.text;
    password = _controllePassword.text;
    bool valid = true;

    if (email.isEmpty || password.isEmpty) {
      valid = false;
    }

    return valid;
  }
}
