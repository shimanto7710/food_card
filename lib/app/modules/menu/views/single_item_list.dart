import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../styles/app_colors.dart';
import '../../../utls/constant.dart';
import '../controllers/menu_controller.dart';

class MenuSingleListItemWidget extends StatelessWidget {
  MenuSingleListItemWidget(
      {Key? key, required this.controller, required this.index})
      : super(key: key);

  MenuController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.all(15),
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  height: 120,
                  width: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                        fit: BoxFit.cover,
                        controller.orderedMenuList[index].image ??
                            Constant.dummyImage),
                  ),
                ),
              ),
              Expanded(
                flex: 4,
                child: Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Wrap(
                        alignment: WrapAlignment.start,
                        children: [
                          Text(
                            controller.orderedMenuList[index].name.toString(),
                            style: const TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Wrap(
                        children: [
                          Text(
                            "${controller.orderedMenuList[index].orderedQuantity}x",
                            style: const TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      Wrap(
                        children: [
                          Text(
                            "${Constant.taka} ${controller.orderedMenuList[index].price}",
                            style: const TextStyle(fontSize: 16),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: () {
                          controller.addQuantityOrderedList(index);
                        },
                        child: const Padding(
                            padding: EdgeInsets.all(15),
                            child: Icon(Icons.add))),
                    GestureDetector(
                        onTap: () {
                          controller.subQuantityOrderedList(index);
                        },
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Icon(Icons.minimize),
                        ))
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Container(
                    child: Text(
                      "\u09F3 ${controller.orderedMenuList[index].price! * controller.orderedMenuList[index].orderedQuantity}",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          ),
          Container(
            color: AppColors.grey,
            height: 0.5,
          )
        ],
      ),
    );
  }
}
