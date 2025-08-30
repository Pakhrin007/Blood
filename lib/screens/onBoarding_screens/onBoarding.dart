
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        scrollDirection: Axis.horizontal,
        onPageChanged: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Image.asset(
                  'assets/images/onBoarding_images/one.png',
                  height: 200,
                  width: 160,
                ),
              ),
              5.heightBox,
              "Share Your Case !"
                  .text
                  .textStyle(TextStyle(
                    fontFamily: 'liberin',
                  ))
                  .xl
                  .bold
                  .make()
                  .centered(),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child:
                    "Add the casae of a patient who needs blood and also participated in the requests for donation"
                        .text
                        .textStyle(TextStyle(
                            fontFamily: 'Mono',
                            fontSize: 18,
                            fontWeight: FontWeight.w800))
                        .center
                        .make(),
              ),
              10.heightBox,
              row()
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Image.asset(
                  'assets/images/onBoarding_images/two.png',
                  height: 200,
                  width: 160,
                ),
              ),
              "Donate to Others"
                  .text
                  .textStyle(TextStyle(
                    fontFamily: 'liberin',
                  ))
                  .xl
                  .bold
                  .make()
                  .centered(),
              5.heightBox,
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                child: "Donate to individual cases in one step"
                    .text
                    .textStyle(TextStyle(
                        fontFamily: 'Mono',
                        fontSize: 18,
                        fontWeight: FontWeight.w800))
                    .center
                    .make(),
              ),
              10.heightBox,
              row()
            ],
          ),
          Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: Image.asset(
                        'assets/images/onBoarding_images/three.png',
                        height: 200,
                        width: 160,
                      ),
                    ),
                    5.heightBox,
                    "Track the Donors"
                        .text
                        .textStyle(TextStyle(
                          fontFamily: 'liberin',
                        ))
                        .xl
                        .bold
                        .make()
                        .centered(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 20),
                      child: "Tracking donors coming moment by moment"
                          .text
                          .textStyle(TextStyle(
                              fontFamily: 'Mono',
                              fontSize: 18,
                              fontWeight: FontWeight.w800))
                          .center
                          .make(),
                    ),
                    10.heightBox,
                    row(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: buttom(),
              ),
            ],
          )
        ],
      ),
    ));
  }

  Widget row() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        currentIndex == 0
            ? Icon(
                Icons.circle,
                color: Vx.red400,
                size: 20,
              )
            : Icon(
                Icons.circle_outlined,
                color: Vx.red400,
                size: 20,
              ),
        currentIndex == 1
            ? Icon(
                Icons.circle,
                color: Vx.red400,
                size: 20,
              )
            : Icon(
                Icons.circle_outlined,
                color: Vx.red400,
                size: 20,
              ),
        currentIndex == 2
            ? Icon(
                Icons.circle,
                color: Vx.red400,
                size: 20,
              )
            : Icon(
                Icons.circle_outlined,
                color: Vx.red400,
                size: 20,
              )
      ],
    );
  }

  Widget buttom() {
    return InkWell(
      child: Container(
        height: 50,
        decoration: BoxDecoration(
            color: Vx.red500, borderRadius: BorderRadius.circular(12)),
        width: double.infinity,
        child: "Get Started"
            .text
            .textStyle(TextStyle(color: Colors.white,fontFamily: 'Libertin',letterSpacing: 1.3))
            .xl2
            .bold
            .make()
            .centered(),
      ),
      onTap: () {
        Navigator.pushReplacementNamed(context, "/LoginScreen");
      },
    );
  }
}
