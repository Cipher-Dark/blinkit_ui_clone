import 'package:blinkit_clone/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  TextEditingController searchController = TextEditingController();

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
          SizedBox(height: 15),
          UiHelper.customImage(img: "cart.png"),
          UiHelper.customText(
            text: "Recording Will be easy",
            color: Color(0XFF000000),
            fontWeight: FontWeight.bold,
            fontSize: 16,
            fontFamily: "bold",
          ),
          UiHelper.customText(
            text: "Items you order will be show up here so you can buy",
            color: Color(0XFF000000),
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          UiHelper.customText(
            text: "them again easily.",
            color: Color(0XFF000000),
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 20),
              UiHelper.customText(
                text: "Best Seller",
                color: Color(0XFF000000),
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: "bold",
              )
            ],
          ),
          SizedBox(height: 10),
          Row(
            spacing: 15,
            children: [
              SizedBox(
                width: 20,
              ),
              Column(children: [
                Stack(
                  children: [
                    UiHelper.customImage(img: "milk.png"),
                    Padding(
                      padding: EdgeInsets.only(top: 98, left: 65),
                      child: UiHelper.customButtom(() {}),
                    )
                  ],
                ),
                UiHelper.customText(text: "Amul Taaza Toned", color: Color(0XFF000000), fontWeight: FontWeight.normal, fontSize: 8),
              ]),
              Column(children: [
                Stack(
                  children: [
                    UiHelper.customImage(img: "milk.png"),
                    Padding(
                      padding: EdgeInsets.only(top: 98, left: 65),
                      child: UiHelper.customButtom(() {}),
                    )
                  ],
                ),
                UiHelper.customText(text: "Amul Taaza Toned", color: Color(0XFF000000), fontWeight: FontWeight.normal, fontSize: 8),
              ]),
              Column(children: [
                Stack(
                  children: [
                    UiHelper.customImage(img: "tomato.png"),
                    Padding(
                      padding: EdgeInsets.only(top: 98, left: 65),
                      child: UiHelper.customButtom(() {}),
                    )
                  ],
                ),
                UiHelper.customText(text: "Amul Taaza Toned", color: Color(0XFF000000), fontWeight: FontWeight.normal, fontSize: 8),
              ]),
            ],
          )
        ],
      ),
    );
  }
}
