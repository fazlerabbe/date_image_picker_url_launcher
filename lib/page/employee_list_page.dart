import 'package:datepicker_employee/page/new_employee.dart';
import 'package:flutter/material.dart';

class EmployeeListPage extends StatefulWidget {
  static const String routeName = '/';
  const EmployeeListPage({super.key});

  @override
  State<EmployeeListPage> createState() => _EmployeeListPageState();
}

class _EmployeeListPageState extends State<EmployeeListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("employee list page"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, NewEmployee.routeName),
        child: Icon(Icons.add),
      ),
    );
  }
}
