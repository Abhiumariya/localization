import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Coapplicant extends StatefulWidget {
  const Coapplicant({super.key});

  @override
  State<Coapplicant> createState() => _CoapplicantState();
}

class _CoapplicantState extends State<Coapplicant> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        title: const Text(
          'Coapplicant',
          style: TextStyle(color: Colors.black),
        ),
        actions: const [
          Icon(
            Icons.arrow_forward,
            color: Colors.black,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: const TextSpan(
                        text: "COAPPLICANT INFO ",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: "Initlated",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                        ]),
                  ),
                  const Icon(
                    Icons.circle_notifications,
                    color: Colors.blue,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Enquiry No:- 6989| External Id :-",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  RichText(
                    text: const TextSpan(
                        text: "Assingned To |Due in ",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: "178hrs",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                        ]),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                    height: height * 0.8,
                    width: width * 0.96,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 208, 237, 209),
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            height: height * 0.030,
                            width: width * 0.3,
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: CustomWidget(
                                height: height * 0.020,
                                width: width * 0.3,
                                borderRadius: 8),
                          ),
                        ),
                        ListView.builder(
                          physics: const AlwaysScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Center(
                              child: Container(
                                margin: const EdgeInsets.symmetric(vertical: 4),
                                height: height * 0.060,
                                width: width * 0.85,
                                padding: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      // decoration:
                                      //     const BoxDecoration(color: Colors.blueGrey),
                                      child: CustomWidget(
                                          height: height * 0.025,
                                          width: width * 0.06,
                                          borderRadius: 3),
                                    ),
                                    const SizedBox(
                                      width: 30,
                                    ),
                                    SizedBox(
                                      // decoration:
                                      //     const BoxDecoration(color: Colors.blueGrey),
                                      child: CustomWidget(
                                          height: height * 0.025,
                                          width: width * 0.6,
                                          borderRadius: 8),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    )),
              ),
            ],
          ),
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
      baseColor: Colors.grey.shade200,
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
