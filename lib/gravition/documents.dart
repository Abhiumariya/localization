import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/gravition/IncomesheetUi.dart';

class Documents extends StatefulWidget {
  const Documents({super.key, required String title});

  @override
  State<Documents> createState() => _DocumentsState();
}

class _DocumentsState extends State<Documents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        elevation: 0,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 12, top: 40, bottom: 18),
              height: MediaQuery.of(context).size.height * 0.20,
              width: MediaQuery.of(context).size.width * 0.85,
              decoration:
                  const BoxDecoration(color: Color.fromARGB(255, 14, 81, 16)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 35,
                          backgroundImage: NetworkImage(
                              'https://images.unsplash.com/photo-1471293082634-905c2f92dea8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80'),
                        ),
                        const Text(
                          'gravition',
                          style: TextStyle(color: Colors.white),
                        ).tr()
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 7,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: const Text(
                          'FOUNDATION',
                          textAlign: TextAlign.right,
                          style: TextStyle(fontSize: 22, color: Colors.white),
                          maxLines: 2,
                        ).tr(),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(Icons.check_box),
                  const SizedBox(
                    width: 22,
                  ),
                  const Text('Check').tr()
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(Icons.note_alt),
                  const SizedBox(
                    width: 22,
                  ),
                  const Text('Collection').tr()
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(Icons.settings),
                  const SizedBox(
                    width: 22,
                  ),
                  const Text('Settings').tr()
                ],
              ),
              onTap: () {},
            ),
            ListTile(
              title: Row(
                children: [
                  const Icon(Icons.info_rounded),
                  const SizedBox(
                    width: 22,
                  ),
                  const Text('about us').tr()
                ],
              ),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              title: Row(
                children: [
                  const Icon(Icons.power_settings_new),
                  const SizedBox(
                    width: 22,
                  ),
                  const Text('Offline').tr()
                ],
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Text('Documents').tr(),
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
              icon: const Icon(Icons.book)),
          PopupMenuButton(
            onSelected: (value) {},
            itemBuilder: (context) {
              return [
                PopupMenuItem(value: '/hello', child: const Text('More').tr()),
                PopupMenuItem(
                    value: '/Charges', child: const Text('Charges').tr()),
                PopupMenuItem(
                    value: '/Document', child: const Text('Document').tr()),
                PopupMenuItem(
                    value: '/Upload Signature',
                    child: const Text('Upload').tr()),
                PopupMenuItem(
                    value: '/Indentifiers',
                    child: const Text('Indentifiers').tr()),
                PopupMenuItem(
                    value: '/Survey', child: const Text('Survey').tr()),
                PopupMenuItem(value: '/Notes', child: const Text('Notes').tr()),
              ];
            },
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const IncomesheetUi()),
                );
              },
              icon: const Icon(Icons.arrow_forward))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(right: 35, left: 11, bottom: 10),
              decoration: const BoxDecoration(color: Colors.grey),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'name',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ).tr(),
                  const Text(
                    'Description',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ).tr(),
                  const Text(''),
                ],
              ),
            ),
            ListView.builder(
                itemCount: 50,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 11, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('name').tr(),
                        const Text('Description').tr(),
                        const Icon(Icons.cloud_download_sharp)
                      ],
                    ),
                  );
                }),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: const Text('Review Payment'),
                              content: Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 11),
                                height:
                                    MediaQuery.of(context).size.height * 0.7,
                                width: MediaQuery.of(context).size.width * 0.95,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Account:0000000458',
                                    ),
                                    const Text(
                                      'Repayment Date : 11-09-2023',
                                    ),
                                    const Text(
                                      'Payment Type :Cash',
                                    ),
                                    const Text(
                                      'Amount: 2712.0',
                                    ),
                                    const Text(
                                      'Addition Payment : 0.0',
                                    ),
                                    const Text(
                                      'Fees: 0.0',
                                    ),
                                    const Text(
                                      'Total: 2712.0',
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [
                                        Text(
                                          'back',
                                          style: TextStyle(color: Colors.green),
                                        ),
                                        SizedBox(
                                          width: 12,
                                        ),
                                        Text(
                                          'Pay NOw',
                                          style: TextStyle(color: Colors.green),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ));
                  },
                  child: const Text('alert')),
            )
          ],
        ),
      ),
    );
  }
}
 

 /* ListTile(
            title: Row(
              children: const [
                Icon(Icons.check_box),
                SizedBox(
                  width: 22,
                ),
                Text('Checker Inbox')
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.note_alt),
                SizedBox(
                  width: 22,
                ),
                Text('individual Collection sheet')
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.settings),
                SizedBox(
                  width: 22,
                ),
                Text('Settings')
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.info_rounded),
                SizedBox(
                  width: 22,
                ),
                Text('About')
              ],
            ),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: Row(
              children: const [
                Icon(Icons.power_settings_new),
                SizedBox(
                  width: 22,
                ),
                Text('Offline Sync*')
              ],
            ),
            onTap: () {},
          ),
        ],
      ),*/