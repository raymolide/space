import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: SizedBox(
      height: size.height,
      width: size.width,
      child: Stack(
        children: [
          Positioned(
            right: -size.width * .24,
            top: -size.height * .1,
            child: Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(
                  'assets/glad.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Positioned(
            left: -size.width * .2,
            bottom: size.height * .2,
            child: Align(
              alignment: Alignment.topRight,
              child: SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(
                  'assets/antenna.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Container(
            height: size.height,
            width: size.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                    colors: [
                  Color.fromARGB(220, 159, 177, 190),
                  Color.fromARGB(194, 2, 165, 168),
                  Color.fromARGB(165, 11, 93, 94),
                  Color.fromARGB(255, 36, 89, 124),
                ])),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 30.0, horizontal: 60),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Bem-vindo ao Space!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Faça login para embarcar em uma aventura estelar pelos confins do universo.",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
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
                      ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.teal.shade500)),
                          onPressed: () {},
                          child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.mail),
                                Text('Continuar com Email    ')
                              ])),
                      const SizedBox(height: 10),
                      RichText(
                        text: TextSpan(
                          style: const TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            const TextSpan(
                                text: 'Ao aderir, você concorda com os ',
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white)),
                            TextSpan(
                                text: 'Termos de Serviços.',
                                style: TextStyle(
                                    fontWeight: FontWeight.w900,
                                    color: Colors.teal.shade900)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 50.0, top: 20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, '/login');
                          },
                          child: const Text("Entrar",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
