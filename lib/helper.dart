import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:matrice/result_page.dart';

class Helper {
  bool regular = false;

  checkRegularity(int rowNumber, int columnNumber,  List<TextEditingController> controllers) {
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
    switch(rowNumber) {
      case 1: {
        if(controllers[0].text != '0'){
          showMessage("Matrix is regular");
          regular = true;
        }
        else{
          showMessage("Matrix is not regular");
        }
      }
      break;
      case 2: {

        if(
        (firstElement * fourthElement)-(secondElement * thirdElement) != 0
        ){
          showMessage("Matrix is regular");
          regular = true;
        }
        else{
          showMessage("Matrix is not regular");
        }
      }
      break;
      case 3: {

        if( determinant3x3(firstElement, secondElement, thirdElement, fourthElement, fifthElement,
             sixthElement, seventhElement, eighthElement, ninthElement) != 0
        ){
          showMessage("Matrix is regular");
          regular = true;
        }
        else{
          showMessage("Matrix is not regular");
        }
      }
      break;
      case 4: {

       if(determinant4x4(firstElement, secondElement, thirdElement,
            fourthElement, fifthElement, sixthElement, seventhElement,
            eighthElement, ninthElement, tenthElement, eleventhElement,
            twelfthElement, thirteenthElement, fourteenthElement,
            fifteenthElement, sixteenthElement) != 0){
            showMessage("Matrix is regular");
            regular = true;
       }
        else{
         showMessage("Matrix is not regular");
       }
      }
      break;
      case 5: {

        double determinant = determinant5x5(firstElement, secondElement,
            thirdElement, fourthElement, fifthElement, sixthElement,
            seventhElement, eighthElement, ninthElement, tenthElement,
            eleventhElement, twelfthElement, thirteenthElement,
            fourteenthElement, fifteenthElement, sixteenthElement,
            seventeenthElement, eighteenthElement, nineteenthElement,
            twentiethElement, twentyFirstElement, twentySecondElement,
            twentyThirdElement, twentyFourthElement, twentyFifthElement);
        if(determinant != 0){
          showMessage("Matrix is regular");
          regular = true;
        }
        else{
          showMessage("Matrix is not regular");
        }
      }
    }
  }

  showMessage (String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        backgroundColor: Colors.deepPurple,
        textColor: Colors.white
    );
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
    switch(rowNumber) {
      case 2: {
        double determinant = determinant2x2(firstElement, secondElement,
            thirdElement, fourthElement);
        List<double> temp = [fourthElement, -secondElement, -thirdElement,
          firstElement];
        result = scalarMultiplication2x2(1/determinant, temp[0], temp[1],
            temp[2], temp[3]);
       showPage(context, rowNumber, columnNumber, result);
      }
      break;
      case 3: {
        double determinant = determinant3x3(firstElement, secondElement,
            thirdElement, fourthElement, fifthElement, sixthElement,
            seventhElement, eighthElement, ninthElement);

        List<double> temp1 = [determinant2x2(fifthElement, sixthElement, eighthElement, ninthElement),
        -determinant2x2(fourthElement, sixthElement, seventhElement, ninthElement),
        -determinant2x2(fourthElement, fifthElement, seventhElement, eighthElement),
        -determinant2x2(secondElement, thirdElement, eighthElement, ninthElement),
          determinant2x2(firstElement, thirdElement, seventhElement, ninthElement),
          -determinant2x2(firstElement, secondElement, seventhElement, eighthElement),
          determinant2x2(secondElement, thirdElement, fifthElement, sixthElement),
          -determinant2x2(firstElement, thirdElement, fourthElement, sixthElement),
          determinant2x2(firstElement, secondElement, fourthElement, fifthElement)];
       List<double> temp=transpone3x3(temp1);
        result = scalarMultiplication3x3(1/determinant,temp[0], temp[1], temp[2], temp[3], temp[4], temp[5], temp[6], temp[7], temp[8]);
        showPage(context, rowNumber, columnNumber, result);
      }
    }
  }

  makeTransposition(BuildContext context, int rowNumber, int columnNumber,
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
    switch(rowNumber) {
      case 2: {
        List<double> temp = [firstElement,secondElement,thirdElement,fourthElement];
        result = transpone2x2(temp);
        showPage(context, rowNumber, columnNumber, result);
      }
      break;
      case 3: {
        List<double> temp = [firstElement,secondElement,thirdElement,
          fourthElement,fifthElement,sixthElement,seventhElement,eighthElement,
          ninthElement];
        result = transpone3x3(temp);
        showPage(context, rowNumber, columnNumber, result);
      }
      break;
      case 4: {
        List<double> temp = [firstElement,secondElement,thirdElement,
          fourthElement,fifthElement,sixthElement,seventhElement,eighthElement,
          ninthElement, tenthElement, eleventhElement, twelfthElement,
          thirteenthElement, fourteenthElement,fifteenthElement, sixteenthElement];
        result = transpone4x4(temp);
        showPage(context, rowNumber, columnNumber, result);
      }
      break;
      case 5:{
        List<double> temp = [firstElement,secondElement,thirdElement,
          fourthElement,fifthElement,sixthElement,seventhElement,eighthElement,
          ninthElement, tenthElement, eleventhElement, twelfthElement,
          thirteenthElement, fourteenthElement,fifteenthElement, sixteenthElement,
          seventeenthElement, eighteenthElement, nineteenthElement,
          twentiethElement, twentyFirstElement, twentySecondElement,
          twentyThirdElement, twentyFourthElement, twentyFifthElement];
        result = transpone5x5(temp);
        showPage(context, rowNumber, columnNumber, result);
      }
      }
  }

  multiplyWithScalar(double scalar, BuildContext context, int rowNumber, int columnNumber,
      List<TextEditingController> controllers) {
    List<double> result = [];
    for(int i = 0; i < controllers.length; i++){
      result.add(double.parse(controllers[i].text) * scalar);
    }
    showPage(context, rowNumber, columnNumber, result);
  }

  add() {}

  multiply() {}

  showPage(BuildContext context, int numberOfRows, int numberOfColumns, result){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => ResultPage(rowNumber: numberOfRows,
                columnNumber: numberOfColumns, result: result)
        ));
  }

  double determinant2x2(double firstElement, double secondElement,
      double thirdElement, double fourthElement){
    double determinant = (firstElement * fourthElement) -
        (secondElement * thirdElement) ;
    return determinant;
  }

  List<double> transpone3x3(List<double> matrix){
    List<double>result=[matrix[0], matrix[3], matrix[6], matrix[1], matrix[4],
      matrix[7], matrix[2], matrix[5], matrix[8] ];
    return result;
  }
  List<double> transpone2x2(List<double> matrix){
    List<double>result=[matrix[0], matrix[2], matrix[1], matrix[3] ];
    return result;
  }
  List<double> transpone4x4(List<double> matrix){
    List<double>result=[matrix[0], matrix[4], matrix[8], matrix[12], matrix[1],
      matrix[5], matrix[9], matrix[13], matrix[2], matrix[6],
      matrix[10], matrix[14], matrix[3], matrix[7], matrix[11], matrix[15]];
    return result;
  }
  List<double> transpone5x5(List<double> matrix){
    List<double>result=[matrix[0], matrix[5], matrix[10], matrix[15], matrix[20],
      matrix[1], matrix[6], matrix[11], matrix[16], matrix[21],
      matrix[2], matrix[7], matrix[12], matrix[17], matrix[22], matrix[3],
      matrix[8], matrix[13], matrix[18], matrix[23], matrix[4], matrix[9],
      matrix[14], matrix[19], matrix[24]];
    return result;
  }

 double determinant3x3( double firstElement, double secondElement,
     double thirdElement, double fourthElement, double fifthElement,
     double sixthElement, double seventhElement, double eighthElement,
     double ninthElement ){
    double determinant = (firstElement * ( (fifthElement * ninthElement) -
        (sixthElement * eighthElement) ) - secondElement *
        ((fourthElement * ninthElement) - (sixthElement * seventhElement)) +
        thirdElement * ((fourthElement * eighthElement) -
        (fifthElement * seventhElement)));
    return determinant;
}

 double determinant4x4(double firstElement, double secondElement,
     double thirdElement,  double fourthElement, double fifthElement,
     double sixthElement,  double seventhElement, double eighthElement,
     double ninthElement,  double tenthElement, double eleventhElement,
     double twelfthElement,  double thirteenthElement, double fourteenthElement,
     double fifteenthElement, double sixteenthElement){

    double determinant = firstElement * determinant3x3(sixthElement,
        seventhElement, eighthElement, tenthElement, eleventhElement,
        twelfthElement, fourteenthElement, fifteenthElement, sixteenthElement) -
        secondElement * determinant3x3(fifthElement, seventhElement,
        eighthElement, ninthElement, eleventhElement, twelfthElement,
        thirteenthElement, fifteenthElement, sixteenthElement) + thirdElement *
        determinant3x3(fifthElement, sixthElement, eighthElement, ninthElement,
        tenthElement, twelfthElement, thirteenthElement, fourteenthElement,
        sixteenthElement) - fourthElement * determinant3x3(fifthElement,
        sixthElement, seventhElement, ninthElement, tenthElement,
        eleventhElement, thirteenthElement, fourteenthElement,
        fifteenthElement);

    return determinant;
 }
 double determinant5x5(double firstElement, double secondElement,
     double thirdElement,  double fourthElement, double fifthElement,
     double sixthElement,  double seventhElement, double eighthElement,
     double ninthElement,  double tenthElement, double eleventhElement,
     double twelfthElement,  double thirteenthElement, double fourteenthElement,
     double fifteenthElement, double sixteenthElement,
     double seventeenthElement, double eighteenthElement,
     double nineteenthElement, double twentiethElement,
     double twentyFirstElement, double twentySecondElement,
     double twentyThirdElement, double twentyFourthElement,
     double twentyFifthElement ){

    double determinant = firstElement * determinant4x4(seventhElement,
        eighthElement, ninthElement, tenthElement, twelfthElement,
        thirteenthElement, fourteenthElement, fifteenthElement,
        seventeenthElement, eighteenthElement, nineteenthElement,
        twentiethElement, twentySecondElement, twentyThirdElement,
        twentyFourthElement, twentyFifthElement) - secondElement *
   determinant4x4(sixthElement, eighthElement, ninthElement, tenthElement,
       eleventhElement, thirteenthElement, fourteenthElement, fifteenthElement,
       sixteenthElement, eighteenthElement, nineteenthElement, twentiethElement,
       twentyFirstElement, twentyThirdElement, twentyFourthElement,
       twentyFifthElement) + thirdElement * determinant4x4(sixthElement,
        seventhElement, ninthElement, tenthElement, eleventhElement,
        twelfthElement, fourteenthElement, fifteenthElement, sixteenthElement,
        seventeenthElement, nineteenthElement, twentiethElement,
        twentyFirstElement, twentySecondElement, twentyFourthElement,
        twentyFifthElement) - fourthElement * determinant4x4(sixthElement,
        seventhElement, eighthElement, tenthElement, eleventhElement,
        twelfthElement, thirteenthElement, fifteenthElement, sixteenthElement,
        seventeenthElement, eighteenthElement, twentiethElement,
        twentyFirstElement, twentySecondElement, twentyThirdElement,
        twentyFifthElement) + fifthElement * determinant4x4(sixthElement,
        seventhElement, eighthElement, ninthElement, eleventhElement,
        twelfthElement, thirteenthElement, fourteenthElement, sixteenthElement,
        seventeenthElement, eighteenthElement, nineteenthElement,
        twentyFirstElement, twentySecondElement, twentyThirdElement,
        twentyFourthElement);
    return determinant;
 }

 double scalarMultiplication(double scalar, double firstElement){
    return scalar * firstElement;
 }
  List<double> scalarMultiplication2x2(double scalar, double firstElement,
      double secondElement, double thirdElement, double fourthElement){
    List<double> result= [];
    result.add(scalar * firstElement);
    result.add(scalar * secondElement);
    result.add(scalar * thirdElement);
    result.add(scalar * fourthElement);
    return result;
  }
  List<double> scalarMultiplication3x3(double scalar, double firstElement,
      double secondElement, double thirdElement, double fourthElement,
      double fifthElement, double sixthElement, double seventhElement,
      double eighthElement,double ninthElement){
    List<double> result= [];
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
  List<double> scalarMultiplication4x4(double scalar, double firstElement, double secondElement,
      double thirdElement,  double fourthElement, double fifthElement,
      double sixthElement,  double seventhElement, double eighthElement,
      double ninthElement,  double tenthElement, double eleventhElement,
      double twelfthElement,  double thirteenthElement, double fourteenthElement,
      double fifteenthElement, double sixteenthElement){
    List<double> result= [];
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

  List<double> scalarMultiplication5x5(double scalar, double firstElement,
      double secondElement, double thirdElement,  double fourthElement,
      double fifthElement, double sixthElement,  double seventhElement,
      double eighthElement, double ninthElement,  double tenthElement,
      double eleventhElement, double twelfthElement,  double thirteenthElement,
      double fourteenthElement, double fifteenthElement, double sixteenthElement,
      double seventeenthElement, double eighteenthElement,
      double nineteenthElement, double twentiethElement,
      double twentyFirstElement, double twentySecondElement,
      double twentyThirdElement, double twentyFourthElement,
      double twentyFifthElement){
    List<double> result= [];
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