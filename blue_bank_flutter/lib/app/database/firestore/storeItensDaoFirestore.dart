// import 'package:blue_bank_flutter/app/dormain/interfaces/storeItensDao.dart';
// import 'package:blue_bank_flutter/app/dormain/models/store_itens.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class StoreItensDAOFirestore implements StoreItensDao{
//   late CollectionReference itensCollection;

//   StoreItensDAOFirestore(){
//     itensCollection = FirebaseFirestore.instance.collection('store_itens');
//   }

//   @override
//   Future<List<StoreItens>> find() async{
//     var result = await itensCollection.get();
//     return result.docs.map(
//       (doc) => StoreItens(
//         id_compra: id_compra, 
//         nome_produto: nome_produto, 
//         valor_compra: valor_compra
//         )
//     );
//   }

//   @override
//   remove(id) {
//     // TODO: implement remove
//     throw UnimplementedError();
//   }

//   @override
//   save(StoreItens storeItens) {
//     // TODO: implement save
//     throw UnimplementedError();
//   }

// }