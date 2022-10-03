import 'package:course/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HotalHomePage extends StatelessWidget {
  List<String> hotelsImages = [
'assets/images/apartment-bed.png' ,
'assets/images/bed-bedroom.png' ,
        'assets/images/bedroom-hotels.png'
          ];
  List<String> hotelsName = ['Sultans dine' , 'Radison blue' , 'Queen hotel'] ;
  List<String> hotelsLocation = ['Kingdom Tower, Brazil ' , 'Tokyo square, Japan' , 'Kingdom Tower, Brazil'] ;
  List<String> hotelsPricePerNaight = ['\$180/night' , '\$180/night' , '\$180/night'] ;

  List<String> packageImages = [
      'assets/images/derick-mckinney.png' ,
      'assets/images/ialicante-mediterranean-homes.png'
  ];
  List<String> packagesName = ['The westin dhaka' , 'Platinum Grand'] ;
  List<String> packagesLocation = ['Kensington palace ' , 'Kensington palace' ] ;
  List<bool> isBook =[true,false] ;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      smallText(
                          text: 'Hello Pragathesh',
                          color: Colors.grey,
                          size: 16),
                      SizedBox(
                        height: 10,
                      ),
                      bigText(text: 'Find your hotel', size: 24)
                    ],
                  ),
                  Spacer(),
                  Container(
                    width: 42.w,
                    height: 42.h,
                   
                    child: Material(
                        elevation: 10,
                        shadowColor: Colors.grey,
                        borderRadius: BorderRadius.circular(20),
                        child:  Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('assets/images/user_image.png'))),
                        ),),
                  )
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(12),
                  shadowColor: Color(0x55434343),
                  child: TextField(
                    textAlign: TextAlign.start,
                    textAlignVertical: TextAlignVertical.center,
                    decoration: InputDecoration(
                        hintText: 'Search for hotels',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        border: InputBorder.none),
                  )),
              SizedBox(
                height: 30.h,
              ),
             bigText(text: 'Popular hotels') ,
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 210.h,
                  width: double.maxFinite,
                  child: ListView.builder(
                      physics: BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) => PopularHotelsListItem(image: hotelsImages[index] ,
                      name: hotelsName[index] , location: hotelsLocation[index] , price: hotelsPricePerNaight[index]),
                      itemCount: 3),
                ),
              ),

              bigText(text: 'Hot packages'),
              SizedBox(
                height: 20.h,
              ),
              ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 2,
                  itemBuilder: (context, index) => HotPackagesListItem(image: packageImages[index] ,
                  name: packagesName[index] , location: packagesLocation[index] , isBook: isBook[index])),
            ],
          ),
        ),
      ),
    );
  }

  Widget PopularHotelsListItem({
    required String image ,
    required String name ,
    required String location,
    required String price}) {
    return Container(
      width: 135.w,
      height: 210.h,
      margin: EdgeInsetsDirectional.only(end: 20, bottom: 30),
      child: Material(
        shadowColor: Color(0x707070),
        borderRadius: BorderRadius.circular(20),
        elevation: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 135.w,
              height: 120.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(20),
                      topEnd: Radius.circular(20)),
                  color: Colors.white38,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('$image'))),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  bigText(text: '$name', size: 12),
                  smallText(
                    text: '$location',
                    size: 10,
                    color: Colors.grey,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      smallText(
                          text: '$price',
                          color: Colors.indigo,size: 10),
                      Spacer(),
                      Row(
                        children: [
                          Text(
                            '4.5',
                            style:
                                TextStyle(color: Colors.indigo, fontSize: 10),
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.indigo,
                            size: 10,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget HotPackagesListItem({required String image , required String name , required String location , required bool isBook}) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Material(
        shadowColor: Color(0x707070),
        borderRadius: BorderRadius.circular(20),
        elevation: 5,
        child: Row(
          children: [
            Container(
              width: 98.w,
              height: 124.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(20),
                      bottomStart: Radius.circular(20)),
                  color: Colors.white38,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('$image'))),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
                height: 124,
                // width: Dimenstions.ListTextContainerWidth ,
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.only(
                        topEnd: Radius.circular(20),
                        bottomEnd: Radius.circular(20)),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    bigText(text: '$name' , size: 16),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on_outlined,
                          size: 10,
                        ),
                        smallText(text: '$location' , color: Colors.grey , size: 12),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    smallText(
                        text: '\$180/night',
                        color: Colors.indigo,size: 10),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          'assets/images/sports-car.svg',
                          color: isBook?Colors.indigo : Colors.green,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          'assets/images/bath.svg',
                          color: isBook?Colors.indigo : Colors.green,

                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          'assets/images/glass-and-bottle.svg',
                          color: isBook?Colors.indigo : Colors.green,

                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset(
                          'assets/images/wifi.svg',
                          color: isBook?Colors.indigo : Colors.green,

                        ),
                        SizedBox(
                          width: 10,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            RotatedBox(
              quarterTurns: 3,
              child: Container(
                margin: EdgeInsetsDirectional.only(bottom: 10),
                  height: 47.h,
                  width: 105.w,
                  decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                      child: Text(
                    isBook?'Book now':'',
                    style: TextStyle(color: Colors.white),
                  ))),
            )
          ],
        ),
      ),
    );


  }
}
