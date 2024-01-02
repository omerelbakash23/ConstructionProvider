// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package

import 'package:constructionprovider1/core/constant/ImageAssets.dart';
import 'package:constructionprovider1/core/constant/colors.dart';
import 'package:constructionprovider1/view/screen/home/bottomnavigation/myorderpage/pageorderscontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class DialogmyOrder extends StatelessWidget {
  const DialogmyOrder({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .48,
        child: ListView(
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(AppImageAssets.Liquidation),
                  const SizedBox(
                    width: 20,
                  ),
                  Text("Liquidation".tr,
                      style: Theme.of(context)
                          .textTheme
                          .headline1!
                          .copyWith(fontSize: 20, color: Colors.black))
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Filter by title".tr,
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                          fontWeight: FontWeight.normal,
                          fontSize: 18,
                          color: Colors.black)),
                ),
                const Text("")
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            GetBuilder<OrderpageControllerimp>(
              builder: (controller) => InkWell(
                onTap: () {
                  controller.change();
                },
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .08,
                  decoration: BoxDecoration(
                      color: controller.check0
                          ? AppColors.colorsbutton
                          : const Color.fromARGB(255, 236, 233, 233),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.location_on),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                            "المدينة المنورة, شارع المدينة المنورة الحي الخامس",
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                    color: Colors.black))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            GetBuilder<OrderpageControllerimp>(
              builder: (controller) => InkWell(
                onTap: () {
                  controller.change1();
                },
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .08,
                  decoration: BoxDecoration(
                      color: controller.check1
                          ? AppColors.colorsbutton
                          : const Color.fromARGB(255, 236, 233, 233),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.location_on),
                        const SizedBox(
                          width: 5,
                        ),
                        Text("المدينة المنورة, شارع المدينة المنورة",
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                    color: Colors.black))
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            GetBuilder<OrderpageControllerimp>(
              builder: (controller) => InkWell(
                onTap: () {
                  controller.change2();
                },
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * .08,
                  decoration: BoxDecoration(
                      color: controller.check2
                          ? AppColors.colorsbutton
                          : const Color.fromARGB(255, 236, 233, 233),
                      borderRadius: BorderRadius.circular(20)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(Icons.location_on),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                            "المدينة المنورة, شارع المدينة المنورة الحي  الخامس ",
                            style: Theme.of(context)
                                .textTheme
                                .headline1!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 11,
                                    color: Colors.black))
                      ],
                    ),
                  ),
                ),
              ),
            ),

            /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
            const SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: AppColors.colorsbutton),
                  onPressed: () {
                    Get.back();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, right: 20, left: 20),
                    child: Text("Liquidation".tr,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 14, color: Colors.black)),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: Colors.red, width: 1.2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      backgroundColor: Colors.white),
                  onPressed: () {
                    Get.back();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 10),
                    child: Text("Cancelling order".tr,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(fontSize: 14, color: Colors.red)),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
