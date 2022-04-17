import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studyapp/core/constants/color_const.dart';
import 'package:studyapp/core/constants/radius_const.dart';
import 'package:studyapp/core/constants/size_const.dart';
import 'package:studyapp/provider/textfieldcontroller.dart';
import 'package:studyapp/widgets/textfield.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: const Text('Sign In'),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: SizeConst.medium,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 7,
            child: Stack(
              children: [
                Column(
                  children: [
                    TextFieldWidget(
                      title: 'Email',
                      hinttext: 'study@gmail.com',
                      controller:
                          context.watch<TextFieldController>().signinemail,
                    ),
                    TextFieldWidget(
                      title: 'Password',
                      hinttext: 'Password',
                      controller:
                          context.watch<TextFieldController>().signinpassword,
                    ),
                  ],
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.25,
                  left: MediaQuery.of(context).size.height * 0.02,
                  child: TextButton(
                    style: const ButtonStyle(alignment: Alignment.centerLeft),
                    onPressed: () {
                      context.read<TextFieldController>().resetpassword();
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.311,
                  left: MediaQuery.of(context).size.height * 0.02,
                  right: MediaQuery.of(context).size.height * 0.02,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(RadiusConst.small),
                      ),
                      textStyle: TextStyle(fontSize: SizeConst.medium),
                      fixedSize: Size(
                          MediaQuery.of(context).size.height * 0.327,
                          MediaQuery.of(context).size.height * 0.070),
                    ),
                    onPressed: () {
                      context.read<TextFieldController>().signIn(context);
                    },
                    child: const Text('Log In'),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.height * 0.080,
                  right: MediaQuery.of(context).size.height * 0.080,
                  top: MediaQuery.of(context).size.height * 0.39,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account?"),
                      TextButton(
                        style: ButtonStyle(
                          textStyle: MaterialStateProperty.all(
                            const TextStyle(color: ColorConst.kPrimaryColor),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: const Text('Sign up'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}