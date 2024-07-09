import 'package:flutter/material.dart';

class ContainerWIdget extends StatefulWidget {
  String txt;
  String img;
   ContainerWIdget({super.key,required this.txt,required this.img});

  @override
  State<ContainerWIdget> createState() => _ContainerWIdgetState();
}

class _ContainerWIdgetState extends State<ContainerWIdget> {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: Container(height: 80,
          child: Column(
            children: [
              Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(
                          widget.img,
                        ),
                        fit: BoxFit.cover,
                      ))),Text(widget.txt,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12),)
            ],
          ),
        ),
    );
  }
}
