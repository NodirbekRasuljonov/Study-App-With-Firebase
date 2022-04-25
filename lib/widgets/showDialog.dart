import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';
import 'package:studyapp/core/constants/radius_const.dart';
import 'package:studyapp/core/constants/size_const.dart';
import 'package:on_click/on_click.dart';

class MyMessanger {
  static showMyMessanger(
      {required String text,
      required BuildContext context,
      Color color = ColorConst.kPrimaryColor}) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(text),
        backgroundColor: color,
      ),
    );
  }
}

class ShowMyDialog {
  static showMyDialog({required BuildContext context,required String img}) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          scrollable: true,
          title: SizedBox(
            height: MediaQuery.of(context).size.height * 0.38,
            width: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(img),
                Text(
                  'Update Succes',
                  style: TextStyle(
                    color: ColorConst.onboardingtext,
                    fontSize: SizeConst.extralarge,
                  ),
                ),
                Text(
                  'Lorem ipsum dolor sit amet,consectetur adipiscing elit.Fames velit',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 193, 199, 206),
                    fontSize: SizeConst.medium,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
          backgroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              RadiusConst.small,
            ),
          ),
          alignment: Alignment.center,
          actions: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.height * 0.303,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(RadiusConst.medium),
                  border: Border.all(color: ColorConst.kPrimaryColor)),
              child: Text(
                'Close',
                style: TextStyle(
                    color: ColorConst.kPrimaryColor, fontSize: SizeConst.large),
              ),
            ).onClick(
              () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 20.0,
              width: 20.0,
            )
          ],
        );
      },
    );
  }
}
