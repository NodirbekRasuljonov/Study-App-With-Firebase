import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';
import 'package:studyapp/core/constants/radius_const.dart';
import 'package:studyapp/core/constants/size_const.dart';

class TextFieldWidget extends StatelessWidget {
  String title;
  String hinttext;
  TextEditingController controller;
  TextFieldWidget(
      {Key? key,
      required this. title,
      required this. hinttext,
      required this.controller })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.height,
      margin: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
                color: ColorConst.text2Color, fontSize: SizeConst.large),
          ),
          TextFormField(
            controller: controller,
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.grey),
              hintText: hinttext,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(RadiusConst.small),
                borderSide: BorderSide(color: Colors.grey)
              ),
              
            ),
          )
        ],
      ),
    );
  }
}
