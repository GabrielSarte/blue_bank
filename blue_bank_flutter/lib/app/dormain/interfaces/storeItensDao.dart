

import 'package:blue_bank_flutter/app/dormain/models/store_itens.dart';

abstract class StoreItensDao {

  save(StoreItens storeItens);

  remove(dynamic id);

  Future<List<StoreItens>>find();
}