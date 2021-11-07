import 'package:flutter/material.dart';
import 'package:flutter_base_project/common/constants/all_constants.dart';

class NetworkImageHolder extends StatelessWidget {
  final String imageUrl;
  final BoxFit? boxFit;

  const NetworkImageHolder({
    Key? key,
    required this.imageUrl,
    this.boxFit = BoxFit.cover,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(NI_BORDER_RADIUS),
      child: Image.network(
        imageUrl,
        fit: boxFit,
      ),
    );
  }
}
