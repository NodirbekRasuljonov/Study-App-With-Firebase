import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studyapp/core/constants/color_const.dart';
import 'package:studyapp/core/constants/radius_const.dart';
import 'package:studyapp/core/constants/size_const.dart';
import 'package:studyapp/core/constants/text_const.dart';
import 'package:studyapp/provider/checkbox_provider.dart';
import 'package:studyapp/provider/textfieldcontroller.dart';
import 'package:studyapp/widgets/textfield.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          TextConst.signupappbar,
          style: const TextStyle(color: ColorConst.text2Color),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFieldWidget(
                        title: 'Name',
                        hinttext: 'Your name',
                        controller:
                            context.watch<TextFieldController>().namecontroller),
                    TextFieldWidget(
                        title: 'E-mail',
                        hinttext: 'study@gmail.com',
                        controller:
                            context.watch<TextFieldController>().emailcontroller),
                    TextFieldWidget(
                        title: 'Password',
                        hinttext: 'Your password',
                        controller: context
                            .watch<TextFieldController>()
                            .passwordcontroller),
                    TextFieldWidget(
                        title: 'Phone Number',
                        hinttext: '+9989# ### ## ##',
                        controller:
                            context.watch<TextFieldController>().phonecontroller)
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.height,
                child: Stack(
                  children: [
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.027,
                      right: MediaQuery.of(context).size.height * 0.024,
                      child: Image.asset('assets/images/des.png'),
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.height * 0.024,
                      right: MediaQuery.of(context).size.height * 0.4,
                      top: MediaQuery.of(context).size.height * 0.024,
                      child: Checkbox(
                        fillColor: MaterialStateProperty.all(
                          ColorConst.kPrimaryColor,
                        ),
                        value: context.watch<CheckBoxProvider>().isChacked,
                        onChanged: (v) {
                          context.read<CheckBoxProvider>().change(v);
                        },
                      ),
                    ),
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.18,
                      bottom: MediaQuery.of(context).size.height * 0.050,
                      left: MediaQuery.of(context).size.height * 0.024,
                      right: MediaQuery.of(context).size.height * 0.024,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: ColorConst.kPrimaryColor,
                          textStyle: TextStyle(fontSize: SizeConst.medium),
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(RadiusConst.small),
                          ),
                        ),
                        onPressed: context.watch<CheckBoxProvider>().isChacked
                            ? () {
                              context.read<TextFieldController>().signUp(context: context);
                            }
                            : null,
                        child: Text(TextConst.signupappbar),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
