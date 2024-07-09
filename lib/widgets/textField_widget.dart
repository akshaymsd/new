import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  String name;
  Widget? Picon;
  TextEditingController? controller;
   TextfieldWidget({required this.name, this.Picon,required this.controller,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(controller: controller,
        decoration: InputDecoration(prefixIcon:Picon,labelText: name,

    ));
  }
}
