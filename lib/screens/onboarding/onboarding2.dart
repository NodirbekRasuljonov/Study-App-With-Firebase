import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';
import 'package:studyapp/core/constants/size_const.dart';
import 'package:studyapp/core/constants/text_const.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:on_click/on_click.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/onboarding2.png'),
                  ),
                ),
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/BG.png'),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: MediaQuery.of(context).size.height * 0.03,
                      left: MediaQuery.of(context).size.height * 0.132,
                      right: MediaQuery.of(context).size.height * 0.132,
                      top: MediaQuery.of(context).size.height * 0.4,
                      child: Image.asset('assets/images/logomax.png'),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                child: Stack(
                  children: [
                    Positioned(
                      top: MediaQuery.of(context).size.height * 0.04,
                      left: MediaQuery.of(context).size.height * 0.032,
                      right: MediaQuery.of(context).size.height * 0.032,
                      child: Image.asset('assets/images/description.png'),
                    ),
                    Positioned(
                      bottom: MediaQuery.of(context).size.height * 0.2,
                      left: MediaQuery.of(context).size.height * 0.17,
                      right: MediaQuery.of(context).size.height * 0.178,
                      child: Image.asset('assets/images/slider.png'),
                    ),
                    Positioned(
                      bottom: MediaQuery.of(context).size.height * 0.081,
                      left: MediaQuery.of(context).size.height * 0.030,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          TextConst.skip,
                          style: TextStyle(
                              color: ColorConst.kPrimaryColor,
                              fontSize: SizeConst.medium),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: MediaQuery.of(context).size.height * 0.063,
                      right: MediaQuery.of(context).size.height * 0.030,
                      child: CircleAvatar(
                        backgroundColor: ColorConst.kPrimaryColor,
                        radius: MediaQuery.of(context).size.height * 0.05,
                        child: SvgPicture.asset('assets/svg/icon.svg'),
                        
                      ).onClick(() {
                        Navigator.pushNamed(context, '/signup', );
                      },
                      )
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
