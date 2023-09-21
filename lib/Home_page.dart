import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding:
                const EdgeInsets.only(left: 15, top: 15, right: 15, bottom: 10),
            decoration: const BoxDecoration(
                color: Color(0xff674AEF),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      color: Colors.white,
                      size: 30,
                    ),
                    Icon(
                      Icons.notifications_rounded,
                      size: 30,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 15, bottom: 3),
                  child: Text(
                    "Hi, Programer",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1),
                  ),
                ),
                Container(
                  
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
