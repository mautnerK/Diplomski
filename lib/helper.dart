import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:matrice/column_size_page.dart';
import 'package:matrice/home_page.dart';
import 'package:matrice/result_page.dart';
import 'package:matrice/second_matrix_page.dart';

class Helper {
  bool regular = false;
  List<TextEditingController> firstMatrixControllers = [];

  checkRegularity(int rowNumber, int columnNumber,
      List<TextEditingController> controllers) {
    double firstElement = double.parse(controllers[0].text);
    double secondElement = double.parse(controllers[1].text);
    double thirdElement = double.parse(controllers[2].text);
    double fourthElement = double.parse(controllers[3].text);
    double fifthElement = double.parse(controllers[4].text);
    double sixthElement = double.parse(controllers[5].text);
    double seventhElement = double.parse(controllers[6].text);
    double eighthElement = double.parse(controllers[7].text);
    double ninthElement = double.parse(controllers[8].text);
    double tenthElement = double.parse(controllers[9].text);
    double eleventhElement = double.parse(controllers[10].text);
    double twelfthElement = double.parse(controllers[11].text);
    double thirteenthElement = double.parse(controllers[12].text);
    double fourteenthElement = double.parse(controllers[13].text);
    double fifteenthElement = double.parse(controllers[14].text);
    double sixteenthElement = double.parse(controllers[15].text);
    double seventeenthElement = double.parse(controllers[16].text);
    double eighteenthElement = double.parse(controllers[17].text);
    double nineteenthElement = double.parse(controllers[18].text);
    double twentiethElement = double.parse(controllers[19].text);
    double twentyFirstElement = double.parse(controllers[20].text);
    double twentySecondElement = double.parse(controllers[21].text);
    double twentyThirdElement = double.parse(controllers[22].text);
    double twentyFourthElement = double.parse(controllers[23].text);
    double twentyFifthElement = double.parse(controllers[24].text);
    switch (rowNumber) {
      case 1:
        {
          if (controllers[0].text != '0') {
            showMessage("Matrix is regular");
            regular = true;
          } else {
            showMessage("Matrix is not regular");
          }
        }
        break;
      case 2:
        {
          if ((firstElement * fourthElement) - (secondElement * thirdElement) !=
              0) {
            showMessage("Matrix is regular");
            regular = true;
          } else {
            showMessage("Matrix is not regular");
          }
        }
        break;
      case 3:
        {
          if (determinant3x3(
                  firstElement,
                  secondElement,
                  thirdElement,
                  fourthElement,
                  fifthElement,
                  sixthElement,
                  seventhElement,
                  eighthElement,
                  ninthElement) !=
              0) {
            showMessage("Matrix is regular");
            regular = true;
          } else {
            showMessage("Matrix is not regular");
          }
        }
        break;
      case 4:
        {
          if (determinant4x4(
                  firstElement,
                  secondElement,
                  thirdElement,
                  fourthElement,
                  fifthElement,
                  sixthElement,
                  seventhElement,
                  eighthElement,
                  ninthElement,
                  tenthElement,
                  eleventhElement,
                  twelfthElement,
                  thirteenthElement,
                  fourteenthElement,
                  fifteenthElement,
                  sixteenthElement) !=
              0) {
            showMessage("Matrix is regular");
            regular = true;
          } else {
            showMessage("Matrix is not regular");
          }
        }
        break;
      case 5:
        {
          double determinant = determinant5x5(
              firstElement,
              secondElement,
              thirdElement,
              fourthElement,
              fifthElement,
              sixthElement,
              seventhElement,
              eighthElement,
              ninthElement,
              tenthElement,
              eleventhElement,
              twelfthElement,
              thirteenthElement,
              fourteenthElement,
              fifteenthElement,
              sixteenthElement,
              seventeenthElement,
              eighteenthElement,
              nineteenthElement,
              twentiethElement,
              twentyFirstElement,
              twentySecondElement,
              twentyThirdElement,
              twentyFourthElement,
              twentyFifthElement);
          if (determinant != 0) {
            showMessage("Matrix is regular");
            regular = true;
          } else {
            showMessage("Matrix is not regular");
          }
        }
    }
  }

  showMessage(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.deepPurple,
        textColor: Colors.white);
  }

  makeInverse(BuildContext context, int rowNumber, int columnNumber,
      List<TextEditingController> controllers) {
    List<double> result = [];
    double firstElement = double.parse(controllers[0].text);
    double secondElement = double.parse(controllers[1].text);
    double thirdElement = double.parse(controllers[2].text);
    double fourthElement = double.parse(controllers[3].text);
    double fifthElement = double.parse(controllers[4].text);
    double sixthElement = double.parse(controllers[5].text);
    double seventhElement = double.parse(controllers[6].text);
    double eighthElement = double.parse(controllers[7].text);
    double ninthElement = double.parse(controllers[8].text);
    double tenthElement = double.parse(controllers[9].text);
    double eleventhElement = double.parse(controllers[10].text);
    double twelfthElement = double.parse(controllers[11].text);
    double thirteenthElement = double.parse(controllers[12].text);
    double fourteenthElement = double.parse(controllers[13].text);
    double fifteenthElement = double.parse(controllers[14].text);
    double sixteenthElement = double.parse(controllers[15].text);
    double seventeenthElement = double.parse(controllers[16].text);
    double eighteenthElement = double.parse(controllers[17].text);
    double nineteenthElement = double.parse(controllers[18].text);
    double twentiethElement = double.parse(controllers[19].text);
    double twentyFirstElement = double.parse(controllers[20].text);
    double twentySecondElement = double.parse(controllers[21].text);
    double twentyThirdElement = double.parse(controllers[22].text);
    double twentyFourthElement = double.parse(controllers[23].text);
    double twentyFifthElement = double.parse(controllers[24].text);
    switch (rowNumber) {
      case 1:
        {
          result.add(1/firstElement);
          showResultPage(context, rowNumber, columnNumber, result);
        }
      break;
      case 2:
        {
          double determinant = determinant2x2(
              firstElement, secondElement, thirdElement, fourthElement);
          List<double> temp = [
            fourthElement,
            -secondElement,
            -thirdElement,
            firstElement
          ];
          result = scalarMultiplication2x2(
              1 / determinant, temp[0], temp[1], temp[2], temp[3]);
          showResultPage(context, rowNumber, columnNumber, result);
        }
        break;
      case 3:
        {
          double determinant = determinant3x3(
              firstElement,
              secondElement,
              thirdElement,
              fourthElement,
              fifthElement,
              sixthElement,
              seventhElement,
              eighthElement,
              ninthElement);

          List<double> temp1 = [
            determinant2x2(
                fifthElement, sixthElement, eighthElement, ninthElement),
            -determinant2x2(
                fourthElement, sixthElement, seventhElement, ninthElement),
            determinant2x2(
                fourthElement, fifthElement, seventhElement, eighthElement),
            -determinant2x2(
                secondElement, thirdElement, eighthElement, ninthElement),
            determinant2x2(
                firstElement, thirdElement, seventhElement, ninthElement),
            -determinant2x2(
                firstElement, secondElement, seventhElement, eighthElement),
            determinant2x2(
                secondElement, thirdElement, fifthElement, sixthElement),
            -determinant2x2(
                firstElement, thirdElement, fourthElement, sixthElement),
            determinant2x2(
                firstElement, secondElement, fourthElement, fifthElement)
          ];
          List<double> temp = transpone3x3(temp1);
          result = scalarMultiplication3x3(1 / determinant, temp[0], temp[1],
              temp[2], temp[3], temp[4], temp[5], temp[6], temp[7], temp[8]);
          showResultPage(context, rowNumber, columnNumber, result);
        }
        break;
      case 4:
        {
          double determinant = determinant4x4(
              firstElement,
              secondElement,
              thirdElement,
              fourthElement,
              fifthElement,
              sixthElement,
              seventhElement,
              eighthElement,
              ninthElement,
              tenthElement,
              eleventhElement,
              twelfthElement,
              thirteenthElement,
              fourteenthElement,
              fifteenthElement,
              sixteenthElement);

          List<double> temp1 = [
            determinant3x3(
                sixthElement,
                seventhElement,
                eighthElement,
                tenthElement,
                eleventhElement,
                twelfthElement,
                fourteenthElement,
                fifteenthElement,
                sixteenthElement),
            determinant3x3(
                fifthElement,
                seventhElement,
                eighthElement,
                ninthElement,
                eleventhElement,
                twelfthElement,
                thirteenthElement,
                fifteenthElement,
                sixteenthElement),
            determinant3x3(
                fifthElement,
                sixthElement,
                eighthElement,
                ninthElement,
                tenthElement,
                twelfthElement,
                thirteenthElement,
                fourteenthElement,
                sixteenthElement),
            determinant3x3(
                fifthElement,
                sixthElement,
                seventhElement,
                ninthElement,
                tenthElement,
                eleventhElement,
                thirteenthElement,
                fourteenthElement,
                fifteenthElement),
            -determinant3x3(
                secondElement,
                thirdElement,
                fourthElement,
                tenthElement,
                eleventhElement,
                twelfthElement,
                fourteenthElement,
                fifteenthElement,
                sixteenthElement),
            -determinant3x3(
                firstElement,
                thirdElement,
                fourthElement,
                ninthElement,
                eleventhElement,
                twelfthElement,
                thirteenthElement,
                fifteenthElement,
                sixteenthElement),
            -determinant3x3(
                firstElement,
                secondElement,
                fourthElement,
                ninthElement,
                tenthElement,
                twelfthElement,
                thirteenthElement,
                fourteenthElement,
                sixteenthElement),
            -determinant3x3(
                firstElement,
                secondElement,
                thirdElement,
                ninthElement,
                tenthElement,
                eleventhElement,
                thirteenthElement,
                fourteenthElement,
                fifteenthElement),
            determinant3x3(
                secondElement,
                thirdElement,
                fourthElement,
                sixthElement,
                seventhElement,
                eighthElement,
                fourteenthElement,
                fifteenthElement,
                sixteenthElement),
            determinant3x3(
                firstElement,
                thirdElement,
                fourthElement,
                fifthElement,
                seventhElement,
                eighthElement,
                thirteenthElement,
                fifteenthElement,
                sixteenthElement),
            determinant3x3(
                firstElement,
                secondElement,
                fourthElement,
                fifthElement,
                sixthElement,
                eighthElement,
                thirteenthElement,
                fourteenthElement,
                sixteenthElement),
            determinant3x3(
                firstElement,
                secondElement,
                thirdElement,
                fifthElement,
                sixthElement,
                seventhElement,
                thirteenthElement,
                fourteenthElement,
                fifteenthElement),
            -determinant3x3(
                secondElement,
                thirdElement,
                fourthElement,
                sixthElement,
                seventhElement,
                eighthElement,
                tenthElement,
                eleventhElement,
                twelfthElement),
            -determinant3x3(
                firstElement,
                thirdElement,
                fourthElement,
                fifthElement,
                seventhElement,
                eighthElement,
                ninthElement,
                eleventhElement,
                twelfthElement),
            -determinant3x3(
                firstElement,
                secondElement,
                fourthElement,
                fifthElement,
                sixthElement,
                eighthElement,
                ninthElement,
                tenthElement,
                twelfthElement),
            -determinant3x3(
                firstElement,
                secondElement,
                thirdElement,
                fifthElement,
                sixthElement,
                seventhElement,
                ninthElement,
                tenthElement,
                eleventhElement)
          ];
          List<double> temp = transpone4x4(temp1);
          result = scalarMultiplication4x4(
              1 / determinant,
              temp[0],
              temp[1],
              temp[2],
              temp[3],
              temp[4],
              temp[5],
              temp[6],
              temp[7],
              temp[8],
              temp[9],
              temp[10],
              temp[11],
              temp[12],
              temp[13],
              temp[14],
              temp[15]);
          showResultPage(context, rowNumber, columnNumber, result);
        }
        break;
      case 5:
        {
          double determinant = determinant5x5(
              firstElement,
              secondElement,
              thirdElement,
              fourthElement,
              fifthElement,
              sixthElement,
              seventhElement,
              eighthElement,
              ninthElement,
              tenthElement,
              eleventhElement,
              twelfthElement,
              thirteenthElement,
              fourteenthElement,
              fifteenthElement,
              sixteenthElement,
              seventeenthElement,
              eighteenthElement,
              nineteenthElement,
              twentiethElement,
              twentyFirstElement,
              twentySecondElement,
              twentyThirdElement,
              twentyFourthElement,
              twentyFifthElement);

          List<double> temp1 = [
            determinant4x4(
                seventhElement,
                eighthElement,
                ninthElement,
                tenthElement,
                twelfthElement,
                thirteenthElement,
                fourteenthElement,
                fifteenthElement,
                seventeenthElement,
                eighteenthElement,
                nineteenthElement,
                twentiethElement,
                twentySecondElement,
                twentyThirdElement,
                twentyFourthElement,
                twentyFifthElement),
            -determinant4x4(
                sixthElement,
                eighthElement,
                ninthElement,
                tenthElement,
                eleventhElement,
                thirteenthElement,
                fourteenthElement,
                fifteenthElement,
                sixteenthElement,
                eighteenthElement,
                nineteenthElement,
                twentiethElement,
                twentyFirstElement,
                twentyThirdElement,
                twentyFourthElement,
                twentyFifthElement),
            determinant4x4(
                sixthElement,
                seventhElement,
                ninthElement,
                tenthElement,
                eleventhElement,
                twelfthElement,
                fourteenthElement,
                fifteenthElement,
                sixteenthElement,
                seventeenthElement,
                nineteenthElement,
                twentiethElement,
                twentyFirstElement,
                twentySecondElement,
                twentyFourthElement,
                twentyFifthElement),
            -determinant4x4(
                sixthElement,
                seventhElement,
                eighthElement,
                tenthElement,
                eleventhElement,
                twelfthElement,
                thirteenthElement,
                fifteenthElement,
                sixteenthElement,
                seventeenthElement,
                eighteenthElement,
                twentiethElement,
                twentyFirstElement,
                twentySecondElement,
                twentyThirdElement,
                twentyFifthElement),
            determinant4x4(
                sixthElement,
                seventhElement,
                eighthElement,
                ninthElement,
                eleventhElement,
                twelfthElement,
                thirteenthElement,
                fourteenthElement,
                sixteenthElement,
                seventeenthElement,
                eighteenthElement,
                nineteenthElement,
                twentyFirstElement,
                twentySecondElement,
                twentyThirdElement,
                twentyFourthElement),
            -determinant4x4(
                secondElement,
                thirdElement,
                fourthElement,
                fifthElement,
                twelfthElement,
                thirteenthElement,
                fourteenthElement,
                fifteenthElement,
                seventeenthElement,
                eighteenthElement,
                nineteenthElement,
                twentiethElement,
                twentySecondElement,
                twentyThirdElement,
                twentyFourthElement,
                twentyFifthElement),
            determinant4x4(
                firstElement,
                thirdElement,
                fourthElement,
                fifthElement,
                eleventhElement,
                thirteenthElement,
                fourteenthElement,
                fifteenthElement,
                sixteenthElement,
                eighteenthElement,
                nineteenthElement,
                twentiethElement,
                twentyFirstElement,
                twentyThirdElement,
                twentyFourthElement,
                twentyFifthElement),
            -determinant4x4(
                firstElement,
                secondElement,
                fourthElement,
                fifthElement,
                eleventhElement,
                twelfthElement,
                fourteenthElement,
                fifteenthElement,
                sixteenthElement,
                seventeenthElement,
                nineteenthElement,
                twentiethElement,
                twentyFirstElement,
                twentySecondElement,
                twentyFourthElement,
                twentyFifthElement),
            determinant4x4(
                firstElement,
                secondElement,
                thirdElement,
                fifthElement,
                eleventhElement,
                twelfthElement,
                thirteenthElement,
                fifteenthElement,
                sixteenthElement,
                seventeenthElement,
                eighteenthElement,
                twentiethElement,
                twentyFirstElement,
                twentySecondElement,
                twentyThirdElement,
                twentyFifthElement),
            -determinant4x4(
                firstElement,
                secondElement,
                thirdElement,
                fourthElement,
                eleventhElement,
                twelfthElement,
                thirteenthElement,
                fourteenthElement,
                sixteenthElement,
                seventeenthElement,
                eighteenthElement,
                nineteenthElement,
                twentyFirstElement,
                twentySecondElement,
                twentyThirdElement,
                twentyFourthElement),
            determinant4x4(
                secondElement,
                thirdElement,
                fourthElement,
                fifthElement,
                seventhElement,
                eighthElement,
                ninthElement,
                tenthElement,
                seventeenthElement,
                eighteenthElement,
                nineteenthElement,
                twentiethElement,
                twentySecondElement,
                twentyThirdElement,
                twentyFourthElement,
                twentyFifthElement),
            -determinant4x4(
                firstElement,
                thirdElement,
                fourthElement,
                fifthElement,
                sixthElement,
                eighthElement,
                ninthElement,
                tenthElement,
                sixteenthElement,
                eighteenthElement,
                nineteenthElement,
                twentiethElement,
                twentyFirstElement,
                twentyThirdElement,
                twentyFourthElement,
                twentyFifthElement),
            determinant4x4(
                firstElement,
                secondElement,
                fourthElement,
                fifthElement,
                sixthElement,
                seventhElement,
                ninthElement,
                tenthElement,
                sixteenthElement,
                seventeenthElement,
                nineteenthElement,
                twentiethElement,
                twentyFirstElement,
                twentySecondElement,
                twentyFourthElement,
                twentyFifthElement),
            -determinant4x4(
                firstElement,
                secondElement,
                thirdElement,
                fifthElement,
                sixthElement,
                seventhElement,
                eighthElement,
                tenthElement,
                sixteenthElement,
                seventeenthElement,
                eighteenthElement,
                twentiethElement,
                twentyFirstElement,
                twentySecondElement,
                twentyThirdElement,
                twentyFifthElement),
            determinant4x4(
                firstElement,
                secondElement,
                thirdElement,
                fourthElement,
                sixthElement,
                seventhElement,
                eighthElement,
                ninthElement,
                sixteenthElement,
                seventeenthElement,
                eighteenthElement,
                nineteenthElement,
                twentyFirstElement,
                twentySecondElement,
                twentyThirdElement,
                twentyFourthElement),
            -determinant4x4(
                secondElement,
                thirdElement,
                fourthElement,
                fifthElement,
                seventhElement,
                eighthElement,
                ninthElement,
                tenthElement,
                twelfthElement,
                thirteenthElement,
                fourteenthElement,
                fifteenthElement,
                twentySecondElement,
                twentyThirdElement,
                twentyFourthElement,
                twentyFifthElement),
            determinant4x4(
                firstElement,
                thirdElement,
                fourthElement,
                fifthElement,
                sixthElement,
                eighthElement,
                ninthElement,
                tenthElement,
                eleventhElement,
                thirteenthElement,
                fourteenthElement,
                fifteenthElement,
                twentyFirstElement,
                twentyThirdElement,
                twentyFourthElement,
                twentyFifthElement),
            -determinant4x4(
                firstElement,
                secondElement,
                fourthElement,
                fifthElement,
                sixthElement,
                seventhElement,
                ninthElement,
                tenthElement,
                eleventhElement,
                twelfthElement,
                fourteenthElement,
                fifteenthElement,
                twentyFirstElement,
                twentySecondElement,
                twentyFourthElement,
                twentyFifthElement),
            determinant4x4(
                firstElement,
                secondElement,
                thirdElement,
                fifthElement,
                sixthElement,
                seventhElement,
                eighthElement,
                tenthElement,
                eleventhElement,
                twelfthElement,
                thirteenthElement,
                fifteenthElement,
                twentyFirstElement,
                twentySecondElement,
                twentyThirdElement,
                twentyFifthElement),
            -determinant4x4(
                firstElement,
                secondElement,
                thirdElement,
                fourthElement,
                sixthElement,
                seventhElement,
                eighthElement,
                ninthElement,
                eleventhElement,
                twelfthElement,
                thirteenthElement,
                fourteenthElement,
                twentyFirstElement,
                twentySecondElement,
                twentyThirdElement,
                twentyFourthElement),
            determinant4x4(
                secondElement,
                thirdElement,
                fourthElement,
                fifthElement,
                seventhElement,
                eighthElement,
                ninthElement,
                tenthElement,
                twelfthElement,
                thirteenthElement,
                fourteenthElement,
                fifteenthElement,
                seventeenthElement,
                eighteenthElement,
                nineteenthElement,
                twentiethElement),
            -determinant4x4(
                firstElement,
                thirdElement,
                fourthElement,
                fifthElement,
                sixthElement,
                eighthElement,
                ninthElement,
                tenthElement,
                eleventhElement,
                thirteenthElement,
                fourteenthElement,
                fifteenthElement,
                sixteenthElement,
                eighteenthElement,
                nineteenthElement,
                twentiethElement),
            determinant4x4(
                firstElement,
                secondElement,
                fourthElement,
                fifthElement,
                sixthElement,
                seventhElement,
                ninthElement,
                tenthElement,
                eleventhElement,
                twelfthElement,
                fourteenthElement,
                fifteenthElement,
                sixteenthElement,
                seventeenthElement,
                nineteenthElement,
                twentiethElement),
            -determinant4x4(
                firstElement,
                secondElement,
                thirdElement,
                fifthElement,
                sixthElement,
                seventhElement,
                eighthElement,
                tenthElement,
                eleventhElement,
                twelfthElement,
                thirteenthElement,
                fifteenthElement,
                sixteenthElement,
                seventeenthElement,
                eighteenthElement,
                twentiethElement),
            determinant4x4(
                firstElement,
                secondElement,
                thirdElement,
                fourthElement,
                sixthElement,
                seventhElement,
                eighthElement,
                ninthElement,
                eleventhElement,
                twelfthElement,
                thirteenthElement,
                fourteenthElement,
                sixteenthElement,
                seventeenthElement,
                eighteenthElement,
                nineteenthElement)
          ];
          List<double> temp = transpone5x5(temp1);
          result = scalarMultiplication5x5(
              1 / determinant,
              temp[0],
              temp[1],
              temp[2],
              temp[3],
              temp[4],
              temp[5],
              temp[6],
              temp[7],
              temp[8],
              temp[9],
              temp[10],
              temp[11],
              temp[12],
              temp[13],
              temp[14],
              temp[15],
              temp[16],
              temp[17],
              temp[18],
              temp[19],
              temp[20],
              temp[21],
              temp[22],
              temp[23],
              temp[24]);
          showResultPage(context, rowNumber, columnNumber, result);
        }
        break;
    }
  }

  makeTransposition(BuildContext context, int rowNumber, int columnNumber,
      List<TextEditingController> controllers) {
    List<double> result = [];
    result = transpone(rowNumber, columnNumber, controllers);
    showResultPage(context, columnNumber, rowNumber, result);
  }

  multiplyWithScalar(double scalar, BuildContext context, int rowNumber,
      int columnNumber, List<TextEditingController> controllers) {
    List<double> result = [];
    for (int i = 0; i < controllers.length; i++) {
      result.add(double.parse(controllers[i].text) * scalar);
    }
    showResultPage(context, rowNumber, columnNumber, result);
  }

  add(
      BuildContext context,
      int rowNumber,
      int columnNumber,
      List<TextEditingController> firstMatrixControllers,
      List<TextEditingController> secondMatrixControllers) {
    List<double> result = [];
    for (int i = 0; i < firstMatrixControllers.length; i++) {
      result.add(double.parse(firstMatrixControllers[i].text) +
          double.parse(secondMatrixControllers[i].text));
    }
    showResultPage(context, rowNumber, columnNumber, result);
  }

  multiply(
      BuildContext context,
      int rowNumber,
      int columnNumber,
      int columnNumberFirstMatrix,
      List<TextEditingController> firstMatrixControllers,
      List<TextEditingController> secondMatrixControllers) {
    List<double> result = [];
    List<double> secondMatrixTransponed =
        transpone(columnNumberFirstMatrix, columnNumber, secondMatrixControllers);
    int j = 0;
    int temp2 = 0;
    int accumulation = 0;
    if (rowNumber >= columnNumberFirstMatrix) {
      accumulation = columnNumberFirstMatrix;
    } else {
      accumulation = columnNumberFirstMatrix;
    }
    for (int m = 0; m < rowNumber; m++) {
      int k = 0;
      for (int i = 0; i < columnNumber; i++) {
        double temp = 0;
        for (j = temp2; j < accumulation; j++) {
          temp += double.parse(firstMatrixControllers[j].text) *
              secondMatrixTransponed[k];
          k++;
        }
        result.add(temp);
      }
      k = 0;
      temp2 += columnNumberFirstMatrix;
      accumulation += columnNumberFirstMatrix;
    }
    showResultPage(context, rowNumber, columnNumber, result);
  }

  showResultPage(
      BuildContext context, int numberOfRows, int numberOfColumns, result) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ResultPage(
                rowNumber: numberOfRows,
                columnNumber: numberOfColumns,
                result: result)));
  }

  showSecondMatrixPage(
      {required BuildContext context,
      required int numberOfRows,
      required int numberOfColumns,
      required int columnNumberFirstMatrix,
      required List<TextEditingController> firstMatrixControllersFromLastPage,
      required bool isAddition,
      required bool isMultiplication}) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SecondMatrixPage(
                rowNumber: numberOfRows,
                columnNumber: numberOfColumns,
                columnNumberFirstMatrix: columnNumberFirstMatrix,
                firstMatrixControllers: firstMatrixControllersFromLastPage,
                isAddition: isAddition,
                isMultiplication: isMultiplication)));
  }

  showColumnSizePage(
      BuildContext context,
      int numberOfRows,
      int numberOfColumns,
      List<TextEditingController> firstMatrixControllersFromLastPage,
      bool isAddition,
      bool isMultiplication) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ColumnSizePage(
                rowNumber: numberOfRows,
                columnNumber: numberOfColumns,
                firstMatrixControllers: firstMatrixControllersFromLastPage,
                isAddition: isAddition,
                isMultiplication: isMultiplication)));
  }

  double determinant2x2(double firstElement, double secondElement,
      double thirdElement, double fourthElement) {
    double determinant =
        (firstElement * fourthElement) - (secondElement * thirdElement);
    return determinant;
  }

  List<double> transpone(int rowNumber, int columnNumber,
      List<TextEditingController> controllers) {
    List<double> result = [];
    for (int i = 0; i < columnNumber; i++) {
      for (int j = 0; j < rowNumber * columnNumber; j += columnNumber) {
        result.add(double.parse(controllers[i + j].text));
      }
    }
    return result;
  }

  List<double> transpone3x3(List<double> matrix) {
    List<double> result = [
      matrix[0],
      matrix[3],
      matrix[6],
      matrix[1],
      matrix[4],
      matrix[7],
      matrix[2],
      matrix[5],
      matrix[8]
    ];
    return result;
  }

  List<double> transpone2x2(List<double> matrix) {
    List<double> result = [matrix[0], matrix[2], matrix[1], matrix[3]];
    return result;
  }

  List<double> transpone4x4(List<double> matrix) {
    List<double> result = [
      matrix[0],
      matrix[4],
      matrix[8],
      matrix[12],
      matrix[1],
      matrix[5],
      matrix[9],
      matrix[13],
      matrix[2],
      matrix[6],
      matrix[10],
      matrix[14],
      matrix[3],
      matrix[7],
      matrix[11],
      matrix[15]
    ];
    return result;
  }

  List<double> transpone5x5(List<double> matrix) {
    List<double> result = [
      matrix[0],
      matrix[5],
      matrix[10],
      matrix[15],
      matrix[20],
      matrix[1],
      matrix[6],
      matrix[11],
      matrix[16],
      matrix[21],
      matrix[2],
      matrix[7],
      matrix[12],
      matrix[17],
      matrix[22],
      matrix[3],
      matrix[8],
      matrix[13],
      matrix[18],
      matrix[23],
      matrix[4],
      matrix[9],
      matrix[14],
      matrix[19],
      matrix[24]
    ];
    return result;
  }

  double determinant3x3(
      double firstElement,
      double secondElement,
      double thirdElement,
      double fourthElement,
      double fifthElement,
      double sixthElement,
      double seventhElement,
      double eighthElement,
      double ninthElement) {
    double determinant = (firstElement *
            ((fifthElement * ninthElement) - (sixthElement * eighthElement)) -
        secondElement *
            ((fourthElement * ninthElement) - (sixthElement * seventhElement)) +
        thirdElement *
            ((fourthElement * eighthElement) -
                (fifthElement * seventhElement)));
    return determinant;
  }

  double determinant4x4(
      double firstElement,
      double secondElement,
      double thirdElement,
      double fourthElement,
      double fifthElement,
      double sixthElement,
      double seventhElement,
      double eighthElement,
      double ninthElement,
      double tenthElement,
      double eleventhElement,
      double twelfthElement,
      double thirteenthElement,
      double fourteenthElement,
      double fifteenthElement,
      double sixteenthElement) {
    double determinant = firstElement *
            determinant3x3(
                sixthElement,
                seventhElement,
                eighthElement,
                tenthElement,
                eleventhElement,
                twelfthElement,
                fourteenthElement,
                fifteenthElement,
                sixteenthElement) -
        secondElement *
            determinant3x3(
                fifthElement,
                seventhElement,
                eighthElement,
                ninthElement,
                eleventhElement,
                twelfthElement,
                thirteenthElement,
                fifteenthElement,
                sixteenthElement) +
        thirdElement *
            determinant3x3(
                fifthElement,
                sixthElement,
                eighthElement,
                ninthElement,
                tenthElement,
                twelfthElement,
                thirteenthElement,
                fourteenthElement,
                sixteenthElement) -
        fourthElement *
            determinant3x3(
                fifthElement,
                sixthElement,
                seventhElement,
                ninthElement,
                tenthElement,
                eleventhElement,
                thirteenthElement,
                fourteenthElement,
                fifteenthElement);

    return determinant;
  }

  double determinant5x5(
      double firstElement,
      double secondElement,
      double thirdElement,
      double fourthElement,
      double fifthElement,
      double sixthElement,
      double seventhElement,
      double eighthElement,
      double ninthElement,
      double tenthElement,
      double eleventhElement,
      double twelfthElement,
      double thirteenthElement,
      double fourteenthElement,
      double fifteenthElement,
      double sixteenthElement,
      double seventeenthElement,
      double eighteenthElement,
      double nineteenthElement,
      double twentiethElement,
      double twentyFirstElement,
      double twentySecondElement,
      double twentyThirdElement,
      double twentyFourthElement,
      double twentyFifthElement) {
    double determinant = firstElement *
            determinant4x4(
                seventhElement,
                eighthElement,
                ninthElement,
                tenthElement,
                twelfthElement,
                thirteenthElement,
                fourteenthElement,
                fifteenthElement,
                seventeenthElement,
                eighteenthElement,
                nineteenthElement,
                twentiethElement,
                twentySecondElement,
                twentyThirdElement,
                twentyFourthElement,
                twentyFifthElement) -
        secondElement *
            determinant4x4(
                sixthElement,
                eighthElement,
                ninthElement,
                tenthElement,
                eleventhElement,
                thirteenthElement,
                fourteenthElement,
                fifteenthElement,
                sixteenthElement,
                eighteenthElement,
                nineteenthElement,
                twentiethElement,
                twentyFirstElement,
                twentyThirdElement,
                twentyFourthElement,
                twentyFifthElement) +
        thirdElement *
            determinant4x4(
                sixthElement,
                seventhElement,
                ninthElement,
                tenthElement,
                eleventhElement,
                twelfthElement,
                fourteenthElement,
                fifteenthElement,
                sixteenthElement,
                seventeenthElement,
                nineteenthElement,
                twentiethElement,
                twentyFirstElement,
                twentySecondElement,
                twentyFourthElement,
                twentyFifthElement) -
        fourthElement *
            determinant4x4(
                sixthElement,
                seventhElement,
                eighthElement,
                tenthElement,
                eleventhElement,
                twelfthElement,
                thirteenthElement,
                fifteenthElement,
                sixteenthElement,
                seventeenthElement,
                eighteenthElement,
                twentiethElement,
                twentyFirstElement,
                twentySecondElement,
                twentyThirdElement,
                twentyFifthElement) +
        fifthElement * determinant4x4(sixthElement, seventhElement, eighthElement, ninthElement, eleventhElement, twelfthElement, thirteenthElement, fourteenthElement, sixteenthElement, seventeenthElement, eighteenthElement, nineteenthElement, twentyFirstElement, twentySecondElement, twentyThirdElement, twentyFourthElement);
    return determinant;
  }

  double scalarMultiplication(double scalar, double firstElement) {
    return scalar * firstElement;
  }

  List<double> scalarMultiplication2x2(double scalar, double firstElement,
      double secondElement, double thirdElement, double fourthElement) {
    List<double> result = [];
    result.add(scalar * firstElement);
    result.add(scalar * secondElement);
    result.add(scalar * thirdElement);
    result.add(scalar * fourthElement);
    return result;
  }

  List<double> scalarMultiplication3x3(
      double scalar,
      double firstElement,
      double secondElement,
      double thirdElement,
      double fourthElement,
      double fifthElement,
      double sixthElement,
      double seventhElement,
      double eighthElement,
      double ninthElement) {
    List<double> result = [];
    result.add(scalar * firstElement);
    result.add(scalar * secondElement);
    result.add(scalar * thirdElement);
    result.add(scalar * fourthElement);
    result.add(scalar * fifthElement);
    result.add(scalar * sixthElement);
    result.add(scalar * seventhElement);
    result.add(scalar * eighthElement);
    result.add(scalar * ninthElement);

    return result;
  }

  List<double> scalarMultiplication4x4(
      double scalar,
      double firstElement,
      double secondElement,
      double thirdElement,
      double fourthElement,
      double fifthElement,
      double sixthElement,
      double seventhElement,
      double eighthElement,
      double ninthElement,
      double tenthElement,
      double eleventhElement,
      double twelfthElement,
      double thirteenthElement,
      double fourteenthElement,
      double fifteenthElement,
      double sixteenthElement) {
    List<double> result = [];
    result.add(scalar * firstElement);
    result.add(scalar * secondElement);
    result.add(scalar * thirdElement);
    result.add(scalar * fourthElement);
    result.add(scalar * fifthElement);
    result.add(scalar * sixthElement);
    result.add(scalar * seventhElement);
    result.add(scalar * eighthElement);
    result.add(scalar * ninthElement);
    result.add(scalar * tenthElement);
    result.add(scalar * eleventhElement);
    result.add(scalar * twelfthElement);
    result.add(scalar * thirteenthElement);
    result.add(scalar * fourteenthElement);
    result.add(scalar * fifteenthElement);
    result.add(scalar * sixteenthElement);
    return result;
  }

  List<double> scalarMultiplication5x5(
      double scalar,
      double firstElement,
      double secondElement,
      double thirdElement,
      double fourthElement,
      double fifthElement,
      double sixthElement,
      double seventhElement,
      double eighthElement,
      double ninthElement,
      double tenthElement,
      double eleventhElement,
      double twelfthElement,
      double thirteenthElement,
      double fourteenthElement,
      double fifteenthElement,
      double sixteenthElement,
      double seventeenthElement,
      double eighteenthElement,
      double nineteenthElement,
      double twentiethElement,
      double twentyFirstElement,
      double twentySecondElement,
      double twentyThirdElement,
      double twentyFourthElement,
      double twentyFifthElement) {
    List<double> result = [];
    result.add(scalar * firstElement);
    result.add(scalar * secondElement);
    result.add(scalar * thirdElement);
    result.add(scalar * fourthElement);
    result.add(scalar * fifthElement);
    result.add(scalar * sixthElement);
    result.add(scalar * seventhElement);
    result.add(scalar * eighthElement);
    result.add(scalar * ninthElement);
    result.add(scalar * tenthElement);
    result.add(scalar * eleventhElement);
    result.add(scalar * twelfthElement);
    result.add(scalar * thirteenthElement);
    result.add(scalar * fourteenthElement);
    result.add(scalar * fifteenthElement);
    result.add(scalar * sixteenthElement);
    result.add(scalar * seventeenthElement);
    result.add(scalar * eighteenthElement);
    result.add(scalar * nineteenthElement);
    result.add(scalar * twentiethElement);
    result.add(scalar * twentyFirstElement);
    result.add(scalar * twentySecondElement);
    result.add(scalar * twentyThirdElement);
    result.add(scalar * twentyFourthElement);
    result.add(scalar * twentyFifthElement);
    return result;
  }
}
