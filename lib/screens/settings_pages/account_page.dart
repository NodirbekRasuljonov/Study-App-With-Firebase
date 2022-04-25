import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studyapp/core/constants/color_const.dart';
import 'package:studyapp/core/constants/radius_const.dart';
import 'package:studyapp/core/constants/size_const.dart';
import 'package:studyapp/provider/textfieldcontroller.dart';
import 'package:studyapp/widgets/my_appbar.dart';
import 'package:studyapp/widgets/textfield.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar:MyAppBar(title: 'Account'),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFieldWidget(
                    title: 'Old Password',
                    hinttext: 'Old Password',
                    controller:
                        context.watch<TextFieldController>().oldpassword,
                  ),
                  TextFieldWidget(
                    title: 'New Password',
                    hinttext: 'New Password',
                    controller:
                        context.watch<TextFieldController>().newpassword,
                  ),
                  TextFieldWidget(
                    title: 'Confirm Password',
                    hinttext: 'Confirm Password',
                    controller:
                        context.watch<TextFieldController>().confirmpassword,
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(RadiusConst.large)
                      ),
                      fixedSize: Size(MediaQuery.of(context).size.height*0.44, MediaQuery.of(context).size.height*0.08)

                    ),
                    onPressed: () {
                      context.read<TextFieldController>().changepassword(context: context,img: 'assets/images/passdialog.png');
                    },
                    child: Text('Update Password',style: TextStyle(fontSize: SizeConst.medium),),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 6,
              child: SizedBox()
            ),
          ],
        ),
      ),
    );
  }
}
