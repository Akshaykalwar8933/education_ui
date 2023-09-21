import 'package:flutter/material.dart';

import 'Home_page.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: const BoxDecoration(
                      color: Color(0xff674AEF),
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(70))),
                  child: Image.asset(
                    "Assets/books.png",
                    scale: 0.8,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                decoration: const BoxDecoration(
                    color: Color(0xff674AEF),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(70))),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.666,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(70))),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          "Learning is Everything",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              wordSpacing: 2,
                              letterSpacing: 1),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 68),
                        child: Text(
                          "Learning with pleasure with dear programmer, whatever you are",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      const SizedBox(
                        height: 60,
                      ),
                      Material(
                        color: const Color(0xff674AEF),
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 80),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                "Get Start",
                                style:
                                    TextStyle(color: Colors.white, fontSize: 22,letterSpacing: 1,fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )),
            ),
          ],
        ),
      );
  }
}
