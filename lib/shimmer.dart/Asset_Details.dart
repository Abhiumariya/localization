import 'package:flutter/material.dart';
import 'package:flutter_application_3/shimmer.dart/Sanction.dart';
import 'package:shimmer/shimmer.dart';

class AssetDetails extends StatefulWidget {
  const AssetDetails({super.key});

  @override
  State<AssetDetails> createState() => _AssetDetailsState();
}

class _AssetDetailsState extends State<AssetDetails> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("AssetDetails"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Sanction()),
                );
              },
              icon: const Icon(Icons.arrow_forward))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomWidget(
                height: height * .015, width: width * .4, borderRadius: 5),
            const SizedBox(
              height: 5,
            ),
            CustomWidget(
                height: height * .015, width: width * .4, borderRadius: 5),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomWidget(
                    height: height * .015, width: width * .6, borderRadius: 5),
                CustomWidget(
                    height: height * .025,
                    width: width * .06,
                    borderRadius: 15),
              ],
            ),
            const SizedBox(height: 25),
            CustomWidget(
                height: height * .015, width: width * .99, borderRadius: 5),
            const SizedBox(
              height: 5,
            ),
            CustomWidget(
                height: height * .015, width: width * .99, borderRadius: 5),
            const SizedBox(
              height: 5,
            ),
            CustomWidget(
                height: height * .015, width: width * .99, borderRadius: 5),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: height * .035,
                  width: width * .35,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: CustomWidget(
                        height: height * .014,
                        width: width * .3,
                        borderRadius: 5),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: height * .035,
                  width: width * .25,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: CustomWidget(
                        height: height * .014,
                        width: width * .1,
                        borderRadius: 5),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              itemCount: 3,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: height * .1,
                    width: width * .99,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        // border:
                        //     Border.all(color: Colors.grey.shade100, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomWidget(
                              height: height * .014,
                              width: width * .3,
                              borderRadius: 5),
                          const SizedBox(
                            height: 10,
                          ),
                          CustomWidget(
                              height: height * .014,
                              width: width * .3,
                              borderRadius: 5),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Container(
                height: height * .06,
                width: width * .8,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: CustomWidget(
                      height: height * .018,
                      width: width * .5,
                      borderRadius: 5),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: height * .08,
                  width: width * .4,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: CustomWidget(
                        height: height * .018,
                        width: width * .35,
                        borderRadius: 5),
                  ),
                ),
                // const SizedBox(
                //   width: 10,
                // ),
                Container(
                  height: height * .08,
                  width: width * .4,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(5)),
                  child: Center(
                    child: CustomWidget(
                        height: height * .018,
                        width: width * .35,
                        borderRadius: 5),
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

class CustomWidget extends StatelessWidget {
  const CustomWidget(
      {super.key,
      required this.height,
      required this.width,
      required this.borderRadius});
  final double height;
  final double width;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        padding: const EdgeInsets.all(8),
        height: height,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(borderRadius),
            color: Colors.grey.shade100),
      ),
    );
  }
}
