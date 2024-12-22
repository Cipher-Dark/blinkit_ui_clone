import 'package:blinkit_clone/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  var data = [
    {
      "img": "image 50.png",
      "text": "Lights, Diyas \n& Candles"
    },
    {
      "img": "image 51.png",
      "text": "Diwali \n& Gifts"
    },
    {
      "img": "image 52.png",
      "text": "Appliances \n& Gadgets "
    },
    {
      "img": "image 53.png",
      "text": "Home \n& Living"
    }
  ];
  var category = [
    {
      "img": "image 54.png",
      "text": "Golden glass \n& Wooden Lid Candle (Oudh)"
    },
    {
      "img": "image 57.png",
      "text": "Royal Gulab Jamun \n& By Bikano"
    },
    {
      "img": "image 63.png",
      "text": "Bikaji \nbhujia "
    }
  ];
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
  HomeScreen({super.key});

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
                color: Color(0XFFEC0505),
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
                            UiHelper.customText(text: "Blikit in", color: Color(0XFFFFFFFF), fontWeight: FontWeight.bold, fontSize: 15, fontFamily: "bold")
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            UiHelper.customText(text: "16 minutes", color: Color(0XFFFFFFFF), fontWeight: FontWeight.bold, fontSize: 20, fontFamily: "bold")
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            UiHelper.customText(
                              text: "Home ",
                              color: Color(0XFFFFFFFF),
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: "bold",
                            ),
                            UiHelper.customText(
                              text: "- Sagar Bisht, Pauri, Pauri gadwalh ",
                              color: Color(0XFFFFFFFF),
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
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
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
          Divider(
            thickness: 1,
            height: 2,
          ),
          Container(
            height: 196,
            width: double.infinity,
            color: Color(0XFFEC0505),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    UiHelper.customImage(img: "image 60.png"),
                    UiHelper.customImage(img: "image 55.png"),
                    UiHelper.customText(text: "Mega Diwali Sale", color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20, fontFamily: 'bold'),
                    UiHelper.customImage(img: "image 55.png"),
                    UiHelper.customImage(img: "image 61.png"),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10, top: 1, bottom: 1),
                          child: Container(
                            height: 108,
                            width: 86,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Color(0XFFEAD3D3)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                UiHelper.customText(
                                  text: data[index]["text"].toString(),
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 10,
                                ),
                                UiHelper.customImage(img: data[index]["img"].toString())
                              ],
                            ),
                          ),
                        );
                      },
                      itemCount: data.length,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        height: 108,
                        width: 93,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: UiHelper.customImage(
                          img: category[index]['img'].toString(),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: UiHelper.customText(text: category[index]['text'].toString(), color: Colors.black, fontWeight: FontWeight.bold, fontSize: 8),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: const EdgeInsets.only(right: 40.0),
                        child: Row(
                          children: [
                            UiHelper.customImage(img: "timer 4.png"),
                            UiHelper.customText(text: "16 MINS", color: Color(0XFF9C9C9C), fontWeight: FontWeight.normal, fontSize: 10)
                          ],
                        ),
                      ),
                      SizedBox(height: 5),
                      Padding(
                        padding: EdgeInsets.only(right: 60),
                        child: Row(
                          children: [
                            UiHelper.customImage(img: "image 50 (1).png"),
                            UiHelper.customText(text: "79", color: Color(0XFF000000), fontWeight: FontWeight.bold, fontSize: 15, fontFamily: 'bold')
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
              itemCount: category.length,
              scrollDirection: Axis.horizontal,
            ),
          ),
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
        ],
      ),
    );
  }
}
