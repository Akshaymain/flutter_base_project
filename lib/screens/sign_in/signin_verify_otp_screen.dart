import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/common/components/button_wrapper.dart';
import 'package:flutter_base_project/common/components/otp_textfield.dart';
import 'package:flutter_base_project/common/components/svg_holder.dart';
import 'package:flutter_base_project/common/components/text_wrapper.dart';
import 'package:flutter_base_project/common/constants/image_path.dart';
import 'package:flutter_base_project/common/constants/strings.dart';
import 'package:flutter_base_project/routes/constants/route_names.dart';
import 'package:flutter_base_project/screens/main/main_screen.dart';

class SignInVerifyOTPScreen extends StatefulWidget {
  const SignInVerifyOTPScreen({Key? key}) : super(key: key);

  @override
  SignInVerifyOTPScreenState createState() => SignInVerifyOTPScreenState();
}

class SignInVerifyOTPScreenState extends State<SignInVerifyOTPScreen> {
  @override
  Widget build(BuildContext context) {
    Map argument = ModalRoute.of(context)!.settings.arguments as Map;
    return MainScreen(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextWrapper(
          text: 'OTP verification',
          padding: const EdgeInsets.only(bottom: 8.0),
          textStyle: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        SVGHolder(
          width: 300,
          height: MediaQuery.of(context).size.height / 3,
          icon: SI_OTP_VERIFY_ILLUSTRATOR,
        ),
        TextWrapper(
          text: CODE_IS_SENT_TO + argument['phoneNumber'],
          padding: const EdgeInsets.only(top: 8.0),
          textStyle: Theme.of(context).textTheme.subtitle1,
        ),
        OTPTextField(
          margin: const EdgeInsets.symmetric(horizontal: 48),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWrapper(
                text: DID_NOT_RECIEVE_CODE,
                textStyle: Theme.of(context).textTheme.subtitle1,
              ),
              InkWell(
                onTap: () {},
                child: TextWrapper(
                  text: 'Request again',
                  textStyle: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
        ButtonWrapper(
          padding: const EdgeInsets.only(top: 16.0),
          text: LOGIN,
          width: 3,
          onClicked: () {
            Navigator.pushNamed(context, HOME_ROUTE);
          },
        )
      ],
    ));
  }
}
