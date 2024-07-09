import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class buttonWidget extends StatelessWidget {
  String txt;
  void Function()? tap;
   buttonWidget({required this.txt,this.tap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
        onPressed: () {},
        child: Text(
          txt,
          style:
          TextStyle(fontWeight: FontWeight.w600, color: Colors.black),
        ));
  }
}
