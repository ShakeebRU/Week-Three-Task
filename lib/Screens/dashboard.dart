import 'package:flutter/material.dart';
import 'package:homefive/Models/profile_model.dart';
import 'package:homefive/Widgets/list_view_widget.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  List<ProfileModel> detail = [
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Hair Color Treatments",
        label: "AED 162"),
    ProfileModel(
        image: "assets/images/lazy_cs3373_1457 copy@2x.png",
        title: "Cut step",
        label: "AED 50"),
    ProfileModel(
        image: "assets/images/sssss@2x.png",
        title: "Short Length",
        label: "AED 100"),
    ProfileModel(
        image: "assets/images/Layer 0@2x.png",
        title: "Hair Color Treatments",
        label: "AED 162"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Center(
          child: Text(
            "Lux Barber",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        actions: [
          Image.asset(
            "assets/images/shopping-cart@3x.png",
            height: 30,
            width: 30,
          ),
        ],
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage(
                        "assets/images/blur-feather-wool-dark-black-with-light-abstract-background-nattaya-mahaum.jpg"),
                    fit: BoxFit.cover,
                    opacity: 0.9)),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/Malikat Allail Galle@2x.png"))),
                      ),
                      const Text(
                        "Luxe Barbar",
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: const [
                          Image(
                              height: 30,
                              width: 30,
                              image: AssetImage(
                                  "assets/images/Group 1441@2x.png")),
                          Text(
                            "\t\t\t+971-000-2145-56",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50)),
                            child: const Image(
                              height: 10,
                              width: 10,
                              image: AssetImage(
                                "assets/images/ic_call_24px@2x.png",
                              ),
                              color: Color.fromARGB(255, 68, 66, 66),
                            ),
                          ),
                          const Text(
                            "\t\t\t+971-000-2145-56",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Image(
                              height: 30,
                              width: 30,
                              image: AssetImage(
                                  "assets/images/Group 1439@2x.png")),
                          Text(
                            "\t\t\tMap Direction",
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                    right: 10,
                  ),
                  child: const Divider(
                    color: Colors.grey,
                    height: 4,
                  ),
                ),
              ),
              const Text(
                "Services",
                style: TextStyle(fontSize: 17),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                    left: 10,
                  ),
                  child: const Divider(
                    color: Colors.grey,
                    height: 4,
                  ),
                ),
              )
            ],
          ),
          ListViewWidget(
            detail: detail,
          ),
        ],
      ),
    );
  }
}
