import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home_screen.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({Key? key}) : super(key: key);

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24),
          child: ListView(
            children: [
              const SizedBox(height: 41),
              Center(
                child: Image.asset(
                  "assets/svg/logo.png",
                  width: 159,
                  height: 159,
                ),
              ),
              const SizedBox(height: 12),
              Center(
                child: Text(
                  'SEARCH, BOOK, PARKT',
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.800000011920929),
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 44),
              const Text(
                'Сколько Дней в неделю вы \nпользуетесь личным \nтранспортом?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF856DDC),
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 75,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF4F4F4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '1-3',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  Expanded(
                    child: Container(
                      height: 75,
                      decoration: ShapeDecoration(
                        color: Color(0xFFF4F4F4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: const Text(
                        '4-7',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.40,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Container(
                width: 380,
                height: 75,
                decoration: ShapeDecoration(
                  color: const Color(0xBF856DDC),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                alignment: Alignment.center,
                child: const Text(
                  'Не пользуюсь',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'Какие места для парковки \nВас интересуют больше \nвсего? ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF856DDC),
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 24),
              items("Легковое авто"),
              const SizedBox(height: 16),
              items("Мотоцикл"),
              const SizedBox(height: 16),
              items("Велосипед"),
              const SizedBox(height: 16),
              items("Кладовка"),
              const SizedBox(height: 40),
              const Text(
                'Где будем искать для Вас\nпарко-место?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF856DDC),
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 16),
              items("Мотоцикл"),
              const SizedBox(height: 16),
              items("Велосипед"),
              const SizedBox(height: 16),
              items("Кладовка"),
              const SizedBox(height: 56),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 59,
                    height: 5.76,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 30,
                          top: 0,
                          child: Opacity(
                            opacity: 0.30,
                            child: Container(
                              width: 5.76,
                              height: 5.76,
                              decoration: ShapeDecoration(
                                color: Color(0xFF886FE2),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 41.73,
                          top: 0,
                          child: Opacity(
                            opacity: 0.30,
                            child: Container(
                              width: 5.76,
                              height: 5.76,
                              decoration: ShapeDecoration(
                                color: Color(0xFF886FE2),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 53.24,
                          top: 0,
                          child: Opacity(
                            opacity: 0.30,
                            child: Container(
                              width: 5.76,
                              height: 5.76,
                              decoration: ShapeDecoration(
                                color: Color(0xFF886FE2),
                                shape: OvalBorder(),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 24.46,
                            height: 5.76,
                            decoration: ShapeDecoration(
                              color: Color(0xFF856DDC),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(7.20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                          (e) => false);
                    },
                    child: Container(
                      width: 258,
                      height: 71,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.57, vertical: 20.29),
                      decoration: ShapeDecoration(
                        color: const Color(0xFF856DDC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.29),
                        ),
                        shadows: const [
                          BoxShadow(
                            color: Color(0x3D856DDC),
                            blurRadius: 24.09,
                            offset: Offset(0, 7.61),
                            spreadRadius: 0,
                          )
                        ],
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.29,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                          SizedBox(width: 12.68),
                          Icon(
                            Icons.arrow_forward_sharp,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 26),
              InkWell(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                      (e) => false);
                },
                child: const Center(
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: Color(0xFF34295A),
                      fontSize: 13,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w400,
                      height: 0.12,
                      letterSpacing: -0.40,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  items(name) {
    return Container(
      height: 74,
      padding: const EdgeInsets.symmetric(horizontal: 131, vertical: 27),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: const Color(0xFFF4F4F4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25),
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        name,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
