import 'package:blue_bank_flutter/app/view/decorations/colors.dart';
import 'package:flutter/material.dart';

class NotificationsList extends StatelessWidget {
  const NotificationsList ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _inviteAFriend(),
          _CardPix(),
          _increaseLimit(),
        ],
      ),
    );
  }

  _inviteAFriend(){
    return Container(
      width: 300,
      height: 100,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: contrastColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: "Convide amigos para o BlueBank", style: TextStyle(color: secondaryBlue, fontSize: 16)),
            TextSpan(text: "\ne ganhe recompensas incríveis.", style: TextStyle(color: highlightsColor, fontSize: 16)),
          ] 
        ),
      ),
    );
  }

  _CardPix(){
    return Container(
      width: 300,
      height: 100,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: contrastColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: "Experimente a nova função", style: TextStyle(color: highlightsColor, fontSize: 16)),
            TextSpan(text: "Pix com cartão de crédito", style: TextStyle(color: secondaryBlue, fontSize: 16)),
          ] 
        ),
      ),
    );
  }

  _increaseLimit(){
    return Container(
      width: 300,
      height: 100,
      margin: const EdgeInsets.only(left: 10, top: 10, right: 20),
      padding: const EdgeInsets.all(28),
      decoration: BoxDecoration(
        color: contrastColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(text: "Aumente seu limite enquanto ", style: TextStyle(color: highlightsColor, fontSize: 16)),
            TextSpan(text: "seu\ndinheiro segue rendendo", style: TextStyle(color: secondaryBlue, fontSize: 16)),
          ] 
        ),
      ),
    );
  }

  
}