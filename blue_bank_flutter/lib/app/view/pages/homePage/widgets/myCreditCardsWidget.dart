import 'package:blue_bank_flutter/app/view/decorations/colors.dart';
import 'package:blue_bank_flutter/app/view/pages/myCardsPage/myCardsPage.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class MyCreditCardsWidget extends StatelessWidget{
  const MyCreditCardsWidget ({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        decoration: BoxDecoration(
          color: contrastColor, borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          children: [
            IconButton(
            onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MyCardsPage()));},
            icon: Icon(MdiIcons.creditCard, color: highlightsColor,)),
            const SizedBox(width: 12),
            const Text('Meus cartões'),
          ],
        ),
      );
  }
}