import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studyapp/core/constants/color_const.dart';
import 'package:studyapp/core/constants/radius_const.dart';
import 'package:studyapp/core/constants/size_const.dart';
import 'package:on_click/on_click.dart';
import 'package:studyapp/firebase/firebase_service.dart';
import 'package:studyapp/provider/textfieldcontroller.dart';
import 'package:studyapp/service/firebase_service.dart';

class SettingsPage extends StatefulWidget {
  SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var name =
        MyFirebaseService.firestore.doc('/users/PWpjWwGmZN3en198W6ti').get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: SizedBox(
          width: MediaQuery.of(context).size.height * 0.12,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/icon.png'),
              Text(
                'Study',
                style: TextStyle(
                    color: ColorConst.text2Color, fontSize: SizeConst.medium),
              )
            ],
          ),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height * 0.1,
              margin: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const CircleAvatar(
                    radius: 35,
                    backgroundColor: Color(0xffF1F5F9),
                    child: Icon(Icons.person_outline_outlined),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    width: MediaQuery.of(context).size.height * 0.25,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          'Welcome',
                          style: TextStyle(
                            fontSize: 18.0,
                            color: ColorConst.onboardingtext,
                          ),
                        ),
                        Text(
                          'Nodirbek',
                          style: TextStyle(
                            fontSize: 22.0,
                            color: Color(0xff0F172A),
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                  const CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Color(0xffF1F5F9),
                    child: Icon(
                      Icons.logout_outlined,
                      size: 30.0,
                      color: ColorConst.onboardingtext,
                    ),
                  ).onClick(
                    () {
                      context.read<TextFieldController>().logOut(context);
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    categories(
                      iconData: const Icon(
                        Icons.person_outline_outlined,
                      ),
                      text: 'Profile',
                      func: () {},
                    ),
                    categories(
                      iconData: const Icon(Icons.check),
                      text: 'Account',
                      func: () {},
                    ),
                    categories(
                      iconData: const Icon(Icons.settings),
                      text: 'Settings',
                      func: () {},
                    ),
                    categories(
                      iconData: const Icon(Icons.warning),
                      text: 'About',
                      func: () {},
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height*0.13,
                      width: MediaQuery.of(context).size.height*0.46,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [Image.asset('assets/images/headphone.png'),
                        Text('How can we help you',style: TextStyle(fontSize: SizeConst.large,color: ColorConst.textColor),)
                        ],
                      ),
                      
                      decoration: BoxDecoration(
                        color: Color(0xff52b6df),
                        borderRadius: BorderRadius.circular(RadiusConst.medium),),
                    )
                    
                  ],
                ),
              ),
            
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Card categories(
      {required Icon iconData, required String text, required void func}) {
    return Card(
      margin: const EdgeInsets.all(5.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: const Color(0xffdcf0f9),
          child: iconData,
        ),
        title: Text(text),
        trailing: IconButton(
          onPressed: () {
            func;
          },
          icon: const Icon(
            Icons.chevron_right,
          ),
        ),
      ),
    );
  }
}
