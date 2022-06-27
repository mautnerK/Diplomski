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
  int nr = -1;
  bool isButtonDisabled = true;

  @override
  void initState() {
    super.initState();
    createControllers();
    createMatrix();
    disableButton();
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
              onPressed: isButtonDisabled ? () => disableButton : null,
              style: style,
              child: const Text('REGULARITY') ),
          const SizedBox(height: 5),
          ElevatedButton(
              onPressed: isButtonDisabled ? () => disableButton : null,
              style: style,
              child: const Text('INVERSE')),
          const SizedBox(height: 5),
          ElevatedButton(
              onPressed: (){},
              style: style,
              child: const Text('TRANSPOSITION')),
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

  Widget matrixInput(int nr){
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

  createRow() {
    for(int i = 0; i < widget.columnNumber; i++) {
      nr++;
      rowElements.add(matrixInput(nr));
    }
  }

  createMatrix() {
    createRow();
    for(int i = 0; i < widget.rowNumber; i++) {
      rows.add(Row(
          children: rowElements
      ));
      rowElements = [];
      createRow();
    }

  }

  disableButton() {
    if (widget.rowNumber != widget.columnNumber) {
      isButtonDisabled = false;
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

  createControllers() {
    final controller1 = TextEditingController(text: '1');
    final controller2 = TextEditingController(text: '2');
    final controller3 = TextEditingController(text: '3');
    final controller4 = TextEditingController(text: '4');
    final controller5 = TextEditingController(text: '5');
    final controller6 = TextEditingController(text: '6');
    final controller7 = TextEditingController(text: '7');
    final controller8 = TextEditingController(text: '8');
    final controller9 = TextEditingController(text: '9');
    final controller10 = TextEditingController(text: '10');
    final controller11 = TextEditingController(text: '11');
    final controller12 = TextEditingController(text: '12');
    final controller13 = TextEditingController(text: '13');
    final controller14 = TextEditingController(text: '14');
    final controller15 = TextEditingController(text: '15');
    final controller16 = TextEditingController(text: '16');
    final controller17 = TextEditingController(text: '17');
    final controller18 = TextEditingController(text: '18');
    final controller19 = TextEditingController(text: '19');
    final controller20 = TextEditingController(text: '20');
    final controller21 = TextEditingController(text: '21');
    final controller22 = TextEditingController(text: '22');
    final controller23 = TextEditingController(text: '23');
    final controller24 = TextEditingController(text: '24');
    final controller25 = TextEditingController(text: '25');
    controllers.add(controller1);
    controllers.add(controller2);
    controllers.add(controller3);
    controllers.add(controller4);
    controllers.add(controller5);
    controllers.add(controller6);
    controllers.add(controller7);
    controllers.add(controller8);
    controllers.add(controller9);
    controllers.add(controller10);
    controllers.add(controller11);
    controllers.add(controller12);
    controllers.add(controller13);
    controllers.add(controller14);
    controllers.add(controller15);
    controllers.add(controller16);
    controllers.add(controller17);
    controllers.add(controller18);
    controllers.add(controller19);
    controllers.add(controller20);
    controllers.add(controller21);
    controllers.add(controller22);
    controllers.add(controller23);
    controllers.add(controller24);
    controllers.add(controller25);
  }
}






