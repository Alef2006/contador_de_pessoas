import 'dart:ui';

import 'package:flutter/material.dart';

class HomePagState extends StatefulWidget {
  const HomePagState({super.key});

  @override
  State<HomePagState> createState() => HomePagStateState();
}

class HomePagStateState extends State<HomePagState> {
  int count = 0;

  void increment() {
    setState(() {
      if (count < 20) {
        count++;
      }
    });
  }

  void decrement() {
    setState(() {
      if (count >= 1) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    bool countIsLimit = count >= 20;

    return Scaffold(
        body:  Container(
            decoration: const BoxDecoration(image: DecorationImage(
              fit: BoxFit.fill,
              image:AssetImage('assets/images/narutoWalpaper.jpg'))),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  countIsLimit ? "Lotado!" : "Pode entrar!",
                  style: TextStyle(
                      color: countIsLimit ? Colors.red : Colors.white,
                      fontSize: 35),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  count.toString(),
                  style: const TextStyle(fontSize: 50,  color: Color.fromARGB(255, 255, 255, 255)),
                ),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: countIsLimit?null:increment,
                      style: TextButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          backgroundColor:
                            countIsLimit ? const Color.fromARGB(255, 111, 0, 255).withOpacity(0.2):const Color.fromARGB(255, 111, 0, 255),
                          fixedSize: const Size(100, 100)),
                      child: const Text(
                        'Entrou',
                        style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 246, 255, 0)),
                      ),
                    ),
                    TextButton(
                      onPressed:count==0 ? null:decrement,
                      style: TextButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        backgroundColor: count==0 ? const Color.fromARGB(255, 111, 0, 255).withOpacity(0.2):const Color.fromARGB(255, 111, 0, 255),
                        fixedSize: const Size(100, 100),
                      ),
                      child: const Text(
                        'Saiu',
                        style: TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 246, 255, 0)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
  }
}
