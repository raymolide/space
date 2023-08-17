import 'package:flutter/material.dart';
import 'package:space/common/constants.dart';

import '../../application/use_cases/tale_usecase.dart';
import '../../domain/models/tale.dart';

class HomePage extends StatefulWidget {
  final TaleUseCase? taleUseCase;

  const HomePage({super.key, this.taleUseCase});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<Tale> tales;

  @override
  void initState() {
    //tales = await widget.taleUseCase?.getAll().then((value) => value ) as List<Tale>;
    Tale tale = Tale(
        id: '1',
        title: 'Boruto: Two Blue Vortex',
        imagePath: '/assets/astronaut.png',
        reads: 24,
        likes: 10,
        author: 'Mikio Ikemoto',
        content: 'full');
    tales = [];
    for (var i = 0; i < 10; i++) {
      tales.add(tale);
    }
    super.initState();
  }

  TextStyle titleStyle = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  TextStyle subtitleStyle = TextStyle(fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGreen,
      body: SafeArea(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: tales.length,
            itemBuilder: (context, index) {
              Tale tale = tales[index];
              return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                  child: Card(
                    shadowColor: darkGreen,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Center(
                            child: SizedBox(
                              height: 100,
                              width: 100,
                              child: Image.asset(
                                'assets/astronaut.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  tale.title,
                                  style: titleStyle,
                                ),
                                Text("By ${tale.author}", style: subtitleStyle),
                                RichText(
                                    text: TextSpan(
                                        text: "${tale.likes} ",
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        children: const <TextSpan>[
                                      TextSpan(
                                        text: 'Likes',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 18),
                                      )
                                    ])),
                                RichText(
                                    text: TextSpan(
                                        text: "${tale.reads} ",
                                        style: const TextStyle(
                                            color: Colors.black, fontSize: 18),
                                        children: const <TextSpan>[
                                      TextSpan(
                                        text: 'Reads',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 18),
                                      )
                                    ])),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ));
            }),
      ),
    );
  }
}
