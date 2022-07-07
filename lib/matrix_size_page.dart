import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrice/home_page.dart';
import 'package:stepo/stepo.dart';

class MatrixSizePage extends StatefulWidget {
  const MatrixSizePage({Key? key}) : super(key: key);

  @override
  State<MatrixSizePage> createState() => _MatrixSizePageState();
}

class _MatrixSizePageState extends State<MatrixSizePage> {
  int numberOfRows = 1;
  int numberOfColumns = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Matrix calculator'),
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
                'Rows:',
                style: Theme.of(context).textTheme.headline6,
              ),
              const SizedBox(height: 10),
              Stepo(
                key: UniqueKey(),
                backgroundColor: Colors.deepPurple,
                textColor: Colors.white,
                iconColor: Colors.white,
                initialCounter:	1,
                lowerBound: 1,
                upperBound: 5,
                width:100,
                animationDuration: const Duration(milliseconds: 100),
                onIncrementClicked: (counter) {
                  numberOfRows = numberOfRows + 1;
                  if (numberOfRows > 5) numberOfRows = 5;
                  },
                onDecrementClicked: (counter) {
                  numberOfRows = numberOfRows - 1;
                  if (numberOfRows < 1) numberOfRows = 1;
                },
              ),
              const SizedBox(height: 200),
            ],
          ),
          const SizedBox(width: 40),
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
                initialCounter:	1,
                lowerBound: 1,
                upperBound: 5,
                width:100,
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
              const SizedBox(height: 200),
            ],
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.all(15),
        child: FloatingActionButton(
          backgroundColor: Colors.deepPurple,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>  HomePage(rowNumber: numberOfRows,
                        columnNumber: numberOfColumns)
                ));
          },
          child: const Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }
}
