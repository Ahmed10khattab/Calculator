// ignore: duplicate_ignore
// ignore: file_names
// ignore_for_file: must_be_immutable, file_names

 import 'package:flutter/material.dart';
 
class Botton extends StatefulWidget {
  Botton({Key? key, required this.text,required this.function ,this.flix, required this.color})
      : super(key: key);
  String text;
  Color color;
  int? flix;
  Function function;
  @override
  State<Botton> createState() => _BottonState();
}

class _BottonState extends State<Botton> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: widget.flix == null ? 1 : widget.flix!,
      child: GestureDetector(
        onTap: () {
         widget.function(widget.text);
        },
        child: Container(
          margin: const EdgeInsets.only(bottom: 3, top: 10, right: 4, left: 4),
          height: 65,
          width: 70,
          child: Center(
            child: Text(
              widget.text,
              style: const TextStyle(fontSize: 25),
            ),
          ),
          decoration: BoxDecoration(
            boxShadow:const[BoxShadow(
              blurRadius: 10,
              color: Color.fromARGB(255, 37, 255, 255)

            )] ,
            color:const Color.fromARGB(255, 5, 5, 5) ,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
