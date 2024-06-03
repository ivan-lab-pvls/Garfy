import 'package:finance_app5/pages/home_page.dart';
import 'package:finance_app5/pages/news_page.dart';
import 'package:finance_app5/pages/rate_page.dart';
import 'package:finance_app5/pages/settings_page.dart';
import 'package:flutter/material.dart';

enum EPageOnSelect { homePage, newsPage, ratePage, settingsPage }

class BottomBar extends StatefulWidget {
  const BottomBar({
    super.key,
  });

  @override
  State<BottomBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          color: Color(0xFF161B2D),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16), topRight: Radius.circular(16))),
      padding: const EdgeInsets.fromLTRB(30, 12, 30, 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              if (page != EPageOnSelect.homePage) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const HomePage()),
                    (route) => false);
                page = EPageOnSelect.homePage;
                setState(() {});
              }
            },
            child: SizedBox(
                width: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.homePage
                        ? Image.asset(
                            'assets/home2.png',
                          )
                        : Image.asset(
                            'assets/home.png',
                          ),
                    Text('Home',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            color: page == EPageOnSelect.homePage
                                ? const Color(0xFF5E81FF)
                                : Colors.white.withOpacity(0.6),
                            fontSize: 14))
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              if (page != EPageOnSelect.ratePage) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const RatePage()),
                    (route) => false);
                page = EPageOnSelect.ratePage;
                setState(() {});
              }
            },
            child: SizedBox(
                width: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.ratePage
                        ? Image.asset(
                            'assets/rate2.png',
                          )
                        : Image.asset(
                            'assets/rate.png',
                          ),
                    Text('Rate',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            color: page == EPageOnSelect.ratePage
                                ? const Color(0xFF5E81FF)
                                : Colors.white.withOpacity(0.6),
                            fontSize: 14))
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              if (page != EPageOnSelect.newsPage) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const NewsPage()),
                    (route) => false);
                page = EPageOnSelect.newsPage;
                setState(() {});
              }
            },
            child: SizedBox(
                width: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.newsPage
                        ? Image.asset(
                            'assets/news2.png',
                          )
                        : Image.asset(
                            'assets/news.png',
                          ),
                    Text('News',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            color: page == EPageOnSelect.newsPage
                                ? const Color(0xFF5E81FF)
                                : Colors.white.withOpacity(0.6),
                            fontSize: 14))
                  ],
                )),
          ),
          InkWell(
            onTap: () {
              if (page != EPageOnSelect.settingsPage) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const SettingsPage()),
                    (route) => false);
                page = EPageOnSelect.settingsPage;
                setState(() {});
              }
            },
            child: SizedBox(
                width: 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    page == EPageOnSelect.settingsPage
                        ? Image.asset(
                            'assets/settings2.png',
                          )
                        : Image.asset(
                            'assets/settings.png',
                          ),
                    Text('Settings',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            fontWeight: FontWeight.w400,
                            color: page == EPageOnSelect.settingsPage
                                ? const Color(0xFF5E81FF)
                                : Colors.white.withOpacity(0.6),
                            fontSize: 14))
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
