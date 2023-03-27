import 'package:flutter/material.dart';

import '../../../utls/constant.dart';
import '../controllers/menu_controller.dart';

class MenuSingleListItemWidget extends StatelessWidget {
  MenuSingleListItemWidget({Key? key, required this.controller, required this.index})
      : super(key: key);

  MenuController controller;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          margin: const EdgeInsets.only(left: 10, right: 10),
          height: 120,
          width: 120,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
                fit: BoxFit.cover,
                controller.menuList[index].image ?? Constant.dummyImage),
          ),
        ),
      ],
    );
  }
}
