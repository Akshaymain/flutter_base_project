import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_base_project/common/constants/colors.dart';

class CarouselIndicator extends StatelessWidget {
  List<String> imageLinks;
  CarouselController carouselController;
  int currentIndex;

  CarouselIndicator(
      this.imageLinks, this.carouselController, this.currentIndex);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: imageLinks
          .asMap()
          .entries
          .map((element) => GestureDetector(
                onTap: () => carouselController.animateToPage(element.key),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Container(
                      width: 15,
                      height: 15,
                      margin: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: SECONDARY.withOpacity(
                              element.key == currentIndex ? 0.2 : 0.0)),
                    ),
                    Container(
                      width: 8,
                      height: 8,
                      margin: const EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: SECONDARY.withOpacity(
                              element.key == currentIndex ? 0.9 : 0.2)),
                    ),
                  ],
                ),
              ))
          .toList(),
    );
  }
}
