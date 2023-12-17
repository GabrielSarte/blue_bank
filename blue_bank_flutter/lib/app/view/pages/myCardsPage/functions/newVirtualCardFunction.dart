import 'dart:math';
import 'package:blue_bank_flutter/app/database/firestore/db_firestore.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NewVirtualCardFunction {

  static void newVirtualCardFunction(){
    FirebaseFirestore db = DBFirestore.get();

    db.collection("virtual_credit_cards").doc().set({
      'number' : _randomCardNumber(),
      'validade' : _validade(),
      'cvc' : _randomCVC(),
      'limit' : 500,
      'cardType' : "Virtual",
      'function' : "Credito/Débito",
    });
  }

  static String _randomCardNumber(){
    StringBuffer buffer = StringBuffer();
    for (int i = 0; i<11; i++){
      var digito = Random().nextInt(10).toString();
      buffer.write(digito);
    }
    return buffer.toString();
  }

  static DateTime _validade(){
    DateTime v = DateTime.now();
    v = DateTime.utc(v.year + 5, v.month, v.day);
    return v;
  }

  static String _randomCVC(){
    StringBuffer buffer = StringBuffer();
    for (int i = 0; i<3; i++){
      var digito = Random().nextInt(10).toString();
      buffer.write(digito);
    }
    return buffer.toString();
  }
}