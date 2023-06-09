import 'dart:io';

import 'package:datepicker_employee/employeeModel.dart';
import 'package:datepicker_employee/page/employee_details.dart';
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
      body: ListView.builder(
        itemCount: employeeList.length,
        itemBuilder: (context, index) {
          final emp = employeeList[index];
          return ListTile(
            onTap: () => Navigator.pushNamed(
                context, EmployeeDetaisPage.routeName,
                arguments: emp),
            leading: CircleAvatar(
              backgroundImage: FileImage(File(emp.img)),
            ),
            title: Text(emp.name),
            subtitle: Text(emp.designation),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, NewEmployee.routeName)
            .then((value) => setState((() {}))),
        child: Icon(Icons.add),
      ),
    );
  }
}
