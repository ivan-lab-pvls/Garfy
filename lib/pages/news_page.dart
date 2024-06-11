import 'package:cached_network_image/cached_network_image.dart';
import 'package:finance_app5/widgets/bottom_bar.dart';
import 'package:finance_app5/model/news_item.dart';
import 'package:finance_app5/pages/current_news_page.dart';
import 'package:flutter/material.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
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
                  'News',
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
                children: [getNews()],
              ),
            )),
          ),
          const BottomBar(),
        ],
      ),
    );
  }

  Widget getNews() {
    List<Widget> list = [];
    for (var item in news) {
      list.add(Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => CurrentNewsPage(
                        news: item,
                      )),
            );
          },
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFF28304c),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(children: [
              Container(
                height: 112,
                width: 112,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          item.image!,
                        ))),
              ),
              const SizedBox(
                width: 12,
              ),
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 28),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              item.title!,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(),
                      child: Row(
                        children: [
                          Flexible(
                            child: Text(
                              'Read more',
                              style: TextStyle(
                                  fontFamily: 'SF Pro Text',
                                  fontSize: 16,
                                  color: Color(0xFF5E81FF),
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ));
    }
    return Column(
      children: list,
    );
  }
}
