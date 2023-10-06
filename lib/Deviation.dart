import 'package:flutter/material.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';

class Deviation extends StatefulWidget {
  const Deviation({super.key});

  @override
  State<Deviation> createState() => _DeviationState();
}

class _DeviationState extends State<Deviation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: const Icon(Icons.menu),
          title: const Text('Deviation'),
          actions: const [Icon(Icons.more_vert)],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 5),
            child: FocusedMenuHolder(
              menuItems: [
                FocusedMenuItem(
                    title: const Text("View Attachments"),
                    trailingIcon: const Icon(Icons.download),
                    onPressed: () {}),
              ],
              menuOffset: 20,
              bottomOffsetHeight: 15,
              openWithTap: true,
              onPressed: () {},
              child: Container(
                padding: const EdgeInsets.all(8),
                height: MediaQuery.of(context).size.height * 0.14,
                width: MediaQuery.of(context).size.width * 0.70,
                decoration: BoxDecoration(
                    color: Colors.red.shade100,
                    border: Border.all(),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    )
                    // topLeft: Radius.circular(5),
                    // topRight: Radius.circular(5)

                    ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://i.pinimg.com/originals/4a/e1/0d/4ae10d7c4f0101cee562d4e82ac12df7.jpg"),
                          radius: 25,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Keshav gatuam '),
                            const Text('requested a Deviaton'),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: const [
                                Icon(
                                  Icons.calendar_month,
                                  size: 11,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '2023-09-02',
                                  style: TextStyle(fontSize: 11),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.timelapse,
                                  size: 11,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '6:54:03pm',
                                  style: TextStyle(fontSize: 11),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Divider(),
                    Row(
                      children: const [
                        Text(
                          'sss',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 5),
                child: FocusedMenuHolder(
                  menuItems: [
                    FocusedMenuItem(
                        title: const Text("View Attachments"),
                        trailingIcon: const Icon(Icons.share),
                        onPressed: () {}),
                  ],
                  blurBackgroundColor: Colors.black,
                  menuOffset: 20,
                  openWithTap: true,
                  animateMenuItems: true,
                  onPressed: () {},
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    height: MediaQuery.of(context).size.height * 0.14,
                    width: MediaQuery.of(context).size.width * 0.70,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        border: Border.all(),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(10),
                        )
                        // topLeft: Radius.circular(5),
                        // topRight: Radius.circular(5)

                        ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'HARSHH HARSHH',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const Text(
                                  'rejected the Deviaton',
                                  style: TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.calendar_month,
                                      size: 11,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '2023-09-02',
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.timelapse,
                                      size: 11,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '6:54:03pm',
                                      style: TextStyle(
                                          fontSize: 11, color: Colors.white),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Padding(
                                  padding: EdgeInsets.only(left: 25),
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://i.pinimg.com/originals/4a/e1/0d/4ae10d7c4f0101cee562d4e82ac12df7.jpg"),
                                    radius: 25,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Divider(),
                        Row(
                          children: const [
                            Text(
                              'ok im rejected this',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ]));
  }
}
