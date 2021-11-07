import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextWrapper extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  const TextWrapper(
      {Key? key,
      required this.text,
      this.textStyle,
      this.textAlign,
      this.padding,
      this.margin})
      : super(key: key);

  @override
  Widget build(context) {
    return Container(
      padding: padding ?? EdgeInsets.zero,
      margin: margin ?? EdgeInsets.zero,
      child: Text(
        text,
        textAlign: textAlign ?? TextAlign.center,
        style: textStyle ?? Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
