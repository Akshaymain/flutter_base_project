import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_base_project/common/constants/all_constants.dart';

class SVGHolder extends StatelessWidget {
  final String icon;
  final double? width;
  final double? height;

  const SVGHolder({Key? key, required this.icon, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      width: width ?? SVG_ICON_WIDTH,
      height: height ?? SVG_ICON_HEIGHT,
    );
  }
}
