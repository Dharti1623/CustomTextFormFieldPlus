import 'package:flutter/material.dart';
import 'package:custom_text_form_field_plus/custom_text_form_field_plus.dart';

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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: const Text('Custom TextFormField Example'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            CustomTextFormField(
              labelText: 'Name',
              hintText: 'Enter Name',
              validator: (String? value) => Validations.emptyValidation(value),
            ),
            CustomTextFormField(
              labelText: 'Email',
              hintText: 'Enter Email',
              validator: (String? value) => Validations.emailValidation(value),
            ),
            CustomTextFormField(
              labelText: 'Phone Number',
              hintText: 'Enter Mobile Number',
              validator: (String? value) =>
                  Validations.contactNumberValidation(value),
            ),
          ],
        ),
      ),
    );
  }
}
