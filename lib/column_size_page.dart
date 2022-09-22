import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stepo/stepo.dart';

import 'helper.dart';

class ColumnSizePage extends StatefulWidget {
  const ColumnSizePage(
      {super.key,
      required this.rowNumber,
      required this.columnNumber,
      required this.firstMatrixControllers,
      required this.isAddition,
      required this.isMultiplication});

  final int rowNumber;
  final int columnNumber;
  final List<TextEditingController> firstMatrixControllers;
  final bool isAddition;
  final bool isMultiplication;

  @override
  State<ColumnSizePage> createState() => _ColumnSizePage();
}

class _ColumnSizePage extends State<ColumnSizePage> {
  int numberOfColumns = 1;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
        primary: Colors.deepPurple, minimumSize: const Size(200, 50));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Matrix'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Columns:',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 10),
              Stepo(
                key: UniqueKey(),
                backgroundColor: Colors.deepPurple,
                textColor: Colors.white,
                iconColor: Colors.white,
                initialCounter: 1,
                lowerBound: 1,
                upperBound: 5,
                width: 100,
                animationDuration: const Duration(milliseconds: 100),
                onIncrementClicked: (counter) {
                  numberOfColumns = numberOfColumns + 1;
                  if (numberOfColumns > 5) numberOfColumns = 5;
                },
                onDecrementClicked: (counter) {
                  numberOfColumns = numberOfColumns - 1;
                  if (numberOfColumns < 1) numberOfColumns = 1;
                },
              ),
              const SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    Helper().showSecondMatrixPage(
                        context: context,
                        numberOfRows: widget.rowNumber,
                        columnNumberFirstMatrix: widget.columnNumber,
                        numberOfColumns: numberOfColumns,
                        firstMatrixControllersFromLastPage:
                            widget.firstMatrixControllers,
                        isAddition: widget.isAddition,
                        isMultiplication: widget.isMultiplication);
                  },
                  style: style,
                  child: const Text('INPUT SECOND MATRIX')),
            ],
          ),
        ],
      ),
    );
  }
}
