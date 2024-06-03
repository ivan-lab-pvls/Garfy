import 'package:finance_app5/widgets/bottom_bar.dart';
import 'package:finance_app5/pages/screen.dart';
import 'package:flutter/material.dart';
import 'package:in_app_review/in_app_review.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 65, 16, 32),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Settings',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.fromLTRB(12, 16, 12, 16),
                        decoration: BoxDecoration(
                            color: const Color(0xFf28304D),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          children: [
                            Image.asset('assets/settings_image.png'),
                            const Padding(
                              padding: EdgeInsets.fromLTRB(16, 31, 16, 31),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      'Your opinion is important!',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'SF Pro Text',
                                          color: Colors.white,
                                          fontSize: 24,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                InAppReview.instance
                                    .openStoreListing(appStoreId: '6503698850');
                              },
                              child: Container(
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                    color: const Color(0xFF5E81FF),
                                    borderRadius: BorderRadius.circular(8)),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Rate app',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontFamily: 'SF Pro Text',
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const DSANFJKA(
                                      link:
                                          'https://docs.google.com/document/d/1m5pAZTjq8bAOaZR7p_hsZW0dU2y6LZepz46PHyy4H4Q/edit?usp=sharing',
                                    )),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(14, 18, 14, 18),
                          decoration: BoxDecoration(
                              color: const Color(0xFf28304D),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/terms.png'),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text(
                                    'Terms of use',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.chevron_right,
                                color: Color(0xFF5E81FF),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const DSANFJKA(
                                      link:
                                          'https://docs.google.com/document/d/1rCfLgLOpmm1Ll3yfCSpXNyGRkXwQc8WVh5F_6Knp9FQ/edit?usp=sharing',
                                    )),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(14, 18, 14, 18),
                          decoration: BoxDecoration(
                              color: const Color(0xFf28304D),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/privacy.png'),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text(
                                    'Privacy Policy',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.chevron_right,
                                color: Color(0xFF5E81FF),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<void>(
                              builder: (BuildContext context) => const DSANFJKA(
                                    link: 'https://forms.gle/6oycce1VeRSgBBbFA',
                                  )),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(14, 18, 14, 18),
                          decoration: BoxDecoration(
                              color: const Color(0xFf28304D),
                              borderRadius: BorderRadius.circular(8)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset('assets/support.png'),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  const Text(
                                    'Support page',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontFamily: 'SF Pro Text',
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400),
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.chevron_right,
                                color: Color(0xFF5E81FF),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const BottomBar()
        ],
      ),
    );
  }
}
