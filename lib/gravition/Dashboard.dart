import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key, required String title});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedtab = 0;
  bool? oncheck = false;

  // int Selectedtab => Value;
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
        title: const Text('dashboard').tr(),
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
                PopupMenuItem(value: '/Info', child: const Text('Info').tr()),
                PopupMenuItem(
                    value: '/Transaction',
                    child: const Text('Transaction').tr()),
                PopupMenuItem(
                    value: '/Loan Repayment Schedule',
                    child: const Text('Schedule').tr()),
                PopupMenuItem(
                    value: '/Document', child: const Text('Document').tr()),
                PopupMenuItem(
                    value: '/Charges', child: const Text('Charges').tr()),
              ];
            },
          )
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'SEARCH',
                  style: TextStyle(fontSize: 22),
                ).tr(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text('all').tr(),
                    const Icon(Icons.arrow_drop_down),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Card(
                shadowColor: Colors.white,
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(Icons.search),
                        hintText: 'Name'.tr()),
                  ),
                )),
            const SizedBox(
              height: 25,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 12),
              height: MediaQuery.of(context).size.height * 0.050,
              width: MediaQuery.of(context).size.width * 0.95,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.green),
              child: Center(
                child: const Text(
                  "search",
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ).tr(),
              ),
            ),
            const SizedBox(
              height: 11,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: oncheck,
                  onChanged: (value) {
                    setState(() {
                      oncheck = value;
                    });
                  },
                ),
                const Text('Exact').tr()
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: selectedtab,
        selectedItemColor: Colors.green,
        onTap: (value) {
          setState(() {
            selectedtab = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.dashboard,
              color: Colors.green,
            ),
            label: 'dashboard'.tr(),
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.person,
              color: Colors.green,
            ),
            label: 'person'.tr(),
          ),
          BottomNavigationBarItem(
              icon: const Icon(
                Icons.bookmarks,
                color: Colors.green,
              ),
              label: 'book'.tr()),
          BottomNavigationBarItem(
              icon: const Icon(
                Icons.person_2,
                color: Colors.green,
              ),
              label: 'per'.tr())
        ],
      ),
    );
  }
}
