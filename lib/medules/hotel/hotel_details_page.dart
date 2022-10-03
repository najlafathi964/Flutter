import 'package:carousel_slider/carousel_slider.dart';
import 'package:course/widgets/widgets.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HotelDetailsPage extends StatefulWidget {
  @override
  State<HotelDetailsPage> createState() => _HotelDetailsPageState();
}

class _HotelDetailsPageState extends State<HotelDetailsPage> {
  CarouselController carouselController = CarouselController();

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    print('position $currentIndex');
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 350.h,
              width: double.maxFinite,
              child: Stack(alignment: Alignment.topLeft, children: [
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    CarouselSlider(
                      carouselController: carouselController,
                      items: [
                        ClipRRect(
                          child: Image(
                            image: AssetImage(
                                'assets/images/valeriia-bugaiova.png'),
                            width: double.infinity,
                            fit: BoxFit.fill,
                          ),
                        )
                      ],
                      options: CarouselOptions(
                          initialPage: 0,
                          height: 350.h,
                          viewportFraction: 1,
                          enableInfiniteScroll: true,
                          reverse: false,
                          //   autoPlay: true,
                          //      autoPlayInterval: Duration(seconds: 3) ,
                          //     autoPlayAnimationDuration: Duration(seconds: 1) ,
                          //     autoPlayCurve: Curves.fastOutSlowIn ,
                          scrollDirection: Axis.horizontal,
                          onScrolled: (index) => setState(() {
                                currentIndex = (index! - 10000.0).toInt();
                              }),
                          onPageChanged: (index, reason) =>
                              setState(() => currentIndex = index)),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30.h),
                      child: DotsIndicator(
                          dotsCount: 3,
                          position: currentIndex.toDouble(),
                          decorator: DotsDecorator(
                              activeColor: Colors.white,
                              size: Size.square(9),
                              activeSize: Size(18, 9),
                              activeShape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)))),
                    ),
                  ],
                ),
                Positioned(
                  top: 60.h,
                  left: 20.w,
                  child: AppIcon(icon: Icons.arrow_back_ios),
                )
              ])),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                bigText(text: 'Platinum Grand', size: 20),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    smallText(
                        text: 'Tokyo square, Japan ',
                        size: 14,
                        color: Colors.black),
                    Text('-'),
                    smallText(
                        text: '  Show in map', color: Colors.grey, size: 14)
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                smallText(
                    text:
                        'This upscale, contemporary hotel is 2 km from Hazrat Shahjalal International Airport and 11 km from Jatiyo Sangsad Bhaban,the Bangladesh Parliament complex.',
                    color: Color(0xff8492A7),
                    size: 12),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        smallText(
                            text: 'Price', color: Color(0xff8492A7), size: 14),
                        SizedBox(
                          height: 5,
                        ),
                        smallText(text: '\$120', size: 14, color: Colors.black),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        smallText(
                            text: 'Reviews',
                            color: Color(0xff8492A7),
                            size: 14),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            smallText(
                                text: '4.5', size: 14, color: Colors.indigo),
                            Wrap(
                              children: List.generate(4, (index) {
                                if (index == 3) {
                                  return Icon(
                                    Icons.star_half,
                                    color: Colors.indigo,
                                    size: 14,
                                  );
                                }
                                return Icon(
                                  Icons.star,
                                  color: Colors.indigo,
                                  size: 14,
                                );
                              }),
                            )
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: [
                        smallText(
                            text: 'Recently booked',
                            color: Color(0xff8492A7),
                            size: 14),
                        SizedBox(
                          height: 5,
                        ),
                        Wrap(
                          spacing: -8,
                          children: List.generate(4, (index) {
                            if (index == 3) {
                              return CircleAvatar(
                                  backgroundColor: Colors.indigo,
                                  radius: 10,
                                  child: smallText(
                                    text: '+5',
                                    size: 14,
                                  ));
                            }
                            return CircleAvatar(
                                radius: 10,
                                backgroundImage:
                                    AssetImage('assets/images/user_image.png'));
                          }),
                        ),
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                bigText(text: 'Aminities'),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DetailsIcon(
                        image: 'assets/images/sports-car.svg', text: 'Parking'),
                    SizedBox(
                      width: 10,
                    ),
                    DetailsIcon(image: 'assets/images/bath.svg', text: 'Bath'),
                    SizedBox(
                      width: 10,
                    ),
                    DetailsIcon(
                        image: 'assets/images/glass-and-bottle.svg',
                        text: 'Bar'),
                    SizedBox(
                      width: 10,
                    ),
                    DetailsIcon(image: 'assets/images/wifi.svg', text: 'Wifi'),
                    SizedBox(
                      width: 10,
                    ),
                    DetailsIcon(image: 'assets/images/gym.svg', text: 'Gym'),
                    SizedBox(
                      width: 10,
                    ),
                    DetailsIcon(image: 'assets/images/more.svg', text: 'More'),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Material(
                      shadowColor: Color(0x707070),
                      borderRadius: BorderRadius.circular(10),
                      elevation: 5,
                      child: SizedBox(
                          width: 55.w,
                          height: 55.h,
                          child: Center(
                              child: Icon(
                            Icons.favorite_border,
                            size: 24,
                            color: Colors.indigo,
                          ))),
                    ),
                    Spacer(),
                    Material(
                      shadowColor: Color(0x707070),
                      borderRadius: BorderRadius.circular(10),
                      elevation: 5,
                      child: Container(
                          height: 55.h,
                          width: 250.w,
                          decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                              child: Text(
                            'Book now',
                            style: TextStyle(color: Colors.white),
                          ))),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget DetailsIcon({required String image, required String text}) {
    return Column(
      children: [
        Material(
          shadowColor: Color(0x707070),
          borderRadius: BorderRadius.circular(10),
          elevation: 5,
          child: SizedBox(
            width: 30.w,
            height: 30.h,
            child: SvgPicture.asset(
              '$image',
              fit: BoxFit.none,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        smallText(text: text, color: Color(0xff8492A7))
      ],
    );
  }

  Widget AppIcon(
          {required IconData icon,
          double size = 40,
          double iconSize = 16,
          Color backgroundColor = const Color(0xFFfcf4e4),
          Color iconColor = const Color(0xFF756d54)}) =>
      Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(size / 2),
            color: backgroundColor),
        child: Icon(
          icon,
          color: iconColor,
          size: iconSize,
        ),
      );
}
