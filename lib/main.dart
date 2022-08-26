import 'package:dna4/toters.dart';
import 'package:flutter/material.dart';
import 'Burgers.dart';

void main() {
  runApp( MaterialApp(home:toters(),
    debugShowCheckedModeBanner: false,));
  // runApp( MaterialApp(home:burgerpage(),
  //    debugShowCheckedModeBanner: false,));
}
class page extends StatefulWidget {
  const page({Key? key}) : super(key: key);

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

