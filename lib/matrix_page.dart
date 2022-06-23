import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrix_input/matrix_input.dart';

class MatrixPage extends StatefulWidget {
  const MatrixPage({super.key, required this.rowNumber, required this.columnNumber});

  final int rowNumber;
  final int columnNumber;

  @override
  State<MatrixPage> createState() => _MatrixPageState();
}

class _MatrixPageState extends State<MatrixPage> {

  List<Widget> rowElements = [];
  List<Widget> rows = [];
  double marginSize = 0;
  List<TextEditingController> controllers = [];
  final c0 = TextEditingController(text: '');
  int nr=0;
  createRow() {
    nr++;
      for(int i = 0; i < widget.columnNumber; i++) {
        rowElements.add(matrixInput());
      }
  }
   createControllers() {
     final r1c1 = TextEditingController(text: '');
     final r1c2 = TextEditingController(text: '');
     final r1c3 = TextEditingController(text: '');
     final r1c4 = TextEditingController(text: '');
     final r1c5 = TextEditingController(text: '');
     final r2c1 = TextEditingController(text: '');
     final r2c2 = TextEditingController(text: '');
     final r2c3 = TextEditingController(text: '');
     final r2c4 = TextEditingController(text: '');
     final r2c5 = TextEditingController(text: '');
     final r3c1 = TextEditingController(text: '');
     final r3c2 = TextEditingController(text: '');
     final r3c3 = TextEditingController(text: '');
     final r3c4 = TextEditingController(text: '');
     final r3c5 = TextEditingController(text: '');
     final r4c1 = TextEditingController(text: '');
     final r4c2 = TextEditingController(text: '');
     final r4c3 = TextEditingController(text: '');
     final r4c4 = TextEditingController(text: '');
     final r4c5 = TextEditingController(text: '');
     final r5c1 = TextEditingController(text: '');
     final r5c2 = TextEditingController(text: '');
     final r5c3 = TextEditingController(text: '');
     final r5c4 = TextEditingController(text: '');
     final r5c5 = TextEditingController(text: '');
     controllers.add(r1c1);
     controllers.add(r1c2);
     controllers.add(r1c3);
     controllers.add(r1c4);
     controllers.add(r1c1);
     controllers.add(r1c5);
     controllers.add(r2c1);
     controllers.add(r2c2);
     controllers.add(r2c3);
     controllers.add(r2c4);
     controllers.add(r2c5);
     controllers.add(r3c1);
     controllers.add(r3c2);
     controllers.add(r3c3);
     controllers.add(r3c4);
     controllers.add(r3c5);
     controllers.add(r4c1);
     controllers.add(r4c2);
     controllers.add(r4c3);
     controllers.add(r4c4);
     controllers.add(r4c5);
     controllers.add(r5c1);
     controllers.add(r5c2);
     controllers.add(r5c3);
     controllers.add(r5c4);
     controllers.add(r5c5);

   }
  createMatrix() {
    createRow();
    for(int i = 0; i < widget.rowNumber; i++) {
      rows.add(Row(
          children: rowElements
      ));
    }
  }



  createMarginSize(width) {
    switch(widget.columnNumber) {
      case 1: {marginSize = width*0.41;}
      break;
      case 2: {marginSize = width*0.35;;}
      break;
      case 3: {marginSize = width*0.26;;}
      break;
      case 4: {marginSize = width*0.17;;}
      break;
      case 5: {marginSize = width*0.08;;}
      break;
    }
  }

  @override
  void initState() {
    super.initState();
    createControllers();
    createMatrix();

  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        primary: Colors.deepPurple,
        minimumSize: const Size(200, 50)
    );

    double width = MediaQuery.of(context).size.width;
    createMarginSize(width);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Matrix'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: marginSize, top:30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: rows,
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
              onPressed: (){},
              style: style,
              child: const Text('REGULARITY') ),
          const SizedBox(height: 5),
          ElevatedButton(
              onPressed: (){},
              style: style,
              child: const Text('TRANSPOSITION')),
          const SizedBox(height: 5),
          ElevatedButton(
              onPressed: (){},
              style: style,
              child: const Text('INVERSE')),
          const SizedBox(height: 5),
          ElevatedButton(
              onPressed: (){},
              style: style,
              child: const Text('SCALAR MULTIPLICATION')),
          const SizedBox(height: 5),
          ElevatedButton(
              onPressed: (){},
              style: style,
              child: const Text('ADDITION')),
          const SizedBox(height: 5),
          ElevatedButton(
              onPressed: (){},
              style: style,
              child: const Text('MULTIPLICATION')),
        ],
      ),
    );
  }

  Widget matrixInput(){



    return Container(
      margin: const EdgeInsets.all(3),
      child: MatrixInput(
          matrixBorderColor: Colors.black26,
          textAlign: TextAlign.center,
          enabled: true,
          readOnly: false,
          width: 60,
          matrixController:controllers[nr],
          keyboardType: TextInputType.number,
          style: const TextStyle(
            fontSize: 25.0,
            color: Colors.blueAccent,
            fontWeight: FontWeight.bold,
          )
      ),
    );

     }
    }






