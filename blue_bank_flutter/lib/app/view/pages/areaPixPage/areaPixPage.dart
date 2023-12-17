import 'package:blue_bank_flutter/app/view/decorations/colors.dart';
import 'package:blue_bank_flutter/app/view/pages/areaPixPage/functions/pixMinus.dart';
import 'package:blue_bank_flutter/app/view/pages/areaPixPage/functions/pixPlus.dart';
import 'package:blue_bank_flutter/app/view/pages/homePage/homePage.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AreaPixPage extends StatelessWidget {
  const AreaPixPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(width:10),
                IconButton(
                    onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => MyHomePage()));}, 
                    icon: Icon(
                      MdiIcons.close, 
                      color: highlightsColor)
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, top: 12, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _top(),
                  SizedBox(height: 40),
                  _send(context),
                  SizedBox(height: 40),
                  _receive(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _top(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Área Pix', style: TextStyle(fontSize: 30, color: highlightsColor),),
        SizedBox(height: 12),
        Text('Envie e receba pagamentos a\nqualquer hora e dia da semana, sem\npagar nada por isso.', style: TextStyle(fontSize: 18, color: halfTonesColor),),
      ],
    );  
  }

  _send(context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Enviar', style: TextStyle(fontSize: 20, color: highlightsColor),),
        SizedBox(height: 40),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom:10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: secondaryBlue, borderRadius: BorderRadius.circular(48)
                    ),
                    child: IconButton(
                      onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => PixMinus()));}, 
                      icon: Icon(
                      MdiIcons.cashFast, 
                      color: highlightsColor)),
                  ),
                  SizedBox(height: 20),
                  Text('Transferir', style: TextStyle(color: highlightsColor, fontSize: 15),)
                ],
              ),
              SizedBox(width: 20), 
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom:10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: secondaryBlue, borderRadius: BorderRadius.circular(48)
                    ),
                    child: IconButton(
                      onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => PixMinus()));}, 
                      icon: Icon(
                      MdiIcons.contentCopy, 
                      color: highlightsColor)),
                  ),
                  SizedBox(height: 20),
                  Text('Pix Copie e\nCola', style: TextStyle(color: highlightsColor, fontSize: 15),)
                ],
              ),
          ]
        ),
      ],
    );
  }

  _receive(context){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Receber', style: TextStyle(fontSize: 20, color: highlightsColor),),
        SizedBox(height: 40),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom:10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: secondaryBlue, borderRadius: BorderRadius.circular(48)
                    ),
                    child: IconButton(
                      onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => PixPlus()));}, 
                      icon: Icon(
                      MdiIcons.message, 
                      color: highlightsColor)),
                  ),
                  SizedBox(height: 20),
                  Text('Cobrar', style: TextStyle(color: highlightsColor, fontSize: 15),)
                ],
              ),
              SizedBox(width: 20), 
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom:10),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: secondaryBlue, borderRadius: BorderRadius.circular(48)
                    ),
                    child: IconButton(
                      onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => PixPlus()));}, 
                      icon: Icon(
                      MdiIcons.cashPlus, 
                      color: highlightsColor)),
                  ),
                  SizedBox(height: 20),
                  Text('Depositar', style: TextStyle(color: highlightsColor, fontSize: 15),)
                ],
              ),
          ]
        ),
      ],
    );
  }

  

}