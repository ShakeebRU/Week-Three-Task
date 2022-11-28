import 'package:flutter/material.dart';
import 'package:homefive/Models/profile_model.dart';
import 'package:homefive/Screens/profile.dart';

class ListViewWidget extends StatefulWidget {
  final List<ProfileModel> detail;
  const ListViewWidget({super.key, required this.detail});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      itemCount: widget.detail.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return Profile(data: widget.detail[index]);
                },
              ),
            );
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 130,
                  width: 130,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(widget.detail[index].image))),
                ),
                const SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.detail[index].title,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      widget.detail[index].label,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ],
                )),
                const Icon(
                  Icons.arrow_right,
                  size: 50,
                ),
                const SizedBox(
                  width: 15,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
