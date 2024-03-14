import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urban_culture_aadesh_mishra_task/business_logic/controller/dashboard_controller.dart';

import '../../core/export_core.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return GetX<DashBoardController>(
        init: DashBoardController(),
        builder: (controller) {
          return Scaffold(
            body: controller.pages[controller.pageIndex.value],
            bottomNavigationBar: Container(
              height: 75.sp,
              decoration: const BoxDecoration(
                color: MyColors.colorFCF7FA,
              ),
              child: Column(
                children: [
                  Divider(
                    height: 1.sp,
                    color: MyColors.colorF2E8EB,
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 8.sp,horizontal: 16.sp),
                    child: SizedBox(
                      height: 54.sp,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          commonBottomNavigationItem(
                              text: AppString.routine,
                              icon:  ImageConstant.routine,
                              onTap: (){
                                controller.pageIndex.value = 0;
                              }
                          ),
                          commonBottomNavigationItem(
                              text: AppString.streaks,
                              icon: ImageConstant.streaks,
                              onTap: (){
                                controller.pageIndex.value = 1;
                              }
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }

  commonBottomNavigationItem({VoidCallback? onTap, required String text, required String icon}){
    return  GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap ?? (){},
      child: SizedBox(
        height: 54.sp,
        width: 65.2.sp,
        child: Column(
          children: [
            Image.asset(
              icon,
              width: 24.sp,
              height: 24.sp,
              color: MyColors.color964F66,
            ),
            CustomSize.verticalSpace(8.sp),
            Text(
              text,
              style: Theme.of(Get.context!).textTheme.labelMedium,
            )
          ],
        ),
      ),
    );
  }
}
