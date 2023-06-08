// ignore_for_file: public_member_api_docs, sort_constructors_first
class EmployeeModel {
  int? empId;
  String name;
  String dob;
  String designation;
  String mobile;
  String email;
  String streetAddress;
  num salary;
  String img;
  String gender;
  EmployeeModel({
    this.empId,
    required this.name,
    required this.dob,
    required this.designation,
    required this.mobile,
    required this.email,
    required this.streetAddress,
    required this.salary,
    required this.img,
    required this.gender,
  });
}

final List<EmployeeModel> employeeList = [
  EmployeeModel(
      name: "Rakib",
      dob: '01/01/1999',
      designation: "manager",
      mobile: '0899986',
      email: "rakib@gmail.com",
      streetAddress: 'dhanmondi 32',
      salary: 50000,
      img:
          "/data/user/0/com.example.datepicker_employee/cache/3561c251-7871-43d9-850a-8db3340819194338065354336857517.jpg",
      gender: 'male'),
];
