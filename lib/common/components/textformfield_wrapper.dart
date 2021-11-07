import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFormFieldWrapper extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final String? errorMessage;
  final TextInputType? inputType;
  final InputBorder? inputBorder;
  final Widget? icon;

  const TextFormFieldWrapper(
      {Key? key,
      required this.controller,
      required this.label,
      this.margin,
      this.padding,
      this.errorMessage,
      this.inputType,
      this.inputBorder,
      this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? EdgeInsets.zero,
      padding: padding ?? EdgeInsets.zero,
      child: TextFormField(
        controller: controller,
        keyboardType: inputType ?? TextInputType.text,
        decoration: InputDecoration(
            labelText: label,
            border: inputBorder ?? const OutlineInputBorder(),
            icon: icon),
        validator: (String? value) {
          return (value.toString().length != 10) ? errorMessage ?? '' : null;
        },
      ),
    );
  }
}
