import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_card/app/modules/menu/views/single_item_list.dart';
import 'package:food_card/app/styles/app_colors.dart';

import '../controllers/menu_controller.dart';

class BottomSheetView extends StatelessWidget {
  const BottomSheetView(
      {Key? key, required this.controller})
      : super(key: key);

  final MenuController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.only(
                  top: 50, left: 20, right: 20, bottom: 20),
              child: Text(
                "Ordered List",
                style: TextStyle(color: AppColors.black, fontSize: 30),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Card(
                    margin: const EdgeInsets.all(20),
                    child: MenuSingleListItemWidget(
                      key: key,
                      controller: controller,
                      index: index,
                    ));
              },
              childCount: controller.menuList.length, // 1000 list items
            ),
          )

          // other sliver widgets
        ],
      ),
    );
  }
}
