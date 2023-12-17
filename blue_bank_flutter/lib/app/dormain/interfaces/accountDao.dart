import 'package:blue_bank_flutter/app/dormain/models/account.dart';

abstract class AccountDao {

  save(Account account);

  remove(dynamic id);

  Future<List<Account>>find();
}