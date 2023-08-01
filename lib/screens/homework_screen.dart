import 'package:flutter/material.dart';

class HomeWork extends StatelessWidget {
  const HomeWork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181818),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(45),
                    child: Image.asset(
                      'assets/me.jpeg',
                      width: 70,
                      height: 60,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 40,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'MONDAY 16',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const Text(
                        'TODAY',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                        ),
                      ),
                      Transform.scale(
                        scale: 2,
                        child: const Text(
                          '·',
                          style: TextStyle(
                            color: Colors.pink,
                            fontSize: 35,
                          ),
                        ),
                      ),
                      const Text(
                        '17 18 19 20 21 22 23',
                        style: TextStyle(color: Colors.white30, fontSize: 50),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.yellow.shade500,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              '11',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '30',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '|',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '12',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '20',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'DESIGN',
                              style: TextStyle(
                                  fontSize: 70,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -3,
                                  height: 0.8),
                            ),
                            Text(
                              'METTING',
                              style: TextStyle(
                                  fontSize: 70,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -3,
                                  height: 0.8),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(70, 0, 0, 15),
                    child: Row(
                      children: [
                        Text(
                          'ALEX',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          'HELENA',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          'NANA',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.deepPurple.shade300,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              '12',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '35',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '|',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '14',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '10',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'DAILY',
                              style: TextStyle(
                                  fontSize: 70,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -3,
                                  height: 0.8),
                            ),
                            Text(
                              'PROJECT',
                              style: TextStyle(
                                  fontSize: 70,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -3,
                                  height: 0.8),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(70, 0, 0, 15),
                    child: Row(
                      children: [
                        Text(
                          'ME',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          'RICHARD',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          'CIRY',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          '+4',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.lightGreenAccent.shade100,
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              '15',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '00',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '|',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              '16',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              '30',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 30, 0, 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'WEEKLY',
                              style: TextStyle(
                                  fontSize: 70,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -3,
                                  height: 0.8),
                            ),
                            Text(
                              'PLANNING',
                              style: TextStyle(
                                  fontSize: 70,
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: -3,
                                  height: 0.8),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(70, 0, 0, 15),
                    child: Row(
                      children: [
                        Text(
                          'DEN',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          'NANA',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(
                          width: 35,
                        ),
                        Text(
                          'MARK',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
