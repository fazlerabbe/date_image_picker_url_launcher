import 'package:datepicker_employee/page/employee_details.dart';
import 'package:datepicker_employee/page/employee_list_page.dart';
import 'package:datepicker_employee/page/new_employee.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: EmployeeListPage.routeName,
      routes: {
        EmployeeListPage.routeName: (context) => EmployeeListPage(),
        EmployeeDetaisPage.routeName: (context) => EmployeeDetaisPage(),
        NewEmployee.routeName: (context) => NewEmployee()
      },
    );
  }
}
