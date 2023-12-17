import 'package:blue_bank_flutter/app/view/decorations/colors.dart';
import 'package:blue_bank_flutter/app/view/pages/homePage/homePage.dart';
import 'package:blue_bank_flutter/app/view/pages/myCardsPage/widgets/physicalCard.dart';
import 'package:blue_bank_flutter/app/view/pages/myCardsPage/widgets/virtualCard.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyCardsPage extends StatelessWidget {
  const MyCardsPage({super.key});

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
                    onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => const MyHomePage()));}, 
                    icon: Icon(
                      MdiIcons.close, 
                      color: highlightsColor)
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _title(),
                  SizedBox(height: 40),
                  _virtualCardtitle(),
                  SizedBox(height: 20),
                  const VirtualCardWidget(),
                  SizedBox(height: 50),
                  _physicalCardtitle(),
                  SizedBox(height: 20),
                  const PhysicalCardWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _title() {
    return Text(
      'Meus cartões',
      style: TextStyle(
          fontSize: 22, color: highlightsColor, fontWeight: FontWeight.bold),
    );
  }

  _virtualCardtitle() {
    return Text(
        'Cartão virtual',
        style: TextStyle(fontSize: 18, color: halfTonesColor),
      );
  }

  _physicalCardtitle() {
    return Text(
        'Cartão físico',
        style: TextStyle(fontSize: 18, color: halfTonesColor),
      );
  }
}
