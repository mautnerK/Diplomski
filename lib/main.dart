// @dart=2.9

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matrice/home_page.dart';
import 'package:matrice/matrix_page.dart';
import 'package:matrice/result_page.dart';

void main() {

  runApp(MaterialApp(
    initialRoute: '/',
    debugShowCheckedModeBanner: false,
    routes: {
      '/': (context) => const HomePage(),
      '/matrix': (context) => const MatrixPage(),
      '/result': (context) => const ResultPage()
    },
  )
  );
}



