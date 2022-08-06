import 'package:flutter/material.dart';
import 'package:flutter_fourth_project/src/screens/product/widget/badge_item.dart';
import 'package:flutter_fourth_project/src/widgets/text_item.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                //appbar
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const BackButton(),
                      IconButton(
                        onPressed: () {
                          debugPrint("test");
                        },
                        icon: const Icon(
                          Icons.more_horiz,
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 20,
                ),

                //avatar
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    borderRadius: BorderRadius.circular(13),
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Asus",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),

                //badges
                BadgeItem(
                  badgeText: "Top Seller",
                  badgeIcon: Icons.local_fire_department_outlined,
                  badgeColor: Colors.orange.shade100,
                  badgeFontColor: Colors.orange.shade900,
                ),

                const SizedBox(
                  height: 25,
                ),

                //title
                Text(
                  "Asus Official Store",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.blue[90],
                    fontSize: 18,
                  ),
                ),

                const SizedBox(
                  height: 5,
                ),

                //row of badges ...
                SizedBox(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //badges
                      BadgeItem(
                        badgeText: "Top Seller",
                        badgeIcon: Icons.notifications_outlined,
                        badgeColor: Colors.blue.shade900,
                        badgeFontColor: Colors.white,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      //badges
                      BadgeItem(
                        badgeText: "Chat",
                        badgeIcon: Icons.message_rounded,
                        badgeColor: Colors.blue.shade50,
                        badgeFontColor: Colors.blue.shade900,
                      ),
                    ],
                  ),
                ),

                //tabbar
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  padding: const EdgeInsets.symmetric(vertical: 13),
                  height: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      TextItem(
                        isChecked: true,
                        itemTitle: "Products",
                      ),
                      TextItem(
                        isChecked: false,
                        itemTitle: "Newest",
                      ),
                      TextItem(
                        isChecked: false,
                        itemTitle: "Popular",
                      ),
                      TextItem(
                        isChecked: false,
                        itemTitle: "Category",
                      ),
                    ],
                  ),
                ),

                //whole page / grid view
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.5,
                      crossAxisSpacing: 3,
                      mainAxisSpacing: 3,
                    ),
                    itemCount: 14,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            Expanded(
                              child:
                                  Image.asset("assets/images/asus_laptop.png"),
                            ),
                            Container(
                              height: 105,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(13),
                              ),
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "ProArt Studiobook",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue[90],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text("Asus"),
                                  const Spacer(),
                                  SizedBox(
                                    height: 50,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text("Asus"),
                                        Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                            color: Colors.blue.shade50,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          alignment: Alignment.center,
                                          child: const Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            size: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
