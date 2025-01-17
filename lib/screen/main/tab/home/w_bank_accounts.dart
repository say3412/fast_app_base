import 'package:fast_app_base/common/common.dart';
import 'package:fast_app_base/common/widget/w_rounded_container.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';
import 'package:flutter/material.dart';

class BankAccountWidget extends StatelessWidget {
  final BankAccount account;

  const BankAccountWidget(this.account, {super.key});

  @override
  Widget build(BuildContext context) {
    var numberFormat = NumberFormat('###,###,###,###'); // 3자리마다 , 찍도록 추가

    return Row(
      children: [
        Image.asset(
          account.bank.logoImagePath,
          width: 40,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (account.accountTypeName ?? "${account.bank.name} 통장")
                  .text
                  .white
                  .size(12)
                  .make(),
              ("${numberFormat.format(account.balance)}원").text.white.bold.size(18).make(),
            ],
          ).pSymmetric(h: 20, v: 10),
        ),
        RoundedContainer(
          backagoundColor: context.appColors.buttonBackground,
          padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 8), // 사이즈 수정
          child: "송금".text.white.bold.size(10).make(),
          radius: 7,
        ),
      ],
    );
  }
}
