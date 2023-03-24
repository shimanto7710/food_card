import 'package:flutter/material.dart';
import 'package:food_card/app/modules/menu/controllers/menu_controller.dart';
import 'package:food_card/app/utls/constant.dart';

import '../../../data/restarant_model/menu_model/menu_model.dart';
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
                        controller.menuList[index].image ??
                            Constant.dummyImage),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  controller.menuList[index].name ??
                      "None",
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
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
                      "${controller.menuList[index]
                          .time} min",
                      style: TextStyle(color: AppColors.grey),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.star,
                      color: AppColors.yellow,
                    ),
                    const SizedBox(
                      width: 2,
                    ),
                    Text(
                        controller.menuList[index].rating
                            .toString(),
                        style: TextStyle(color: AppColors.grey)),
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
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      controller.menuList[index]
                          .orderedQuantity !=
                          0
                          ? "\u09F3 ${controller.menuList[index].price} (x${controller
                          .menuList[index]
                          .orderedQuantity})"
                          : "\u09F3 ${controller.menuList[index].price}",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: GestureDetector(
              onTap: () {
                controller.addQuantity(index);
              },
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
          ),
          /*Positioned(
              top: 0,
              right: 0,
              child: GestureDetector(
                onTap: (){
                  controller.updateFav(controller.menuList[index], "4.3");
                },
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Icon(
                    Icons.favorite_border,
                    color: AppColors.red,
                  ),
                ),
              )),*/
        ],
      ),
    );
  }
}
