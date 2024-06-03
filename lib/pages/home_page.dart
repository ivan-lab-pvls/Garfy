import 'dart:convert';

import 'package:finance_app5/widgets/bottom_bar.dart';
import 'package:finance_app5/widgets/item_widget.dart';
import 'package:finance_app5/model/expense_item.dart';
import 'package:finance_app5/model/income_item.dart';
import 'package:finance_app5/pages/add_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

EPageOnSelect page = EPageOnSelect.homePage;
List<ExpenseItem> expenses = [];
List<IncomeItem> incomes = [];

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isIncome = true;
  @override
  void initState() {
    super.initState();
    getItemsFromSP(
      () {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.fromLTRB(16, 65, 16, 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Operations',
                        style: TextStyle(
                            fontFamily: 'SF Pro Text',
                            color: Colors.white,
                            fontSize: 32,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                if (expenses.isNotEmpty || incomes.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.only(bottom: 36),
                    child: Container(
                      height: 43,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 5,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10,
                          ),
                          color: const Color(0xFF28304D),
                        ),
                        child: TabBar(
                          onTap: (value) => () {
                            if (value == 0) {
                              isIncome = true;
                            } else {
                              isIncome = false;
                            }
                          },
                          dividerColor: Colors.transparent,
                          padding: const EdgeInsets.all(2),
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.white,
                          indicatorSize: TabBarIndicatorSize.tab,
                          labelStyle: const TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                          indicator: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              10,
                            ),
                            color: const Color(0xFF5E81FF),
                          ),
                          tabs: const [
                            Tab(
                              text: 'Incomes',
                            ),
                            Tab(
                              text: 'Expenses',
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                Expanded(
                  child: TabBarView(
                    children: [
                      incomes.isNotEmpty
                          ? SingleChildScrollView(
                              child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 8),
                                        child: Container(
                                          width: double.infinity,
                                          padding: const EdgeInsets.all(16),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              gradient: const LinearGradient(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: [
                                                    Color(0xFF60adcc),
                                                    Color(0xFF9880f5),
                                                    Color(0xFF647ff6)
                                                  ])),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          bottom: 12),
                                                      child: Text(
                                                        'Hello!',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            fontSize: 32,
                                                            fontFamily:
                                                                'SF Pro Text',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ),
                                                    const Row(
                                                      children: [
                                                        Flexible(
                                                          child: Text(
                                                            'Your amount of income',
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: TextStyle(
                                                                fontSize: 16,
                                                                fontFamily:
                                                                    'SF Pro Text',
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Text(
                                                      '${getIncomesCost()}\$',
                                                      textAlign:
                                                          TextAlign.center,
                                                      style: const TextStyle(
                                                          fontSize: 20,
                                                          fontFamily:
                                                              'SF Pro Text',
                                                          fontWeight:
                                                              FontWeight.w400),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Image.asset('assets/hand.png')
                                            ],
                                          ),
                                        ),
                                      ),
                                      getIncomes(),
                                    ],
                                  )))
                          : expenses.isNotEmpty
                              ? SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 30),
                                        child:
                                            Image.asset('assets/main_page.png'),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 8),
                                        child: Text(
                                          'There\'s no info',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'SF Pro Text',
                                              color: Color(0xFF5E81FF),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      Text(
                                        'Add your incomes',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'SF Pro Text',
                                            color:
                                                Colors.white.withOpacity(0.6),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                )
                              : SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 30),
                                        child:
                                            Image.asset('assets/main_page.png'),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 8),
                                        child: Text(
                                          'There\'s no info',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'SF Pro Text',
                                              color: Color(0xFF5E81FF),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      Text(
                                        'Add your incomes and expenses',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'SF Pro Text',
                                            color:
                                                Colors.white.withOpacity(0.6),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                      expenses.isNotEmpty
                          ? Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 8),
                                    child: Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.all(16),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                          gradient: const LinearGradient(
                                              colors: [
                                                Color(0xFF60adcc),
                                                Color(0xFF9880f5),
                                                Color(0xFF647ff6)
                                              ])),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 12),
                                                  child: Text(
                                                    'Hello!',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                        fontSize: 32,
                                                        fontFamily:
                                                            'SF Pro Text',
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ),
                                                const Row(
                                                  children: [
                                                    Flexible(
                                                      child: Text(
                                                        'Your amount of expense',
                                                        textAlign:
                                                            TextAlign.start,
                                                        style: TextStyle(
                                                            fontSize: 16,
                                                            fontFamily:
                                                                'SF Pro Text',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Text(
                                                  '-${getExpensesCost()}\$',
                                                  textAlign: TextAlign.center,
                                                  style: const TextStyle(
                                                      fontSize: 20,
                                                      fontFamily: 'SF Pro Text',
                                                      fontWeight:
                                                          FontWeight.w400),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Image.asset('assets/hand.png')
                                        ],
                                      ),
                                    ),
                                  ),
                                  getExpenses()
                                ],
                              ),
                            )
                          : incomes.isNotEmpty
                              ? SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 30),
                                        child:
                                            Image.asset('assets/main_page.png'),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 8),
                                        child: Text(
                                          'There\'s no info',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'SF Pro Text',
                                              color: Color(0xFF5E81FF),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      Text(
                                        'Add your expenses',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'SF Pro Text',
                                            color:
                                                Colors.white.withOpacity(0.6),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                )
                              : SingleChildScrollView(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 30),
                                        child:
                                            Image.asset('assets/main_page.png'),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 8),
                                        child: Text(
                                          'There\'s no info',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontFamily: 'SF Pro Text',
                                              color: Color(0xFF5E81FF),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ),
                                      Text(
                                        'Add your incomes and expenses',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'SF Pro Text',
                                            color:
                                                Colors.white.withOpacity(0.6),
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ),
                    ],
                  ),
                ),
                if (expenses.isEmpty && incomes.isEmpty)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const AddPage()),
                        );
                      },
                      child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                            color: const Color(0xFF5E81FF),
                            borderRadius: BorderRadius.circular(8)),
                        child: const Text(
                          'Add new',
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
                const BottomBar()
              ],
            ),
            if (expenses.isNotEmpty || incomes.isNotEmpty)
              Positioned(
                  bottom: 80,
                  right: 16,
                  child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const AddPage()),
                        );
                      },
                      child: Image.asset('assets/add.png')))
          ],
        ),
      ),
    );
  }

  String getIncomesCost() {
    int cost = 0;
    for (var income in incomes) {
      cost = cost + income.cost!.toInt();
    }
    return cost.toString();
  }

  String getExpensesCost() {
    int cost = 0;
    for (var expense in expenses) {
      cost = cost + expense.cost!.toInt();
    }
    return cost.toString();
  }

  Widget getExpenses() {
    List<Widget> list = [];
    for (var expense in expenses) {
      list.add(ItemWidget(
        expense: expense,
      ));
      list.add(const SizedBox(
        height: 8,
      ));
    }
    return Column(
      children: list,
    );
  }

  Widget getIncomes() {
    List<Widget> list = [];
    for (var income in incomes) {
      list.add(ItemWidget(
        income: income,
      ));
      list.add(const SizedBox(
        height: 8,
      ));
    }
    return Column(
      children: list,
    );
  }

  void getItemsFromSP(Function() callBack) async {
    final prefs = await SharedPreferences.getInstance();

    final List<dynamic> jsonData1 =
        jsonDecode(prefs.getString('expenses') ?? '[]');
    final List<dynamic> jsonData2 =
        jsonDecode(prefs.getString('incomes') ?? '[]');

    expenses = jsonData1.map<ExpenseItem>((jsonList) {
      {
        return ExpenseItem.fromJson(jsonList);
      }
    }).toList();
    incomes = jsonData2.map<IncomeItem>((jsonList) {
      {
        return IncomeItem.fromJson(jsonList);
      }
    }).toList();
    callBack();
  }
}
