import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   final CarouselController _carouselController = CarouselController();
  int _currentCarouselIndex = 0;
  final List<String> imageList = [
     'assets/images/1.jpg',
     'assets/images/3.jpg',
     'assets/images/4.jpg',
     'assets/images/3.jpg',
  ];

  final List<String> categoryImages = [
   'assets/images/5.jpg',
   'assets/images/6.jpg',
   'assets/images/7.jpg',
   'assets/images/9.jpg',
  ];

    final List<String> categoryNames = [
    'Sneakers',
    'Shoes',
    'Apparel',
    'Accessories',
   
  ];
   final List<String> brandNames = [
    'Puma',
    'Supreme',
    'Jordan',
    'Nike',
    
    ];
   @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
             Stack(
  children: [
    CarouselSlider(
      carouselController: _carouselController,
      options: CarouselOptions(
        height: 300,
        enableInfiniteScroll: true,
        autoPlay: false,
        enlargeCenterPage: false,
        viewportFraction: 1.0,
        aspectRatio: MediaQuery.of(context).size.width / 300,
        onPageChanged: (index, reason) {
          setState(() {
            _currentCarouselIndex = index;
          });
        },
      ),
      items: imageList.map((imageUrl) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    ),
    Positioned(
      bottom: 8.0,
      left: 0.0,
      right: 10.0,
      child: DotsIndicator(
        dotsCount: imageList.length,
        position: _currentCarouselIndex,
        decorator: DotsDecorator(
          activeColor: Colors.grey,
          size: const Size.square(5.0),
          activeSize: const Size(14.0, 9.0),
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
      ),
    ),
  ],
),

              SizedBox(height: 20),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    "Shop By Category",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 150, 
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 120,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
                        children: [
                          SizedBox(
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              categoryImages[index % categoryImages.length],
                              fit: BoxFit.cover,
                              alignment: Alignment.center,
                            ),
                          ),
                          Text(
                            categoryNames[index % categoryNames.length],
                             style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
  ],
                      ),
                    );
                    
                  },
                ),
              ),
               SizedBox(height: 20),
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0),
                  child: Text(
                    "Popular Brands",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
Container(
  height: 150,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: 7,
    itemBuilder: (context, index) {
      return Container(
        width: 120,
        margin: EdgeInsets.symmetric(horizontal: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 110, 
              child: FractionallySizedBox(
                widthFactor: 1.0,
                //heightFactor: 1.0,
                child: Image.asset(
                  categoryImages[index % categoryImages.length],
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0), 
              color: Colors.grey.withOpacity(0.3), 
              child: Text(
                brandNames[index % brandNames.length],
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      );
    },
  ),
),

              
            ],
          ),
        ),
      ),
    );
  }
}