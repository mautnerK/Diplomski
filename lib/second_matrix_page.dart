import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrix_input/matrix_input.dart';
import 'helper.dart';

class SecondMatrixPage extends StatefulWidget {
  SecondMatrixPage({super.key, required this.rowNumber,
    required this.columnNumberFirstMatrix, required this.columnNumber,
    required this.firstMatrixControllers, required this.isAddition,
    required this.isMultiplication});

  final int rowNumber;
  final int columnNumberFirstMatrix;
  final int columnNumber;
  final List<TextEditingController> firstMatrixControllers;
  final bool isAddition;
  final bool isMultiplication;

  @override
  State<SecondMatrixPage> createState() => _SecondMatrixPage();
}

class _SecondMatrixPage extends State<SecondMatrixPage> {
  List<Widget> rowElements = [];
  List<Widget> rows = [];
  double marginSize = 0;
  List<TextEditingController> secondMatrixControllers = [];
  int nr = -1;

  @override
  void initState() {
    super.initState();
    createControllers();
    createMatrix();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    createMarginSize(width);

    final ButtonStyle style = ElevatedButton.styleFrom(
        primary: Colors.deepPurple,
        minimumSize: const Size(200, 50)
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Second matrix'),
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
              onPressed: () {
                if (widget.isAddition) {
                  Helper().add(context, widget.rowNumber, widget.columnNumber,
                      widget.firstMatrixControllers, secondMatrixControllers);
                } else if (widget.isMultiplication) {
                  Helper().multiply(context, widget.rowNumber,
                      widget.columnNumber, widget.columnNumberFirstMatrix,
                      widget.firstMatrixControllers, secondMatrixControllers);
                }
              },
              style: style,
              child: const Text('RESULT')
          ),
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
          matrixController:secondMatrixControllers[nr],
          keyboardType: TextInputType.number,
          style: const TextStyle(
            fontSize: 15.0,
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
    if(widget.isAddition) {
      createRow();
      for(int i = 0; i < widget.rowNumber; i++) {
        rows.add(Row(
            children: rowElements
        ));
        rowElements = [];
        createRow();
      }
    } else if (widget.isMultiplication) {
      createRow();
      for(int i = 0; i < widget.columnNumberFirstMatrix; i++) {
        rows.add(Row(
            children: rowElements
        ));
        rowElements = [];
        createRow();
      }
    }
  }

  createMarginSize(width) {
    switch(widget.columnNumber) {
      case 1: {marginSize = width*0.41;}
      break;
      case 2: {marginSize = width*0.35;}
      break;
      case 3: {marginSize = width*0.26;}
      break;
      case 4: {marginSize = width*0.17;}
      break;
      case 5: {marginSize = width*0.08;}
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
    final controller26 = TextEditingController(text: '26');
    final controller27 = TextEditingController(text: '26');
    final controller28 = TextEditingController(text: '26');
    final controller29 = TextEditingController(text: '26');
    final controller30 = TextEditingController(text: '26');
    final controller31 = TextEditingController(text: '26');

    secondMatrixControllers.add(controller1);
    secondMatrixControllers.add(controller2);
    secondMatrixControllers.add(controller3);
    secondMatrixControllers.add(controller4);
    secondMatrixControllers.add(controller5);
    secondMatrixControllers.add(controller6);
    secondMatrixControllers.add(controller7);
    secondMatrixControllers.add(controller8);
    secondMatrixControllers.add(controller9);
    secondMatrixControllers.add(controller10);
    secondMatrixControllers.add(controller11);
    secondMatrixControllers.add(controller12);
    secondMatrixControllers.add(controller13);
    secondMatrixControllers.add(controller14);
    secondMatrixControllers.add(controller15);
    secondMatrixControllers.add(controller16);
    secondMatrixControllers.add(controller17);
    secondMatrixControllers.add(controller18);
    secondMatrixControllers.add(controller19);
    secondMatrixControllers.add(controller20);
    secondMatrixControllers.add(controller21);
    secondMatrixControllers.add(controller22);
    secondMatrixControllers.add(controller23);
    secondMatrixControllers.add(controller24);
    secondMatrixControllers.add(controller25);
    secondMatrixControllers.add(controller26);
    secondMatrixControllers.add(controller27);
    secondMatrixControllers.add(controller28);
    secondMatrixControllers.add(controller29);
    secondMatrixControllers.add(controller30);
    secondMatrixControllers.add(controller31);
  }
}
