// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrice/matrix_size_page.dart';
import 'package:matrice/home_page.dart';
import 'package:matrice/result_page.dart';
import 'package:matrice/second_matrix_page.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const MatrixSizePage(),
      '/matrix': (context) => const HomePage(),
      '/result': (context) => const ResultPage(),
      '/secondMatrixPage': (context) => SecondMatrixPage()
    },
  )
  );
}



