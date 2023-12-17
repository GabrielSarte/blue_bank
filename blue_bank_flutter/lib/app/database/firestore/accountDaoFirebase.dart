// import 'package:blue_bank_flutter/app/dormain/interfaces/accountDao.dart';
// import 'package:blue_bank_flutter/app/dormain/models/account.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

// class AccountDAOFirestore implements AccountDao{
//   late CollectionReference accountsCollection;

//   AccountDAOFirestore(){
//     accountsCollection = FirebaseFirestore.instance.collection('conta');
//   }

//   @override
//   Future<List<Account>> find() async{
//     var result = await accountsCollection.get();
//     return result.docs.map(
//       (doc) => Account(
//         idConta: doc.reference.id.toString(), 
//         nome: doc['nome'], 
//         agencia: doc['agencia'], 
//         banco: doc['banco'], 
//         estabelecimento: doc['estabelecimento'], 
//         saldo: doc['saldo']
//         )
//       ) as List<Account>;
//   }

//   @override
//   remove(id) {
//     accountsCollection.doc(id).delete();
//   }

//   @override
//   save(Account account) {
//     accountsCollection.doc(account.idConta).set({
//     'nome' : account.nome,
//     'agencia' : account.agencia,
//     'banco' : account.banco,
//     'estabelecimento' : account.estabelecimento,
//     'saldo' : account.saldo,
//     }
//     );
//   }

// }