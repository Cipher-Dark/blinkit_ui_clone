import 'package:blinkit_clone/widgets/ui_helper.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatelessWidget {
  PrintScreen({super.key});
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFFBF0CE),
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
          SizedBox(height: 30),
          UiHelper.customText(
            text: "Print Store",
            color: Color(0XFF000000),
            fontWeight: FontWeight.bold,
            fontSize: 32,
          ),
          UiHelper.customText(
            text: "Blinkit ensures secure prints at every  stage",
            color: Color(0XFF9C9C9C),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
          SizedBox(
            height: 40,
          ),
          Stack(
            children: [
              Container(
                height: 180,
                width: 361,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        UiHelper.customText(
                          text: "Documnets",
                          color: Color(0XF0000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        )
                      ],
                    ),
                    Row(
                      spacing: 7,
                      children: [
                        SizedBox(width: 15),
                        UiHelper.customImage(img: "star.png"),
                        UiHelper.customText(
                          text: "Price starting at rs 3/page",
                          color: Color(0XFF9C9C9C),
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        )
                      ],
                    ),
                    Row(
                      spacing: 7,
                      children: [
                        SizedBox(width: 15),
                        UiHelper.customImage(img: "star.png"),
                        UiHelper.customText(
                          text: "Paper quality: 70 gsm",
                          color: Color(0XFF9C9C9C),
                          fontWeight: FontWeight.normal,
                          fontSize: 16,
                        )
                      ],
                    ),
                    Row(
                      spacing: 7,
                      children: [
                        SizedBox(width: 15),
                        UiHelper.customImage(img: "star.png"),
                        UiHelper.customText(
                          text: "Single side print",
                          color: Color(0XFF9C9C9C),
                          fontWeight: FontWeight.normal,
                          fontSize: 17,
                        )
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          height: 40,
                          width: 125,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0XFF27AF34),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            child: Text(
                              "Upload Files",
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 18,
                bottom: 40,
                child: UiHelper.customImage(img: "document.png"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
