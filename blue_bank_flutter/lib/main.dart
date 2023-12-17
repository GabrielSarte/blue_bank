import 'package:blue_bank_flutter/app/myApp.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyBe4OS2rhxHnXFv9X_5GHHBn5xXH0oSKSs",
      projectId: "bluebank-school",
      messagingSenderId: "475409598108",
      appId: "1:475409598108:web:9407f42d7b723b52820f59",
    )
  );

  FirebaseFirestore.instance.collection('conta').doc('GaB03brArMCnlJMJpToX').set({
    'nome' : "Gabriel",
    'agencia' : "0001",
    'banco' : "226408690-6",
    'estabelecimento' : "Blue Pagamentos S.A",
    'saldo' : 0.00,
    });

  runApp(const MyApp());
}



  
