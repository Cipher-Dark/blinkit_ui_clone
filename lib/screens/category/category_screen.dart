import 'package:flutter/material.dart';
import 'package:blinkit_clone/widgets/ui_helper.dart';

class CategoryScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var firstGroceryKitchen = [
    {
      "img": "image 41.png",
      "text": "Vegitables & \nFruits"
    },
    {
      "img": "image 42.png",
      "text": "Atta, Dal & \nRice"
    },
    {
      "img": "image 43.png",
      "text": "Oil, Ghee & \nMasala"
    },
    {
      "img": "image 44 (1).png",
      "text": "Dairy, Bread & \nMilk"
    },
    {
      "img": "image 45 (1).png",
      "text": "Biscuits & \nBakery"
    }
  ];
  var secondGroceryKitchen = [
    {
      "img": "image 21.png",
      "text": "Dry Fruits & \nCereals"
    },
    {
      "img": "image 22.png",
      "text": "Kitchen & \nAppliances"
    },
    {
      "img": "image 23.png",
      "text": "Tea & \nCoffees"
    },
    {
      "img": "image 24.png",
      "text": "Ice Cream & \nmuch more"
    },
    {
      "img": "image 25.png",
      "text": "Noodels & \nPacket Food"
    }
  ];

  var snackAndDrink = [
    {
      "img": "image 31.png",
      "text": "Chips & \nNamkeen"
    },
    {
      "img": "image 32.png",
      "text": "Sweets & \nChocolates"
    },
    {
      "img": "image 33.png",
      "text": "Drink & \nJuices"
    },
    {
      "img": "image 34.png",
      "text": "Sauces & \nSpreads"
    },
    {
      "img": "image 35.png",
      "text": "Beauty & \nCosmetics"
    }
  ];
  var houseHold = [
    {
      "img": "image 36.png",
    },
    {
      "img": "image 37.png",
    },
    {
      "img": "image 38.png",
    },
    {
      "img": "image 39.png",
    },
    {
      "img": "image 40.png",
    }
  ];

  CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40),
          Stack(
            children: [
              Container(
                height: 190,
                width: double.infinity,
                color: Color(0XFFF7CB45),
                child: Column(
                  children: [
                    SizedBox(height: 30),
                    Column(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            UiHelper.customText(text: "Blikit in", color: Color(0XFF000000), fontWeight: FontWeight.bold, fontSize: 15, fontFamily: "bold")
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            UiHelper.customText(text: "16 minutes", color: Color(0XFF000000), fontWeight: FontWeight.bold, fontSize: 20, fontFamily: "bold")
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            UiHelper.customText(
                              text: "Home ",
                              color: Color(0XFF000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: "bold",
                            ),
                            UiHelper.customText(
                              text: "- Sagar Bisht, Pauri, Pauri gadwalh ",
                              color: Color(0XFF000000),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: "bold",
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                right: 20,
                bottom: 100,
                child: CircleAvatar(radius: 15, backgroundColor: Colors.white, child: Icon(Icons.person)),
              ),
              Positioned(
                bottom: 30,
                left: 30,
                child: UiHelper.customTextFiled(
                  textEditingController: searchController,
                ),
              )
            ],
          ),
          SizedBox(height: 40),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.customText(
                text: "Grocery and Kitchen",
                color: Color(0XFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontFamily: 'bold',
              )
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: UiHelper.customImage(img: firstGroceryKitchen[index]['img'].toString()),
                        ),
                      ),
                      UiHelper.customText(text: firstGroceryKitchen[index]['text'].toString(), color: Color(0XFF000000), fontWeight: FontWeight.normal, fontSize: 10)
                    ],
                  );
                },
                itemCount: firstGroceryKitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: UiHelper.customImage(img: secondGroceryKitchen[index]['img'].toString()),
                        ),
                      ),
                      UiHelper.customText(text: secondGroceryKitchen[index]['text'].toString(), color: Color(0XFF000000), fontWeight: FontWeight.normal, fontSize: 10)
                    ],
                  );
                },
                itemCount: secondGroceryKitchen.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.customText(
                text: "Snacks & Drinks",
                color: Color(0XFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontFamily: 'bold',
              ),
            ],
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: UiHelper.customImage(img: snackAndDrink[index]['img'].toString()),
                        ),
                      ),
                      UiHelper.customText(text: snackAndDrink[index]['text'].toString(), color: Color(0XFF000000), fontWeight: FontWeight.normal, fontSize: 10)
                    ],
                  );
                },
                itemCount: snackAndDrink.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.customText(
                text: "Household Essentials",
                color: Color(0XFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 14,
                fontFamily: 'bold',
              ),
            ],
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 78,
                          width: 71,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Color(0XFFD9EBEB),
                          ),
                          child: UiHelper.customImage(img: houseHold[index]['img'].toString()),
                        ),
                      ),
                    ],
                  );
                },
                itemCount: houseHold.length,
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
