import 'package:finance_app5/model/expense_item.dart';
import 'package:finance_app5/model/income_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, this.expense, this.income});
  final ExpenseItem? expense;
  final IncomeItem? income;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: const Color(0xFF28304D),
          borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              if (expense != null)
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    expense!.type == EExpenseType.transport
                        ? 'assets/transport.png'
                        : expense!.type == EExpenseType.food
                            ? 'assets/food.png'
                            : expense!.type == EExpenseType.investment
                                ? 'assets/investment.png'
                                : expense!.type == EExpenseType.procurement
                                    ? 'assets/procurement.png'
                                    : 'assets/drink.png',
                    color: const Color(0xFF010048),
                  ),
                ),
              if (income != null)
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  padding: const EdgeInsets.all(8),
                  child: Image.asset(
                    income!.type == EIncomeType.salary
                        ? 'assets/salary.png'
                        : income!.type == EIncomeType.business
                            ? 'assets/business.png'
                            : income!.type == EIncomeType.investment
                                ? 'assets/investment.png'
                                : income!.type == EIncomeType.freelance
                                    ? 'assets/freelance.png'
                                    : income!.type == EIncomeType.rent
                                        ? 'assets/rent.png'
                                        : income!.type == EIncomeType.dividends
                                            ? 'assets/dividends.png'
                                            : 'assets/salary.png',
                    color: const Color(0xFF010048),
                  ),
                ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    expense != null
                        ? expense!.description!
                        : income!.description!,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'SF Pro Text',
                      color: Colors.white.withOpacity(0.7),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    expense != null
                        ? '\$${expense!.cost!.toStringAsFixed(0)}'
                        : '\$${income!.cost!.toStringAsFixed(0)}',
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontFamily: 'SF Pro Text',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(8)),
            child: Text(
              expense != null ? expense!.type!.text : income!.type!.text,
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'SF Pro Text',
                color: Color(0xFF5E81FF),
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
