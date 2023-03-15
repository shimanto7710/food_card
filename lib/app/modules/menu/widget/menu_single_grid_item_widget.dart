import 'package:flutter/material.dart';
import 'package:food_card/app/modules/menu/controllers/menu_controller.dart';

import '../../../styles/app_colors.dart';
import '../../../styles/app_spacing.dart';

class MenuSingleGridItemWidget extends StatelessWidget {
  const MenuSingleGridItemWidget(
      {Key? key, required this.controller, required this.index})
      : super(key: key);
  final MenuController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: AppColors.white,
      /*shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),*/
      child: Stack(
        children: [
          Card(
            elevation: .2,
            color: AppColors.bg,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10)),
              // side: BorderSide(color: Colors.grey, width: 2.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        fit: BoxFit.cover,
                        "https://hub.sensor.buzz/upg-files/api/v1/file-serve/f40b36a5-5cea-460f-afbd-ccf682993653.jpg"),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Avocada Salad",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "20 min",
                      style: TextStyle(color: AppColors.grey),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.favorite,
                      color: AppColors.yellow,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text("4.5", style: TextStyle(color: AppColors.grey)),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:  const [
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "\u09F3 200 (x2)",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    /*Container(
                      margin: const EdgeInsets.only(bottom: 5),
                      child: const Text(
                        "(x2)",
                        style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: AppColors.appGreen),
                      ),
                    ),*/
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Card(
              elevation: 0,
              color: AppColors.green,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
              ),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: const Icon(
                  Icons.add,
                  color: AppColors.white,
                ),
              ),
            ),
          ),
          /*const Positioned(bottom: 0, right: 0,child: Padding(
            padding: EdgeInsets.only(right: 60, bottom: 10),
            child: Text("2", style: TextStyle(color: AppColors.appGreen,fontSize: 20),),
          ),)*/
        ],
      ),
    );
  }
}
