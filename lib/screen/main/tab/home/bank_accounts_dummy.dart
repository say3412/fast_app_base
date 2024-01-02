import 'package:fast_app_base/screen/main/tab/home/bank_dummy.dart';
import 'package:fast_app_base/screen/main/tab/home/vo/vo_bank_account.dart';

final bankAccountB1 = BankAccount(bankB, 30000000, accountTypeName: "신안 주거래 우대통장(저축예금)");
final bankAccountB2 = BankAccount(bankB, 450000000, accountTypeName: "저축예금");
final bankAccountB3 = BankAccount(bankB, 6780320000, accountTypeName: "입출금통장");
final bankAccountKakao1 = BankAccount(bankKakao, 1245672008780, accountTypeName: "정기예금");
final bankAccountKakao2 = BankAccount(bankKakao, 30484200800, accountTypeName: "입출금통장");
final bankAccountTtos1 = BankAccount(bankTtos, 9830004080);
final bankAccountTtos2 = BankAccount(bankTtos, 1435004080);
final bankAccountP1 = BankAccount(bankP, 5300809, accountTypeName: "입출금통장");
final bankAccountP2 = BankAccount(bankP,437895300809, accountTypeName: "입출금통장");
final bankAccountP3 = BankAccount(bankP,437895300809, accountTypeName: "입출금통장");


final bankAccounts = [ // List<BankAccount> 추가하지 않아도 dart에서 추론해 줌
  bankAccountB1,
  bankAccountB2,
  bankAccountB3,
  bankAccountKakao2,
  bankAccountTtos1,
  bankAccountTtos2,
  bankAccountP1,
  bankAccountP2,
  bankAccountP3
];
