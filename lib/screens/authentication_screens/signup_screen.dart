import 'package:doctorapp/assets/colors/my_colors.dart';
import 'package:doctorapp/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  //TextEditing Controller
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        actionsPadding: EdgeInsets.symmetric(vertical: 30),
        centerTitle: true,
        title: Text(
          'Sign Up',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: MyColors.blackColor,
            fontSize: 17,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: CustomTextField(
          textEditingController: nameController,
          keyboardType: TextInputType.name,
          hintText: 'zahid',
        ),
      ),
    );
  }
}
