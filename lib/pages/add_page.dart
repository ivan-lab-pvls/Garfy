import 'dart:convert';

import 'package:finance_app5/model/expense_item.dart';
import 'package:finance_app5/model/income_item.dart';
import 'package:finance_app5/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddPage extends StatefulWidget {
  const AddPage({
    super.key,
  });

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController incomeDescriptionController = TextEditingController();
  TextEditingController incomeAmountController = TextEditingController();
  TextEditingController expenseDescriptionController = TextEditingController();
  TextEditingController expenseAmountController = TextEditingController();
  bool isIncome = true;
  List<EIncomeType> incomeTypeList = [
    EIncomeType.salary,
    EIncomeType.business,
    EIncomeType.dividends,
    EIncomeType.freelance,
    EIncomeType.investment,
    EIncomeType.rent,
  ];
  List<EExpenseType> expenseTypeList = [
    EExpenseType.food,
    EExpenseType.investment,
    EExpenseType.procurement,
    EExpenseType.transport,
    EExpenseType.rest,
  ];
  EIncomeType selectedIncome = EIncomeType.salary;
  EExpenseType selectedExpense = EExpenseType.food;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 65, 16, 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Row(
                      children: [
                        Icon(
                          Icons.chevron_left,
                          color: Colors.white,
                        ),
                        Text(
                          'Back',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      if (isIncome) {
                        if (incomeAmountController.text.isNotEmpty &&
                            incomeDescriptionController.text.isNotEmpty) {
                          IncomeItem income = IncomeItem();
                          income.cost =
                              double.tryParse(incomeAmountController.text);
                          income.type = selectedIncome;
                          income.description = incomeDescriptionController.text;
                          incomes.add(income);
                          addItemsToSP();
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const HomePage()),
                          );
                        }
                      } else {
                        if (expenseAmountController.text.isNotEmpty &&
                            expenseDescriptionController.text.isNotEmpty) {
                          ExpenseItem expense = ExpenseItem();
                          expense.cost =
                              double.tryParse(expenseAmountController.text);
                          expense.type = selectedExpense;
                          expense.description =
                              expenseDescriptionController.text;
                          expenses.add(expense);
                          addItemsToSP();
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    const HomePage()),
                          );
                        }
                      }
                    },
                    child: Text(
                      'Next',
                      style: TextStyle(
                          fontFamily: 'SF Pro Text',
                          color: isIncome
                              ? incomeDescriptionController.text.isNotEmpty &&
                                      incomeAmountController.text.isNotEmpty
                                  ? const Color(0xFF5E81FF)
                                  : const Color(0xFF5E81FF).withOpacity(0.6)
                              : expenseDescriptionController.text.isNotEmpty &&
                                      expenseAmountController.text.isNotEmpty
                                  ? const Color(0xFF5E81FF)
                                  : const Color(0xFF5E81FF).withOpacity(0.6),
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
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
                    onTap: (value) {
                      if (value == 0) {
                        isIncome = true;
                        setState(() {});
                      } else {
                        isIncome = false;
                        setState(() {});
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
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          'Title',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: TextField(
                          cursorColor: Colors.white,
                          maxLength: 15,
                          controller: isIncome
                              ? incomeDescriptionController
                              : expenseDescriptionController,
                          style: const TextStyle(
                              fontFamily: 'SF Pro Text',
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              fontSize: 16),
                          decoration: InputDecoration(
                            counterText: '',
                            filled: true,
                            fillColor: const Color(0xFF28304D),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          onChanged: (text) {
                            if (isIncome) {
                              incomeDescriptionController.text = text;
                            } else {
                              expenseDescriptionController.text = text;
                            }
                            setState(() {});
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          'Amount (\$)',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: TextField(
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          keyboardType: TextInputType.number,
                          cursorColor: Colors.white,
                          controller: isIncome
                              ? incomeAmountController
                              : expenseAmountController,
                          style: const TextStyle(
                              fontFamily: 'SF Pro Text',
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 16),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: const Color(0xFF28304D),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide.none,
                            ),
                          ),
                          onChanged: (text) {
                            if (isIncome) {
                              incomeAmountController.text = text;
                            } else {
                              expenseAmountController.text = text;
                            }
                            setState(() {});
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Text(
                          'Category',
                          style: TextStyle(
                              fontFamily: 'SF Pro Text',
                              color: Colors.white.withOpacity(0.6),
                              fontSize: 16,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      if (!isIncome) getTypesOfExpense(),
                      if (isIncome) getTypesOfIncome()
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getTypesOfIncome() {
    List<Widget> list = [];
    for (var type in incomeTypeList) {
      list.add(InkWell(
        onTap: () {
          selectedIncome = type;
          setState(() {});
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
          decoration: BoxDecoration(
              color: selectedIncome == type
                  ? const Color(0xFF5E81FF)
                  : const Color(0xFF28304D),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    type == EIncomeType.salary
                        ? 'assets/salary.png'
                        : type == EIncomeType.business
                            ? 'assets/business.png'
                            : type == EIncomeType.investment
                                ? 'assets/investment.png'
                                : type == EIncomeType.freelance
                                    ? 'assets/freelance.png'
                                    : type == EIncomeType.rent
                                        ? 'assets/rent.png'
                                        : type == EIncomeType.dividends
                                            ? 'assets/dividends.png'
                                            : 'assets/salary.png',
                    color: selectedIncome == type ? Colors.white : null,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    type.text,
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        color: selectedIncome == type
                            ? Colors.white
                            : Colors.white.withOpacity(0.6),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ),
      ));
      list.add(const SizedBox(
        height: 8,
      ));
    }
    return Column(
      children: list,
    );
  }

  Widget getTypesOfExpense() {
    List<Widget> list = [];
    for (var type in expenseTypeList) {
      list.add(InkWell(
        onTap: () {
          selectedExpense = type;
          setState(() {});
        },
        child: Container(
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
          decoration: BoxDecoration(
              color: selectedExpense == type
                  ? const Color(0xFF5E81FF)
                  : const Color(0xFF28304D),
              borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Image.asset(
                    type == EExpenseType.transport
                        ? 'assets/transport.png'
                        : type == EExpenseType.food
                            ? 'assets/food.png'
                            : type == EExpenseType.investment
                                ? 'assets/investment_expense.png'
                                : type == EExpenseType.procurement
                                    ? 'assets/procurement.png'
                                    : 'assets/rest.png',
                    color: selectedExpense == type ? Colors.white : null,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    type.text,
                    style: TextStyle(
                        fontFamily: 'SF Pro Text',
                        color: selectedExpense == type
                            ? Colors.white
                            : Colors.white.withOpacity(0.6),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ],
          ),
        ),
      ));
      list.add(const SizedBox(
        height: 8,
      ));
    }
    return Column(
      children: list,
    );
  }

  Future<void> addItemsToSP() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('expenses', jsonEncode(expenses));
    prefs.setString('incomes', jsonEncode(incomes));
  }
}
