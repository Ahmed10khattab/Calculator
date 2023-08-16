
  import 'package:calculator/customBotton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  double num1 = 0;
  double num2 = 0;
  String history = '';
  String expretion = '';
  String operator = '';
  OnClick(String NumBton) {
    if (NumBton == 'AC') {
      setState(() {
        expretion = '';
        history = '';
      });
      num1 = 0;
      num2 = 0;
    }

    else if (NumBton == 'C') {
      setState(() {
        expretion = '';
      });
    }

    else if (NumBton == '%' ||
        NumBton == '+' ||
        NumBton == '-' ||
        NumBton == '*' ||
        NumBton == '/') {
      operator = NumBton;

      num1 = double.parse(expretion);
      setState(() {
        expretion = '';
        history = num1.toString();
        history += NumBton;
      });
    }
    else if (NumBton == '.') {
      if (expretion.contains('.')) {
      } else {
        expretion += NumBton;
      }
    }

    else if (NumBton == '=') {
      num2 = double.parse(expretion);

      history += expretion;

       switch (operator) {
         case '+':{

           expretion = (num1 + num2).toString();
         }
           
           break;

           case '-':{

           expretion = (num1 - num2).toString();
         }
           
           break;

           case '*':{

           expretion = (num1 * num2).toString();
         }
           
           break;
           case '/':{

           expretion = (num1 / num2).toString();
         }
           
           break;
 // ignore: no_duplicate_case_values
 case '/' :{

       expretion=num1==0?'':(num1 / num2).toString();
         }
           
           break;

           case '%':{

           expretion = (num1 % num2).toString();
         }
           
           break;
         default:
       }

      setState(() {});
    } else {
      setState(() {
        expretion+= NumBton;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:200,
        shadowColor:  Color.fromARGB(255, 37, 255, 255)   ,
        title: const Text('calculator'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment:CrossAxisAlignment.end ,
        children: [
          
          Padding(
            padding: const EdgeInsets.only(bottom:10,right: 10),
            child: Text(
              history,
              style:const TextStyle(fontSize: 25,fontWeight:FontWeight.w200 ),
               
            ),
          ),
          const Divider(
            height: 3,
            thickness: 3,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
              bottom:5,right: 5),
            child: Text(
              expretion,
              style:const TextStyle(fontSize: 30,fontWeight:FontWeight.w400 ),
             
            ),
          ),
          Row(
            children: [
              Botton(
                function: OnClick,
                text: "AC",
                color: Colors.amberAccent,
              ),
              Botton(
                function: OnClick,
                text: "C",
                color: Colors.amberAccent,
              ),
              Botton(
                function: OnClick,
                text: "%",
                color: Colors.amberAccent,
              ),
              Botton(
                function: OnClick,
                flix: 2,
                text: "*",
                color: Colors.amberAccent,
              )
            ],
          ),
          Row(
            children: [
              Botton(
                function: OnClick,
                text: "7",
                color: Colors.amberAccent,
              ),
              Botton(
                function: OnClick,
                text: "8",
                color: Colors.amberAccent,
              ),
              Botton(
                function: OnClick,
                text: "9",
                color: Colors.amberAccent,
              ),
              Botton(
                function: OnClick,
                flix: 2,
                text: "/",
                color: Colors.amberAccent,
              )
            ],
          ),
          Row(
            children: [
              Botton(
                function: OnClick,
                text: "4",
                color: Colors.amberAccent,
              ),
              Botton(
                function: OnClick,
                text: "5",
                color: Colors.amberAccent,
              ),
              Botton(
                function: OnClick,
                text: "6",
                color: Colors.amberAccent,
              ),
              Botton(
                function: OnClick,
                flix: 2,
                text: "+",
                color: Colors.amberAccent,
              )
            ],
          ),
          Row(
            children: [
              Botton(
                function: OnClick,
                text: "1",
                color: Colors.amberAccent,
              ),
              Botton(
                function: OnClick,
                text: "2",
                color: Colors.amberAccent,
              ),
              Botton(
                function: OnClick,
                text: "3",
                color: Colors.amberAccent,
              ),
              Botton(
                function: OnClick,
                flix: 2,
                text: "-",
                color: Colors.amberAccent,
              )
            ],
          ),
           Row(
            children: [
              Botton(
                function: OnClick,
                text: "0",
                color: Colors.amberAccent,
              ),
              Botton(
                function: OnClick,
                text: ".",
                color: Colors.amberAccent,
              ),
              Botton(
                flix: 3,
                function: OnClick,
                text: "=",
                color: Colors.amberAccent,
              ),

            ],
          ),
        ],
      ),
    );
  }
}
