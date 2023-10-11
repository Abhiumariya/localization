import 'package:flutter/material.dart';

class CheckerInbox extends StatefulWidget {
  const CheckerInbox({super.key});

  @override
  State<CheckerInbox> createState() => _CheckerInboxState();
}

class _CheckerInboxState extends State<CheckerInbox> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.green,
          leading: const Icon(Icons.menu),
          title: const Text("Checker Inbox"),
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: height * 07,
              width: width * 99,
              child: const Card(
                  shadowColor: Colors.white,
                  elevation: 3,
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.format_line_spacing),
                        prefixIcon: Icon(Icons.search),
                        hintText: ' Search by user'),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 7,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ExpansionTile(
                          tilePadding: const EdgeInsets.all(0),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: const [
                              Text(
                                "5 Apr 2023",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  height: 56,
                                  width: 5,
                                  decoration:
                                      const BoxDecoration(color: Colors.yellow),
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Container(
                                padding: const EdgeInsets.all(3),
                                height: height * 9,
                                width: width * 5,
                                decoration: const BoxDecoration(),
                                child: Column(children: [
                                  Row(
                                    children: const [
                                      Text(
                                        "#20313 ADJUST LOAN ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    children: const [
                                      Text(
                                        "awaiting.approval",
                                        style: TextStyle(
                                            fontSize: 11,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      RichText(
                                        text: const TextSpan(
                                            text: "Created by ",
                                            style: TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.bold),
                                            children: [
                                              TextSpan(
                                                text: "AMITCHUGH",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                              ),
                                            ]),
                                      ),
                                    ],
                                  ),
                                ]),
                              ),
                            ],
                          ),
                          children: [
                            Container(
                              height: height * 0.09,
                              width: width * 40,
                              decoration:
                                  BoxDecoration(color: Colors.grey.shade200),
                              child: Column(
                                children: [
                                  const Divider(
                                    thickness: 1,
                                    height: 1,
                                    color: Colors.grey,
                                  ),
                                  Row(
                                    children: const [
                                      Padding(
                                        padding: EdgeInsets.only(left: 13),
                                        child: Text(
                                          "Loan",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: const [
                                      Icon(
                                        Icons.check,
                                        color: Colors.green,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.dangerous_outlined,
                                        color: Colors.yellow,
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Icon(
                                        Icons.delete,
                                        color: Colors.red,
                                      )
                                    ],
                                  ),
                                  const Text("23 Apr 2023")
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          thickness: 1,
                          color: Colors.grey,
                          height: 1,
                        )
                      ]);
                }),
          ]),
        ));
  }
}
