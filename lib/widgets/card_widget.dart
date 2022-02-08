
import 'package:flutter/material.dart';

class card extends StatelessWidget {
  const card({
    Key? key,
    required this.leadingicon,
    required this.title,
    required this.subtitle,
    required this.trailingicon,
    required this.onPressed,
    this.bottonmargen = 0,
    this.topmargen = 0,
  }) : super(key: key);
  final IconData leadingicon;
  final String title;
  final String subtitle;
  final IconData trailingicon;
  final VoidCallback onPressed;
  final double bottonmargen;
  final double topmargen;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      margin: EdgeInsets.only(
          bottom: bottonmargen, top: topmargen, left: 5, right: 5),
      shape:  RoundedRectangleBorder(
          side: BorderSide(color: Colors.lightBlueAccent.shade100),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: ListTile(
          leading: Icon(leadingicon,color: Colors.black,),
          title: Text(
            title,
            style: const TextStyle(fontFamily: 'Merriweather', fontSize: 18),
          ),
          subtitle: Text(subtitle,style: const TextStyle(fontFamily: 'Merriweather'),),
          trailing: IconButton(onPressed: onPressed, icon: Icon(trailingicon,color: Colors.black))),
    );
  }
}
