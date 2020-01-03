import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SubTitleList extends StatelessWidget {
  final String text;

  SubTitleList(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(right: 10, left: 10, top: 10),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 16,
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}