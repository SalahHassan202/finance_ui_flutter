import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_ui_flutter/core/widgets/spacing_widgets.dart';
import 'package:finance_ui_flutter/features/home_page/widgets/card_item_widget.dart';
import 'package:flutter/material.dart';

class CustomCarsouselWidget extends StatefulWidget {
  const CustomCarsouselWidget({super.key});

  @override
  State<CustomCarsouselWidget> createState() => _CustomCarsouselWidgetState();
}

class _CustomCarsouselWidgetState extends State<CustomCarsouselWidget> {
  int currentIndexPage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: [CardItemWidget(), CardItemWidget(), CardItemWidget()],
          options: CarouselOptions(
            height: 263,
            padEnds: false,
            viewportFraction: 0.7,
            enlargeCenterPage: true,
            enlargeFactor: 0.05,
            onPageChanged: (index, reason) => setState(() {
              currentIndexPage = index;
            }),
          ),
        ),
        const HeightSpace(16),
        DotsIndicator(
          dotsCount: 3,
          position: currentIndexPage,
          decorator: DotsDecorator(
            spacing: EdgeInsets.symmetric(horizontal: 4),
            color: Color(0xffE3E9ED),
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
