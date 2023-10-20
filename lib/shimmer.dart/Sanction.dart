import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Sanction extends StatefulWidget {
  const Sanction({super.key});

  @override
  State<Sanction> createState() => _SanctionState();
}

class _SanctionState extends State<Sanction> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text("Sanction"),
          actions: const [Icon(Icons.arrow_outward_outlined)],
        ),
        body: Container(
            padding: const EdgeInsets.all(8),
            margin: const EdgeInsets.symmetric(vertical: 5),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                      height: height * .015,
                      width: width * .6,
                      borderRadius: 5),
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
                height: 20,
              ),
              Center(
                child: Container(
                  height: height * .06,
                  width: width * .8,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        CustomWidget(
                            height: height * .025,
                            width: width * .06,
                            borderRadius: 15),
                        const SizedBox(
                          width: 10,
                        ),
                        CustomWidget(
                            height: height * .015,
                            width: width * .5,
                            borderRadius: 5),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: height * .08,
                width: width * .95,
                decoration: BoxDecoration(color: Colors.grey.shade100),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomWidget(
                          height: height * .015,
                          width: width * .3,
                          borderRadius: 5),
                      CustomWidget(
                          height: height * .015,
                          width: width * .3,
                          borderRadius: 5),
                    ],
                  ),
                ),
              ),
              Container(
                height: height * .08,
                width: width * .95,
                decoration: const BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomWidget(
                          height: height * .015,
                          width: width * .3,
                          borderRadius: 5),
                      CustomWidget(
                          height: height * .015,
                          width: width * .06,
                          borderRadius: 15),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Center(
                child: Container(
                  height: height * .06,
                  width: width * .95,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: CustomWidget(
                          height: height * .020,
                          width: width * .6,
                          borderRadius: 15),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  height: height * .06,
                  width: width * .95,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade100,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: CustomWidget(
                          height: height * .020,
                          width: width * .5,
                          borderRadius: 15),
                    ),
                  ),
                ),
              ),
            ])));
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
