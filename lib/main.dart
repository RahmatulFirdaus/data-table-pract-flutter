import 'package:flutter/material.dart';
import 'package:table_pract_project/pages/Datatable.dart';
import 'package:table_pract_project/pages/paginatedDataTable.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table Practice',
      home: Paginateddatatablepage(),
    );
  }
}