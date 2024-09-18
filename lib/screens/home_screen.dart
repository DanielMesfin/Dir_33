import 'package:education_app_ui/Utils/colors.dart';
import 'package:education_app_ui/widgets/crosel_card.dart';
import 'package:education_app_ui/widgets/shimer_widget.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: ListView(
            children: [
              // Padding(
              //   padding: const EdgeInsets.symmetric(horizontal: 15),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //     children: [
              //       GFAvatar(
              //         radius: 20,
              //         backgroundImage: NetworkImage(
              //             "https://images.unsplash.com/photo-1726486896376-4d1340e2f672?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxmZWF0dXJlZC1waG90b3MtZmVlZHw5fHx8ZW58MHx8fHx8"),
              //       ),
              //       const Text(
              //         "Hi Julia",
              //         style:
              //             TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              //       ),
              //       Image.asset(
              //         "Images/search1.png",
              //         height: 40,
              //         width: 40,
              //       ),
              //     ],
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Hi Julia",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Today is a good day\nto for learn someting new!",
                          style: TextStyle(color: Colors.black54, fontSize: 17),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Image.asset(
                      "Images/profile.png",
                      height: 110,
                      width: 100,
                    )
                  ],
                ),
              ),
              
              const SizedBox(
                height: 10,
              ),
              Carousel(),
             
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Card(
                      color: Colors.green,
                      child: SizedBox(
                        height: 50,
                        width: 90,
                        child: Center(
                          child: Text(
                            "Top",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      " Design",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    const Text("Marketing",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    Image.asset(
                      "Images/filter.png",
                      height: 40,
                    
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Categories",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    Text(
                      "See all",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ShimerWidget(),
              const SizedBox(
                height: 10,
              ),
              ShimerWidget(),
              const SizedBox(
                height: 10,),
              ShimerWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
  Padding displayImage(double heigh, image) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Expanded(
          child: SizedBox(
        height: heigh,
        width: 193,
        child: Image.asset(
          image,
          fit: BoxFit.fill,
        ),
      )),
    );
  }
