import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'body.dart';
import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // fontFamily: GoogleFonts.inter().fontFamily,
          primarySwatch: kPrimaryColorSwatch,
          scaffoldBackgroundColor: kBackground),
      home: Scaffold(
        body: Body(),
        appBar: AppBar(
          title: const Text('Quan ly de xuat hoa don'),
          leading: const Icon(Icons.arrow_back),
          actions: const [Icon(Icons.add)],
        ),
      ),
    );
  }
}
