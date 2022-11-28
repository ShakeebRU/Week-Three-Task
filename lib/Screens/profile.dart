import 'package:flutter/material.dart';
import 'package:homefive/Models/profile_model.dart';

class Profile extends StatefulWidget {
  final ProfileModel data;
  const Profile({super.key, required this.data});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
              alignment: Alignment.topLeft,
              height: 450,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.brown,
                  image: DecorationImage(
                      image: AssetImage(widget.data.image), fit: BoxFit.cover)),
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    )),
              )),
          SizedBox(
            height: 40,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.circle,
                  color: Colors.grey,
                  size: 10,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.grey,
                  size: 10,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.grey,
                  size: 10,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.grey,
                  size: 10,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.circle,
                  color: Colors.black,
                  size: 10,
                ),
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 6,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.red,
                  size: 25,
                ),
                const Text(
                  "Lux Barbar",
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Column(
                  children: [
                    Text(
                      widget.data.title,
                      style: const TextStyle(
                          fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Multi shade shine",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                const Center(
                  child: Text(
                    " I'd like to know how to center the contents of a Text widget vertically and horizontally in Flutter. I only know how to center the widget itself using Center(child: but not the content itself.the widget itself using Center. ",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        elevation: 20,
        child: Row(
          children: [
            Container(
              width: 110,
              color: Colors.white,
              child: Center(
                  child: Text(
                widget.data.label,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              )),
            ),
            Expanded(
              child: Container(
                height: 60,
                color: Colors.red,
                child: const Center(
                    child: Text(
                  "Book This",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
            ),

            // TextButton(onPressed: () {}, child: const Text("AED 166")),
            // TextButton(onPressed: () {}, child: const Text("Book This"))
          ],
        ),
      ),
    );
  }
}
