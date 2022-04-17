import 'package:flutter/material.dart';
import 'package:studyapp/core/constants/color_const.dart';
import 'package:studyapp/core/constants/text_const.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/splashscreen.png'),
        ),
      ),
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/splashbg.png'),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.04,
            left: MediaQuery.of(context).size.height * 0.19,
            right: MediaQuery.of(context).size.height * 0.19,
            bottom: MediaQuery.of(context).size.height * 0.91,
            child: SizedBox(
                // color: Colors.orange,
                height: MediaQuery.of(context).size.height * 0.03,
                width: MediaQuery.of(context).size.height * 0.08,
                child: Image.asset('assets/images/logomini.png')),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.59,
            left: MediaQuery.of(context).size.height * 0.032,
            right: MediaQuery.of(context).size.height * 0.032,
            child: Image.asset('assets/images/desc.png'),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height * 0.88,
            bottom: MediaQuery.of(context).size.height * 0.045,
            left: MediaQuery.of(context).size.height * 0.141,
            right: MediaQuery.of(context).size.height * 0.141,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 1.0,
                primary: ColorConst.kPrimaryColor,
              ),
              child: Text(
                TextConst.getstarted,
                style: const TextStyle(
                    decoration: TextDecoration.none,
                    color: ColorConst.textColor),
              ),
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/onboarding', (route) => false);
              },
            ),
          ),
        ],
      ),
    );
  }
}
