import 'package:finance_app5/widgets/bottom_bar.dart';
import 'package:finance_app5/model/controller.dart';
import 'package:flutter/material.dart';
import 'package:forex_conversion/forex_conversion.dart';
import 'package:get/get.dart';

class RatePage extends StatefulWidget {
  const RatePage({super.key});

  @override
  State<RatePage> createState() => _RatePageState();
}

class _RatePageState extends State<RatePage> {
  final CoinController controller = Get.put(CoinController());
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
                  'Exchange rate',
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
              child: Column(
                children: [
                  FutureBuilder(
                    future: Forex().getAllCurrenciesPrices(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.done) {
                        double count = 0.0;
                        snapshot.data!.forEach((key, value) {
                          if (key == 'EUR') {
                            count = value;
                          }
                        });
                        return Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF28304D),
                                borderRadius: BorderRadius.circular(8)),
                            padding: const EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset('assets/dollar.png'),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'USD',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'SF Pro Text',
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Text(
                                                "Dollar",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'SF Pro Text',
                                                  color: Colors.white
                                                      .withOpacity(0.4),
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Image.asset('assets/exchange.png'),
                                      Row(
                                        children: [
                                          Image.asset('assets/euro.png'),
                                          const SizedBox(
                                            width: 8,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              const Text(
                                                'EUR',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  fontFamily: 'SF Pro Text',
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                              Text(
                                                "Euro",
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'SF Pro Text',
                                                  color: Colors.white
                                                      .withOpacity(0.4),
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "\$1.00",
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'SF Pro Text',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "USD",
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.4),
                                            fontFamily: 'SF Pro Text',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          "€$count",
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'SF Pro Text',
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        Text(
                                          "EUR",
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.4),
                                            fontFamily: 'SF Pro Text',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                  Obx(
                    () => controller.isLoading.value
                        ? const Center(
                            child: CircularProgressIndicator(
                              color: Color(0xFF029BF4),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 3,
                                itemBuilder: (BuildContext context, int index) {
                                  return SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    height: 60,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const SizedBox(
                                                  height: 7,
                                                ),
                                                Text(
                                                  controller
                                                      .coinList[index].symbol
                                                      .toUpperCase(),
                                                  style: const TextStyle(
                                                    fontSize: 18,
                                                    color: Colors.white,
                                                    fontFamily: 'SF Pro Text',
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Text(
                                                  controller
                                                      .coinList[index].name,
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    fontFamily: 'SF Pro Text',
                                                    color: Colors.white
                                                        .withOpacity(0.4),
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                const SizedBox(
                                                  height: 7,
                                                ),
                                                Text(
                                                  "\$${controller.coinList[index].currentPrice.toStringAsFixed(2)}",
                                                  style: const TextStyle(
                                                    fontSize: 18,
                                                    fontFamily: 'SF Pro Text',
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                                Text(
                                                  "${controller.coinList[index].priceChangePercentage24H.toStringAsFixed(2)} %",
                                                  style: TextStyle(
                                                    color: Colors.white
                                                        .withOpacity(0.4),
                                                    fontFamily: 'SF Pro Text',
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Image.asset(controller
                                                        .coinList[index].symbol
                                                        .toUpperCase() ==
                                                    'BTC'
                                                ? 'assets/btc.png'
                                                : controller.coinList[index]
                                                            .symbol
                                                            .toUpperCase() ==
                                                        'ETH'
                                                    ? 'assets/eth.png'
                                                    : 'assets/usdt.png'),
                                          ],
                                        )
                                      ],
                                    ),
                                  );
                                }),
                          ),
                  )
                ],
              ),
            ),
          ),
          const BottomBar()
        ],
      ),
    );
  }
}
