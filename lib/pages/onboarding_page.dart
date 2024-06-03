import 'package:finance_app5/pages/home_page.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  ValueNotifier<int> page = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                if (page.value == 0)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 65, 26, 92),
                    child: Image.asset('assets/first_boarding.png'),
                  ),
                if (page.value == 1)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 65, 26, 80),
                    child: Image.asset('assets/second_boarding.png'),
                  ),
                if (page.value == 0)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                                text: 'Welcome to',
                                style: TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 32,
                                    fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(
                                    text: ' our app!',
                                    style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        color: Color(0xFF5E81FF),
                                        fontSize: 32,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ]),
                          ),
                        )
                      ],
                    ),
                  ),
                if (page.value == 0)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            'Discover a new level of financial management and fun with our app!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                if (page.value == 1)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: RichText(
                            textAlign: TextAlign.center,
                            text: const TextSpan(
                                text: 'Your cash flow is',
                                style: TextStyle(
                                    fontFamily: 'SF Pro Text',
                                    fontSize: 32,
                                    fontWeight: FontWeight.w400),
                                children: [
                                  TextSpan(
                                    text: ' under control!',
                                    style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        color: Color(0xFF5E81FF),
                                        fontSize: 32,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ]),
                          ),
                        )
                      ],
                    ),
                  ),
                if (page.value == 1)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Text(
                            'Keep track of your income with our convenient tools and plan your finances easily.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'SF Pro Text',
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
            child: InkWell(
              onTap: () {
                if (page.value == 0) {
                  page.value = 1;
                  setState(() {});
                } else if (page.value == 1) {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) => const HomePage()),
                  );
                }
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: const Color(0xFF5E81FF),
                    borderRadius: BorderRadius.circular(8)),
                child: const Text(
                  'Next',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
