import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_project/common/components/button_wrapper.dart';
import 'package:flutter_base_project/common/components/network_image_holder.dart';
import 'package:flutter_base_project/common/components/text_wrapper.dart';
import 'package:flutter_base_project/common/constants/strings.dart';
import 'package:flutter_base_project/routes/constants/route_names.dart';
import 'package:flutter_base_project/screens/intro/components/carousel_indicator.dart';
import 'package:flutter_base_project/screens/main/main_screen.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  IntroScreenState createState() => IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  List<String> imageLinks = [];
  int initialPage = 2, _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    imageLinks = [
      'https://images.pexels.com/photos/994517/pexels-photo-994517.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'https://images.pexels.com/photos/6567255/pexels-photo-6567255.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'https://images.pexels.com/photos/6347920/pexels-photo-6347920.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'https://images.pexels.com/photos/1336873/pexels-photo-1336873.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
      'https://images.pexels.com/photos/298864/pexels-photo-298864.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'
    ];
    _currentIndex = initialPage;
  }

  final CarouselController _carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return MainScreen(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextWrapper(
            text: SWIPE_TO_BROWSE,
            textStyle: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(fontWeight: FontWeight.bold),
            padding: const EdgeInsets.only(bottom: 8.0),
          ),
          TextWrapper(
              text: DISCOVER_PRODUCTS_DESICPTION,
              textStyle: Theme.of(context).textTheme.subtitle1,
              padding: const EdgeInsets.only(bottom: 24.0)),
          Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: CarouselSlider(
              carouselController: _carouselController,
              options: CarouselOptions(
                  aspectRatio: 12 / 10,
                  viewportFraction: 0.7,
                  enableInfiniteScroll: false,
                  initialPage: initialPage,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _currentIndex = index;
                    });
                  }),
              items: imageLinks
                  .map((imageLink) => NetworkImageHolder(
                        imageUrl: imageLink,
                      ))
                  .toList(),
            ),
          ),
          CarouselIndicator(imageLinks, _carouselController, _currentIndex),
          ButtonWrapper(
              text: START_SHOPPING,
              width: 3,
              margin: const EdgeInsets.only(top: 24.0),
              onClicked: () =>
                  {Navigator.pushNamed(context, SIGN_UP_PHONE_NUMBER_ROUTE)})
        ],
      ),
    );
  }
}
