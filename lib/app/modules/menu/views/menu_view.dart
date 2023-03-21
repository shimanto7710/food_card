import 'dart:math';

import 'package:flutter/material.dart';
import 'package:food_card/app/styles/app_colors.dart';

import 'package:get/get.dart';

import '../../../styles/app_spacing.dart';
import '../../../utls/constant.dart';
import '../../../widgets/custom_error.dart';
import '../controllers/menu_controller.dart';
import '../widget/menu_single_grid_item_widget.dart';

class MenuView extends GetView<MenuController> {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MenuView'),
        centerTitle: true,
      ),
      body: OrientationBuilder(
        builder: (BuildContext context, Orientation orientation) {
          return GetX<MenuController>(
            builder: (MenuController controller) {
              if (controller.apiState.value == AppState.loading.name) {
                return const Center(child: CircularProgressIndicator());
              } else if (controller.apiState.value == AppState.loaded.name) {
                return Container(
                  color: AppColors.bg,
                  child: CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(child: Container()),
                      /*SliverList(
                      delegate: SliverChildBuilderDelegate(
                            (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                left: AppSpacing.pageSideMargin,
                                right: AppSpacing.pageSideMargin,
                                top: 8, bottom: 8),
                            child: SingleListItemWidget(
                                key: key, controller: controller, index: index),
                          );
                        },
                        childCount: 10, // 1000 list items
                      ),
                    ),*/

                      SliverGrid(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          childAspectRatio: 1,
                        ),
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return MenuSingleGridItemWidget(
                                key: key, controller: controller, index: index);
                          },
                          childCount: controller
                                  .menuList?.length ??
                              0,
                        ),
                      ),
                    ],
                  ),
                );
              } else {
                return CustomError(
                  key: key,
                  summary: controller.errorText.value,
                  onReload: controller.onReload,
                );
              }
            },
          );
        },
      ),
    );
  }
}
