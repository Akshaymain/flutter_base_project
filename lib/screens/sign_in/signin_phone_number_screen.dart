import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/common/components/button_wrapper.dart';
import 'package:flutter_base_project/common/components/svg_holder.dart';
import 'package:flutter_base_project/common/components/text_wrapper.dart';
import 'package:flutter_base_project/common/components/textformfield_wrapper.dart';
import 'package:flutter_base_project/common/constants/image_path.dart';
import 'package:flutter_base_project/common/constants/strings.dart';
import 'package:flutter_base_project/routes/constants/route_names.dart';
import 'package:flutter_base_project/screens/main/main_screen.dart';
import 'package:flutter_base_project/utils/utils.dart';

class SignInPhoneNumberScreen extends StatefulWidget {
  const SignInPhoneNumberScreen({Key? key}) : super(key: key);

  @override
  SignInPhoneNumberScreenState createState() => SignInPhoneNumberScreenState();
}

class SignInPhoneNumberScreenState extends State<SignInPhoneNumberScreen> {
  TextEditingController phoneNumberTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MainScreen(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextWrapper(
          text: SIGN_IN_WITH_PHONE_NUMBER,
          padding: const EdgeInsets.only(bottom: 8.0),
          textStyle: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.bold),
        ),
        SVGHolder(
          width: 300,
          height: MediaQuery.of(context).size.height / 3,
          icon: SI_PHONE_NUMBER_ILLUSTRATOR,
        ),
        TextFormFieldWrapper(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          controller: phoneNumberTextController,
          label: ENTER_YOUR_PHONE_NUMBER,
          inputType: TextInputType.number,
          icon: const Icon(Icons.phone),
        ),
        TextWrapper(
          text: OTP_WILL_BE_SENT,
          padding: const EdgeInsets.only(top: 8.0),
          textStyle: Theme.of(context).textTheme.subtitle2,
        ),
        ButtonWrapper(
          padding: const EdgeInsets.only(top: 16.0),
          text: 'Verify',
          width: 2,
          onClicked: () {
            if (phoneNumberTextController.text.length == 10) {
              Navigator.pushNamed(context, SIGN_IN_VERIFY_OTP_ROUTE,
                  arguments: {'phoneNumber': phoneNumberTextController.text});
            } else {
              displayToast(message: ENTER_VALID_PHONE_NUMBER);
            }
          },
        ),
      ],
    ));
  }
}
