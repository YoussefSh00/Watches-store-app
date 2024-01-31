import 'package:flutter/material.dart';
import 'package:watches/data.dart';

// ignore: must_be_immutable
class ProductScreen extends StatelessWidget {
  ProductScreen({super.key, required this.name});
  String name;
  List<String> watches = [
    'images/01 1.png',
    'images/3 1.png',
    'images/2 1.png',
    'images/8 1.png',
    'images/5 1.png',
    'images/7 1.png',
  ];
  List<String> namesOfWatces = [
    'Tissot watch',
    'CK watch',
    'Daniel watch',
    'Daniel watch',
    'Fossil watch',
    'Seiko watch'
  ];
  List<String> price = ['\$150', '\$150', '\$150', '\$150', '\$900', '\$150'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 30, top: 25),
                  child: Text(
                    name,
                    style: const TextStyle(
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
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemCount: watches.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Data(
                              image: watches[index],
                              price: price[index],
                              nameOfwatch: namesOfWatces[index]),
                        )),
                    child: Container(
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14)),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Positioned(
                            top: -5,
                            child: Image.asset(
                              watches[index],
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            child: Text(
                              namesOfWatces[index],
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF090909)),
                            ),
                          ),
                          Positioned(
                            bottom: 2,
                            right: 20,
                            child: Row(
                              children: [
                                Text(
                                  price[index],
                                  style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xFFF47500)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
