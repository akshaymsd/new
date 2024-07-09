import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:max/widgets/container_widget.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  CarouselController carouselController=CarouselController();
  int _Controller=0;
  List<Map<String, dynamic>> imgList = [
    {"txt": "Men", "img": "assets/img/img1.jpg"},
    {"txt": "Men", "img": "assets/img/img1.jpg"},
    {"txt": "Men", "img": "assets/img/img1.jpg"},
    {"txt": "Men", "img": "assets/img/img1.jpg"},
    {"txt": "Men", "img": "assets/img/img1.jpg"},
    {"txt": "Men", "img": "assets/img/img1.jpg"},
    {"txt": "Men", "img": "assets/img/img1.jpg"},
  ];
  List slider = [
    "assets/img/img2.jpg",
    "assets/img/img2.jpg",
    "assets/img/img2.jpg",
    "assets/img/img2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag, color: Colors.black), label: "Home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border, color: Colors.black),
            label: "Home"),
      ]),
      appBar: AppBar(
        title: Row(children: [
          Text(
            "m",
            style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
          ),
          Text(
            "a",
            style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold),
          ),
          Text("x",
              style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold))
        ]),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_sharp))
        ],
      ),
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    fillColor: Colors.grey[200],
                    filled: true,
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none),
                    labelText: "Search here.",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.document_scanner_outlined)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: imgList.length,
                itemBuilder: (context, index) => GestureDetector(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ContainerWIdget(
                      txt: imgList[index]["txt"], img: imgList[index]["img"]),
                )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 700,
              height: 40,
              decoration: BoxDecoration(color: Colors.indigo.shade900),
              child: Row(
                children: [
                  Text(
                    "Max MANIA SALES.............AAAAAAAAAAAAAAAA 1245798888",
                    style: TextStyle(color: Colors.white),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios_sharp))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 150.0,
                autoPlay: true,
                clipBehavior: Clip.antiAlias,
                // scrollDirection: Axis.horizontal,
                scrollPhysics: BouncingScrollPhysics(),
              ),
              items: ["First", "Second", "Third", "Fourth"].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(color: Colors.amber),
                        child: Center(
                            child: Text(
                          ' $i',
                          style: TextStyle(fontSize: 16.0),
                        )));
                  },
                );
              }).toList(),
            ),
            // CarouselSlider.builder(itemCount: slider.length,
            //    options: CarouselOptions(autoPlay: true,
            //    clipBehavior: Clip.antiAlias,height: 150,
            //    aspectRatio: 2),
            //
            //
            //   itemBuilder: (context, index, realIndex) {
            //     return Image.asset(slider[index]);
            //
            //   }),

            Container(
              color: Colors.white,
              height: 300,
              width: 600,
              child: Column(
                children: [Align(alignment: Alignment.center
                    ,child: Text("Offer Zone"))],
              ),
            )
          ],
        ),
      ),
    );
  }
}
