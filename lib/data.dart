import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Data extends StatelessWidget {
  Data(
      {super.key,
      required this.image,
      required this.nameOfwatch,
      required this.price});
  String image;
  String nameOfwatch;
  String price;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 30),
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
            ),
          ),
        ],
        leading: Container(
          margin: const EdgeInsets.only(left: 20),
          child: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 35,
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: const Color(0xFF2F2F3A),
      body: Column(
        children: [
          SizedBox(
              width: 250,
              height: 350,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                filterQuality: FilterQuality.high,
              )),
          ListTile(
            title: Text(
              price,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            subtitle: Container(
              margin: const EdgeInsets.only(top: 7),
              child: const Text(
                'All prices include VAT',
                style: TextStyle(
                    color: Color(0xFF979393),
                    fontSize: 15,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFF444456),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(children: [
                const SizedBox(
                  height: 22,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 200,
                      decoration: BoxDecoration(
                          color: const Color(0xFF8E8E8E),
                          borderRadius: BorderRadius.circular(100)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(
                      nameOfwatch,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.star_border,
                      color: Colors.yellow,
                      size: 30,
                    ),
                    const Icon(
                      Icons.star_border,
                      color: Colors.yellow,
                      size: 30,
                    ),
                    const Icon(
                      Icons.star_border,
                      color: Colors.yellow,
                      size: 30,
                    ),
                    const Icon(
                      Icons.star_border,
                      color: Colors.yellow,
                      size: 30,
                    ),
                    const Icon(
                      Icons.star_border,
                      color: Colors.yellow,
                      size: 30,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
