import 'package:flutter/material.dart';


class DetailsPage extends StatelessWidget {
  final String img;
  final String title;
  final String price;
  final BuildContext context;
  const DetailsPage(this.img, this.title, this.price, this.context,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Image.asset(
          "assets/images/candel$img.jpg",
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        IconButton(
            padding: const EdgeInsets.only(top: 70, left: 20),
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.close)),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height / 2.3,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(children: [
              Expanded(
                  child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('ILLUM'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            title,
                            style: const TextStyle(fontSize: 28),
                          ),
                          Text(
                            price,
                            style: const TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('SIZE'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '16 OZ',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('QTY'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  '1',
                                  style: TextStyle(fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        thickness: 1.5,
                      ),
                      ListTile(
                        leading: const Text(
                          "Details",
                          style: TextStyle(fontSize: 18),
                        ),
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      const Divider(
                        thickness: 1.5,
                      ),
                      ListTile(
                        leading: const Text(
                          "Shipping & returns",
                          style: TextStyle(fontSize: 18),
                        ),
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.add,
                            color: Colors.black,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              )),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 59,
                        width: 59,
                        child: Icon(Icons.favorite_border),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                            ),
                            shape: BoxShape.circle),
                      ),
                      TextButton.icon(
                        style: TextButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor:
                                const Color.fromARGB(255, 236, 97, 144),
                            padding: EdgeInsets.symmetric(
                              horizontal: MediaQuery.of(context).size.width / 7,
                              vertical: 10,
                            )),
                        onPressed: () {},
                        label: const Text(
                          'Add to Basket',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              letterSpacing: 1),
                        ),
                        icon: const Icon(
                          Icons.shopping_bag_outlined,
                          color: Colors.white,
                        ),
                      )
                    ]),
              )
            ]),
          ),
        ),
      ],
    ));
  }
}
