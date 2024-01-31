import 'package:flutter/material.dart';
import 'package:watches/list.page.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'images/first watch.jpg',
                fit: BoxFit.fitHeight,
              ),
              Column(
                children: [
                  Container(
                    color: Colors.transparent,
                    height: 350,
                    width: 100,
                  ),
                  Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    // color: Colors.amber,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.black,
                          Colors.transparent,
                          // Colors.transparent,
                          Colors.black
                        ],
                      ),
                    ),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 100,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: ListTile(
                            title: Text(
                              "Welcome",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: 'R.font.inter'),
                            ),
                            subtitle: Text(
                              'Please login first to discover our stunning collection',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,
                                  fontFamily: 'R.font.inter',
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ListPage(),
                                  ),
                                );
                              },
                              child: Container(
                                width: 138,
                                height: 48,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    border: Border.all(
                                        color: Colors.white, width: 3)),
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                      fontFamily: 'R.font.inter'),
                                ),
                              ),
                            ),
                            InkWell(
                              child: Container(
                                width: 138,
                                height: 48,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6),
                                    color: Colors.white),
                                child: const Text(
                                  'Register',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black,
                                      fontFamily: 'R.font.inter'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 317,
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Row(
                                children: [
                                  Container(
                                      width: 32,
                                      height: 34,
                                      margin: const EdgeInsets.only(
                                          left: 10, right: 10),
                                      child: Image.asset(
                                        'images/face.png',
                                        fit: BoxFit.fill,
                                        filterQuality: FilterQuality.high,
                                      )),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 10, bottom: 12, right: 34,left: 15),
                                    child: const Text(
                                      "Continue with facebook",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'R.font.inter',
                                        color: Color(0xFF008BD9),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 317,
                              height: 48,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    width: 32,
                                    height: 34,
                                    child: Image.asset(
                                      'images/google.png',
                                      fit: BoxFit.fill,
                                      filterQuality: FilterQuality.high,
                                    ),
                                  ),
                                  const Text(
                                    "Login with google",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'R.font.inter',
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
