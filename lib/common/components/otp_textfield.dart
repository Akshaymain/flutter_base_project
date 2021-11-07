import 'package:flutter/cupertino.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter_base_project/common/constants/all_constants.dart';
import 'package:flutter_base_project/common/constants/colors.dart';

class OTPTextField extends StatelessWidget {
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final TextInputType? inputType;
  const OTPTextField({Key? key, this.margin, this.padding, this.inputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      padding: padding ?? EdgeInsets.zero,
      child: PinCodeTextField(
          appContext: context,
          length: OTF_LENGTH,
          obscureText: true,
          blinkWhenObscuring: true,
          animationType: AnimationType.slide,
          keyboardType: inputType ?? TextInputType.number,
          showCursor: false,
          pinTheme: PinTheme(
              activeColor: PRIMARY,
              selectedColor: PRIMARY,
              inactiveColor: SECONDARY_VARIENT,
              fieldWidth: OTF_FILED_WIDTH),
          onChanged: (value) {
            print(value);
          }),
    );
  }
}
