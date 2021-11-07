import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/common/components/text_wrapper.dart';
import 'package:flutter_base_project/common/constants/colors.dart';

AppBar customAppBar({
  required BuildContext context,
  required String title,
  required Function onLeadingTap,
  IconData? leadingIcon,
}) {
  return AppBar(
    leading: InkWell(
        onTap: () => onLeadingTap(),
        child: Icon(
          leadingIcon ?? Icons.arrow_back,
          color: BLACK,
        )),
    title: TextWrapper(
      text: title,
      textStyle: Theme.of(context).textTheme.headline6,
    ),
    actions: const <Widget>[],
  );
}
