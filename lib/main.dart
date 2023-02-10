import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_shop_app/DetailsPage.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: Container(
          height: 70,
          color: Colors.white,
          child: Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                    boxShadow: [
                        BoxShadow(blurRadius: 20,color: Color.fromARGB(255, 81, 77, 77),spreadRadius: 1)
                    ]
                    ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildContainerBottomNavigation(Icons.person),
                buildContainerBottomNavigation(Icons.shopping_bag),
                buildContainerBottomNavigation(Icons.home, isSelected: true),
                buildContainerBottomNavigation(Icons.favorite),
                buildContainerBottomNavigation(Icons.settings),
              ],
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 240, 230, 230),
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: const Color.fromARGB(255, 240, 230, 230),
          elevation: 0,
          leading: Image.asset("assets/images/hamburger.png"),
          actions: [
            Container(
              margin: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              child: Image.asset("assets/images/SEARCH.png"),
            )
          ],
        ),
        body: Column(children: [
          Row(children: const [
            SizedBox(
              width: 15,
            ),
            Text(
              'Shop ',
              style: TextStyle(fontSize: 26, letterSpacing: 1),
            ),
            Text(
              'Anthropologie',
              style: TextStyle(
                  fontSize: 32, fontWeight: FontWeight.bold, letterSpacing: 2),
            ),
          ]),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              newMethod_textbutton("Home Decore", isSelected: true),
              newMethod_textbutton("Bath & body"),
              newMethod_textbutton("Beauty"),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 97, 85, 85),
                      spreadRadius: 1,
                      blurRadius: 15,
                    )
                  ]),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: const BouncingScrollPhysics(),
                child: Column(children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      buildColumnAtTop('Cadels', isSelected: true),
                      buildColumnAtTop('Vases'),
                      buildColumnAtTop('Bins'),
                      buildColumnAtTop('floral'),
                      buildColumnAtTop('Decor'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const MycandelsList(),
                  const SizedBox(
                    height: 20,
                  ),
                  const LineBar(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: const [
                        Text(
                          'Holiday Special',
                          style: TextStyle(fontSize: 22),
                        ),
                        Spacer(),
                        Text(
                          'View All',
                          style: TextStyle(fontSize: 19, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      children: [
                        buildBottomContainer('2'),
                        buildBottomContainer('4'),
                        buildBottomContainer('3'),
                        buildBottomContainer('1'),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Container buildContainerBottomNavigation(IconData icon,
      {bool isSelected = false}) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? const Color.fromARGB(255, 240, 85, 136) : Colors.white,
        shape: BoxShape.circle,
        boxShadow: isSelected
            ? [const BoxShadow(color: Colors.grey, blurRadius: 10, spreadRadius: 1)]
            : [],
      ),
      height: 50,
      width: 50,
      child: Icon(
        icon,
        color: isSelected ? Colors.white : Colors.black,
      ),
    );
  }

  Container buildBottomContainer(String img) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: 170,
      width: 250,
      child: Row(children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: SizedBox(
                height: 150,
                width: 100,
                child: Image.asset(
                  'assets/images/candel$img.jpg',
                  fit: BoxFit.cover,
                ))),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Herbivore Coconut\n Milk Bath Soak'),
              Text(
                '16 oz',
                style: TextStyle(color: Colors.grey, fontSize: 18),
              ),
              Spacer(),
              Text(
                '\$ 28',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
              ),
            ],
          ),
        ),
      ]),
    );
  }

  

  Column buildColumnAtTop(String text, {bool isSelected = false}) {
    return Column(
      children: [
        Text(
          text,
          style: TextStyle(
              fontSize: 18,
              color: isSelected
                  ? Colors.black
                  : const Color.fromARGB(255, 114, 108, 108)),
        ),
        const SizedBox(
          height: 5,
        ),
        if (isSelected)
          Container(
            height: 5,
            width: 5,
            decoration:
                const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
          ),
      ],
    );
  }

  TextButton newMethod_textbutton(String text, {bool isSelected = false}) {
    return TextButton(
      onPressed: () {
       
      },
      child: Text(
        text,
        style: TextStyle(
            color: isSelected ? Colors.white : Colors.black, fontSize: 18),
      ),
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          )),
          backgroundColor: MaterialStateProperty.all<Color>(
            isSelected
                ? const Color.fromARGB(255, 243, 159, 187)
                : const Color.fromARGB(255, 203, 194, 194),
          )),
    );
  }
}

class MycandelsList extends StatelessWidget {
  const MycandelsList({super.key});

  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const SizedBox(
            width: 13,
          ),
          buildColumnwithRow('1', 'Elemental tin candel', '29',context),
          buildColumnwithRow('2', 'Summer Candel', '23',context),
          buildColumnwithRow('3', 'Winter Candel', '40',context),
          buildColumnwithRow('4', 'Dummy Candel', '60',context),
        ],
      ),
    );
  }
  GestureDetector buildColumnwithRow(String img, String title, String price,BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return DetailsPage(img,title,price,context);
              }));
      },
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Container(
                height: 220,
                width: 170,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/candel$img.jpg',
                      fit: BoxFit.cover,
                    ))),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 15),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '\$$price',
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}

class LineBar extends StatelessWidget {
  const LineBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 25),
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 210, 202, 202),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
      height: 5,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
        height: 5,
        width: 100,
      ),
    );
  }
}
