import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studyapp/core/constants/color_const.dart';
import 'package:studyapp/core/constants/radius_const.dart';
import 'package:studyapp/core/constants/size_const.dart';
import 'package:on_click/on_click.dart';
import 'package:studyapp/firebase/firebase_service.dart';
import 'package:studyapp/provider/textfieldcontroller.dart';
import 'package:studyapp/widgets/my_card.dart';

class MainSettingsPage extends StatefulWidget {
  MainSettingsPage({Key? key}) : super(key: key);

  @override
  State<MainSettingsPage> createState() => _MainSettingsPageState();
}

class _MainSettingsPageState extends State<MainSettingsPage> {
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
      resizeToAvoidBottomInset: false,
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
                  MyCard.categories(
                    context: context,
                      iconData: const Icon(
                        Icons.person_outline_outlined,
                      ),
                      text: 'Profile',
                      route: '/profile'),
                  MyCard.categories(
                    context: context,
                      iconData: const Icon(Icons.check),
                      text: 'Account',
                      route: '/account'),
                  MyCard.categories(
                    context: context,
                      iconData: const Icon(Icons.settings),
                      text: 'Settings',
                      route: '/settings'),
                  MyCard.categories(
                    context: context,
                      iconData: const Icon(Icons.warning),
                      text: 'About',
                      route: '/about'),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.11,
                    width: MediaQuery.of(context).size.height * 0.46,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset('assets/images/headphone.png'),
                        Text(
                          'How can we help you',
                          style: TextStyle(
                            fontSize: SizeConst.large,
                            color: ColorConst.textColor,
                          ),
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xff52b6df),
                      borderRadius: BorderRadius.circular(RadiusConst.medium),
                    ),
                  )
                ],
              ),
            ),
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
          ],
        ),
      ),
    );
  }

  
  }
