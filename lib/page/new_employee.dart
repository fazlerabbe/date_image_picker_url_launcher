import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:image_picker/image_picker.dart';

class NewEmployee extends StatefulWidget {
  static const String routeName = '/new_employee';
  const NewEmployee({super.key});

  @override
  State<NewEmployee> createState() => _NewEmployeeState();
}

class _NewEmployeeState extends State<NewEmployee> {
  final nameController = TextEditingController();
  final mobileController = TextEditingController();
  final emailController = TextEditingController();
  final addressController = TextEditingController();
  final salaryController = TextEditingController();
  String? dob;

  String? imagePath;
  ImageSource sourse = ImageSource.camera;
  String genderRadioGroup = 'male';

  @override
  void dispose() {
    nameController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Employee detais page")),
      ),
      body: ListView(
        children: [
          TextFormField(
            keyboardType: TextInputType.text,
            controller: nameController,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.person),
                filled: true,
                labelText: "employee name"),
          ),
          TextFormField(
            keyboardType: TextInputType.phone,
            controller: mobileController,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.phone),
                filled: true,
                labelText: "phone number"),
          ),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            controller: emailController,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.email_outlined),
                filled: true,
                labelText: "Enter email"),
          ),
          TextFormField(
            keyboardType: TextInputType.streetAddress,
            controller: addressController,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.local_activity_outlined),
                filled: true,
                labelText: "Enter Address"),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            controller: salaryController,
            decoration: InputDecoration(
                prefixIcon: const Icon(Icons.monetization_on),
                filled: true,
                labelText: "Salary"),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("select Gender"),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio<String>(
                      value: "male",
                      groupValue: genderRadioGroup,
                      onChanged: ((value) {
                        setState(() {
                          genderRadioGroup = value!;
                        });
                      })),
                  Text("male"),
                  Radio<String>(
                      value: "Female",
                      groupValue: genderRadioGroup,
                      onChanged: ((value) {
                        setState(() {
                          genderRadioGroup = value!;
                        });
                      })),
                  Text("Female")
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                  onPressed: selectDate, child: Text("select date of batch")),
              Chip(label: Text(dob == null ? "No date chosen" : dob!))
            ],
          ),
          Column(
            children: [
              Card(
                  child: imagePath == null
                      ? Image.asset(
                          "images/pp.png",
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        )
                      : Image.file(
                          File(imagePath!),
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton.icon(
                      onPressed: () {
                        sourse = ImageSource.camera;
                        getImage();
                      },
                      icon: const Icon(Icons.camera),
                      label: const Text("capture")),
                  TextButton.icon(
                      onPressed: () {
                        sourse = ImageSource.gallery;
                        getImage();
                      },
                      icon: const Icon(Icons.photo),
                      label: const Text("Gallery"))
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  void selectDate() async {
    final selectDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1950),
        lastDate: DateTime.now());
    if (selectDate != null) {
      setState(() {
        dob = DateFormat('dd/mm/yy').format(selectDate);
      });
    }
  }

  void getImage() async {
    final selectedImage = await ImagePicker().pickImage(source: sourse);
    if (selectedImage != null) {
      setState(() {
        imagePath = selectedImage.path;
        print(imagePath);
      });
    }
  }
}
