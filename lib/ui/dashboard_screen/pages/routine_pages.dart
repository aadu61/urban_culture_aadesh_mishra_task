import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:urban_culture_aadesh_mishra_task/business_logic/controller/dashboard_controller.dart';
import 'package:urban_culture_aadesh_mishra_task/business_logic/controller/fire_base_store_controller.dart';
import 'package:urban_culture_aadesh_mishra_task/core/common/custom_image_picker.dart';
import '../../../business_logic/model/dailySkinCareModel.dart';
import '../../../core/export_core.dart';

class RoutinePages extends StatelessWidget {
  const RoutinePages({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.colorFCF7FA,
        title: Center(
          child: Text(
            AppString.dalySkinCare,
            style: theme.textTheme.titleLarge?.copyWith(fontSize: 18.spMin),
          ),
        ),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: MyColors.colorFCF7FA,
      body: GetX<DashBoardController>(
          init: DashBoardController(),
          builder: (controller) {
            return ListView.builder(
                shrinkWrap: true,
                padding: EdgeInsets.symmetric(horizontal: 16.sp, vertical: 12.sp),
                itemBuilder: (context, index) {
                  DailySkinCareModel model = controller.dailySkinCareList[index];
                  return Container(
                    padding: EdgeInsets.symmetric(vertical: 12.sp),
                    child: Row(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: MyColors.colorF2E8EB,
                                  borderRadius: BorderRadius.circular(8.sp),
                                ),
                                padding: EdgeInsets.all(12.sp),
                                child: Image.asset(
                                  model.imgurl != "s" ? "assets/icons/ic_ticks.png" : "assets/icons/ic_close.png",
                                  width: 24.sp,
                                  height: 24.sp,
                                  color: MyColors.color1C0D12,
                                ),
                              ),
                              CustomSize.horizontalSpace(16.sp),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      model.title ?? "",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                        color: MyColors.color1C0D12,
                                      ),
                                    ),
                                    Text(
                                      model.description ?? "",
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 14.sp,
                                        color: MyColors.color964F66,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onTap: () async {
                            File? localFile = await imgFromCamera(context: context);

                            if (localFile != null) {
                              controller.dailySkinCareList[index].imgurl = await FireBaseStoreController.instance.uploadUserProfileToFirebase(localFile.path, type: model.title);
                            }

                            controller.dailySkinCareList.refresh();
                          },
                          child: Image.asset(
                            "assets/icons/ic_camera.png",
                            width: 27.sp,
                            height: 27.sp,
                          ),
                        ),
                        Text(
                          model.time ?? "8:00 PM",
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 14.sp,
                            color: MyColors.color964F66,
                          ),
                        )
                      ],
                    ),
                  );
                },
                itemCount: controller.dailySkinCareList.length);
          }),
    );
  }
}
