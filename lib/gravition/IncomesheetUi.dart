import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class IncomesheetUi extends StatefulWidget {
  const IncomesheetUi({super.key});

  @override
  State<IncomesheetUi> createState() => _IncomesheetUiState();
}

class _IncomesheetUiState extends State<IncomesheetUi> {
  @override
  Widget build(BuildContext context) {
    // height:
    // MediaQuery.of(context).size.height;
    // width:
    // MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        leading: const Icon(Icons.menu),
        title: const Text("Checker").tr(),
        actions: [
          IconButton(
              onPressed: () async {
                if (context.locale == const Locale('en', 'US')) {
                  context.setLocale(const Locale('en'));
                } else {
                  context.setLocale(const Locale('en', 'US'));
                }
                setState(() {});
              },
              icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: const BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.email_sharp,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text("Inbox",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold))
                        .tr(),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.025,
                      width: MediaQuery.of(context).size.width * 0.08,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Text(
                          "30",
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: const BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.person,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Client",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ).tr(),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.025,
                      width: MediaQuery.of(context).size.width * 0.08,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Text(
                          "0",
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: const BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.check_box,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Loan",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ).tr(),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.025,
                      width: MediaQuery.of(context).size.width * 0.08,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Text(
                          "0",
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: const BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.check,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Disbursal",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ).tr(),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 0.025,
                      width: 0.08,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Text(
                          "0",
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            height: MediaQuery.of(context).size.height * 0.08,
            decoration: const BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.timer_sharp,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    const Text(
                      "Reschedule",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ).tr(),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      height: 0.025,
                      width: 0.08,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Text(
                          "12",
                          style: TextStyle(fontSize: 11, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}

//  children: [
//                         Container(
//                           height: MediaQuery.of(context).size.height * 0.09,
//                           width: MediaQuery.of(context).size.width * 0.99,
//                           decoration:
//                               BoxDecoration(color: Colors.grey.shade200),
//                           child: Column(
//                             children: [
//                               Row(
//                                 children: const [
//                                   Text(
//                                     "Login",
//                                   ),
//                                 ],
//                               ),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.end,
//                                 children: const [
//                                   Icon(
//                                     Icons.check,
//                                     color: Colors.green,
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Icon(
//                                     Icons.dangerous_outlined,
//                                     color: Colors.yellow,
//                                   ),
//                                   SizedBox(
//                                     width: 10,
//                                   ),
//                                   Icon(
//                                     Icons.delete,
//                                     color: Colors.red,
//                                   )
//                                 ],
//                               ),
//                               const Text("23 Apr 2023")
//                             ],
//                           ),
//                         )
//                       ],

