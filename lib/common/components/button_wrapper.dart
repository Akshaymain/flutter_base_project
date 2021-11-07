import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/common/constants/all_constants.dart';
import 'package:flutter_base_project/common/constants/colors.dart';

class ButtonWrapper extends StatelessWidget {
  final String text;
  final Function onClicked;
  final EdgeInsets? padding;
  final EdgeInsets? margin;
  final double? width;

  const ButtonWrapper(
      {Key? key,
      required this.text,
      required this.onClicked,
      this.padding,
      this.margin,
      this.width = EB_MINMUM_WIDTH_MULTIPLIER})
      : super(key: key);

  @override
  Widget build(context) {
    return Container(
      padding: padding ?? EdgeInsets.zero,
      margin: margin ?? EdgeInsets.zero,
      child: ElevatedButton(
          style: ButtonStyle(
              minimumSize: MaterialStateProperty.all<Size>(Size(
                  width! * EB_MINIMUM_WIDTH_MULTIPLICAND, EB_MINIMUM_HEIGHT)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(EB_BORDER_RADIUS)))),
          onPressed: () => onClicked(),
          child: Text(
            text.toUpperCase(),
            style: Theme.of(context).textTheme.button!.apply(color: SECONDARY),
          )),
    );
  }
}
