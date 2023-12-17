import 'package:blue_bank_flutter/app/database/firestore/db_firestore.dart';
import 'package:blue_bank_flutter/app/view/decorations/colors.dart';
import 'package:blue_bank_flutter/app/view/pages/areaPixPage/areaPixPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PixPlus extends StatefulWidget {

  const PixPlus({super.key});

  @override
  State<PixPlus> createState() => _PixPlusState();
}

class _PixPlusState extends State<PixPlus> {
  final formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: backgroundColor,
      body: FormBuilder(
        key: formKey,
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Row(
                  children: [
                    SizedBox(width:10),
                    IconButton(
                        onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => AreaPixPage()));}, 
                        icon: Icon(
                          MdiIcons.close, 
                          color: highlightsColor)
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: 20, top: 20, left: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Qual é o valor da\ntransferência?', style: TextStyle(color: highlightsColor, fontSize: 30)),
                      Text('Receba em qualquer hora e qualquer lugar', style: TextStyle(color: halfTonesColor, fontSize: 16))
                    ],
                  )
                ),
                Container(
                  margin: EdgeInsets.only(left: 30, top: 50, right: 1000 ),
                  child: Column(
                    children: [
                      FormBuilderTextField(
                        style: TextStyle(color: secondaryBlue),
                        name: 'nome',
                        decoration: InputDecoration(
                          label: Text('Receber de', style: TextStyle(color: highlightsColor, fontSize: 18)),
                          hintText: 'Nome',
                          hintStyle: TextStyle(color: halfTonesColor),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                            color: secondaryBlue,
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 2.0,
                            horizontal: 10.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      FormBuilderTextField(
                        style: TextStyle(color: secondaryBlue),
                        name: 'valor',
                        decoration: InputDecoration(
                          label: Text('Valor do pix', style: TextStyle(color: highlightsColor, fontSize: 18)),
                          hintText: '0.00',
                          hintStyle: TextStyle(color: halfTonesColor),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: secondaryBlue),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(
                            color: secondaryBlue,
                            ),
                ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 2.0,
                            horizontal: 10.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: salvarPix,
                        style: ElevatedButton.styleFrom(
                        backgroundColor: secondaryBlue,
                        ),
                        child: Text('Receber', style: TextStyle(color: highlightsColor, fontSize: 18)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void salvarPix() {
    setState(() {
      FirebaseFirestore db = DBFirestore.get();

      db.collection("transacoes").doc().set({
        'nome' : formKey.currentState!.fields['nome']!.value.toString(),
        'valor' : int.parse(
            formKey.currentState!.fields['valor']!.value.toString()),
        'data' : DateTime.now(),
      });
        
      Navigator.pop(context, true);
    });
  }
}
