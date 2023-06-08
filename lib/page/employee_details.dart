import 'package:flutter/material.dart';

class EmployeeDetaisPage extends StatefulWidget {
  static const String routeName = '/employee_details';
  const EmployeeDetaisPage({super.key});

  @override
  State<EmployeeDetaisPage> createState() => _EmployeeDetaisPageState();
}

class _EmployeeDetaisPageState extends State<EmployeeDetaisPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("employee detais page"),
      ),
    );
  }
}
