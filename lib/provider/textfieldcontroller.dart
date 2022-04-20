import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:studyapp/firebase/firebase_service.dart';
import 'package:studyapp/widgets/showDialog.dart';

class TextFieldController extends ChangeNotifier {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();

  TextEditingController signinemail = TextEditingController();
  TextEditingController signinpassword = TextEditingController();

  Future signUp({required BuildContext context}) async {
    try {
      await MyFirebaseService.auth.createUserWithEmailAndPassword(
          email: emailcontroller.text, password: passwordcontroller.text);
      writeToDb();
      clear();

      Navigator.pushNamed(context, '/interest');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        MyMessanger.showMyMessanger(
            text: 'The Password provider is too weak',
            color: Colors.red,
            context: context);
      } else if (e.code == 'email-already-in-use') {
        MyMessanger.showMyMessanger(
          text: 'The account already exists for that email',
          color: Colors.red,
          context: context,
        );
      }
    } catch (e) {
      MyMessanger.showMyMessanger(
          text: 'There is an error!', color: Colors.red, context: context);
    }
  }

  Future signIn(context) async {
    try {
      await MyFirebaseService.auth.signInWithEmailAndPassword(
          email: signinemail.text, password: signinpassword.text);
      Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
    } catch (e) {
      debugPrint('Error :&e');
    }
    notifyListeners();
  }

  Future resetpassword() async {
    try {
      await MyFirebaseService.auth
          .sendPasswordResetEmail(email: signinemail.text);
    } catch (e) {
      debugPrint('Error:$e');
    }
  }

  Future writeToDb() async {
    await MyFirebaseService.firestore
        .collection('users')
        .add(
          {
            'name': namecontroller.text,
            'email': emailcontroller.text,
            'phone': phonecontroller.text
          },
        )
        .then(
          (value) => debugPrint('Db ga Muhaffaqiyatli Yozildi'),
        )
        .onError(
          (error, stackTrace) => debugPrint('Error:$error'),
        );
    notifyListeners();
  }

  clear() {
    emailcontroller.clear();
    namecontroller.clear();
    passwordcontroller.clear();
    phonecontroller.clear();
  }
}
