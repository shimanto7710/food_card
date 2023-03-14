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
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: MaterialButton(
          onPressed: () {
            /*controller.navigateToDetailPage(
              controller, controller.regionList[index].region);*/
          },
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        fit: BoxFit.cover,
                        "https://cdn.worldweatheronline.com/images/wsymbols01_png_64/wsymbol_0004_black_low_cloud.png"),
                  ),
                  const Spacer(),
                  const Expanded(
                      child: Text(
                    "asdasdasd",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "20 min",
                        style: TextStyle(color: AppColors.grey),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.favorite,
                        color: AppColors.yellow,
                      ),
                      const SizedBox(width: 2,),
                      Text("4.5", style: TextStyle(color: AppColors.grey)),
                      const SizedBox(width: 10,),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              )
            ],
          )),
    );
  }
}
