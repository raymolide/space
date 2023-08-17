import 'package:flutter/material.dart';
import 'package:space/common/constants.dart';
import 'package:space/feature_auth/application/usecases/auth_usecase.dart';

import '../../domain/models/user.dart';

class Login extends StatefulWidget {
  final AuthUseCase? authUseCase;
  const Login({super.key, this.authUseCase});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _login(BuildContext context) {
    final String username = _usernameController.text;
    final String password = _passwordController.text;

    final User? user =
        widget.authUseCase?.authenticateUser(username, password) as User?;

    Navigator.pushReplacementNamed(context, '/home');
    if (user != null) {
      if (username == password) {
        const snackBar = SnackBar(
          backgroundColor: Colors.green,
          content: const Text('LoggedIn'),
          duration: const Duration(seconds: 3),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    } else {
      const snackBar = SnackBar(
        backgroundColor: Colors.red,
        content: Text('Credenciais invalidas'),
        duration: Duration(seconds: 1),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 150,
                width: 150,
                child: Image.asset(
                  'assets/astronaut.png',
                  fit: BoxFit.contain,
                ),
              ),
              const Text(
                "Bem-vindo de volta ao Space!",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    const SizedBox(height: 30),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.blue.shade700)),
                        onPressed: () {},
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.facebook),
                            Text('Continuar com Facebook'),
                          ],
                        )),
                    const SizedBox(height: 10),
                    ElevatedButton(
                        onPressed: () {},
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.g_mobiledata_rounded,
                                size: 30,
                              ),
                              Text('Continuar com Google   ')
                            ])),
                    const SizedBox(height: 10),
                    Row(children: <Widget>[
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, right: 15.0),
                            child: const Divider(
                              color: Colors.black,
                              height: 50,
                            )),
                      ),
                      const Text("OR"),
                      Expanded(
                        child: Container(
                            margin:
                                const EdgeInsets.only(left: 15.0, right: 10.0),
                            child: const Divider(
                              color: Colors.black,
                              height: 50,
                            )),
                      ),
                    ]),
                    TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: "Seu Email",
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        suffixIcon: const Icon(Icons.remove_red_eye),
                        labelText: "Sua Senha",
                        fillColor: Colors.white,
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text('Lembre-me?',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                ))
                          ],
                        ),
                        const Text('Esqueceu senha?',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ))
                      ],
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.teal.shade500)),
                        onPressed: () => _login(context),
                        child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [Text('Continuar')])),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 12.0),
                      child: RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            const TextSpan(
                                text: 'Não tem nenhuma conta connosco? ',
                                style: TextStyle(color: Colors.black)),
                            TextSpan(
                                text: 'Cadastre-se',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.teal.shade900)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
