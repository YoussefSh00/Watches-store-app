import 'package:flutter/material.dart';
import 'package:watches/product.screen.dart';

// ignore: must_be_immutable
class ListPage extends StatelessWidget {
  ListPage({super.key});
  List<String> pics = [
    'images/white.png',
    'images/black.png',
    'images/colors.png'
  ];
  List<Color> myColor = [Colors.black, Colors.white, Colors.white];
  List<String> names = ["Women Watches", "Men Watches", "Unisex Watches"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 30),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.add_alert_sharp)),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 30),
              child: const Icon(Icons.search))
        ],
      ),
      backgroundColor: const Color(0xFF2F2F3A),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 30, top: 25),
                child: const Text(
                  'Welcome User',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: pics.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder:(context) => ProductScreen(name: names[index],), ));
                          },
                          child: Container(
                            width: 368,
                            height: 223,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)),
                            child: Stack(
                              children: [
                                Image.asset(
                                  pics[index],
                                ),
                                Positioned(
                                  left: 15,
                                  bottom: 30,
                                  child: Text(
                                    names[index],
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: myColor[index],
                                        fontFamily: 'R.font.inter'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
