import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Clients extends StatefulWidget {
  const Clients({super.key});

  @override
  State<Clients> createState() => _ClientsState();
}

class _ClientsState extends State<Clients> {
  int selectedtab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.green,
        leading: const Icon(Icons.menu),
        title: const Text('Clients').tr(),
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
              icon: const Icon(Icons.bookmarks_outlined))
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Scrollbar(
          thumbVisibility: true,
          trackVisibility: true,
          child: SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 20,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Card(
                      child: Row(
                        children: [
                          SizedBox(
                              height: MediaQuery.of(context).size.height * 0.09,
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Row(children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    radius: 25,
                                    backgroundImage: NetworkImage(
                                        "https://img.freepik.com/free-photo/wet-scenic-waterscape-countryside-clean-flow_1417-1106.jpg?w=740&t=st=1694073014~exp=1694073614~hmac=a315d03005117fe5b0195698705558b288ac5759d756188ec0a7ea0029f23be0"),
                                  ),
                                ),
                                const SizedBox(
                                  width: 12,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text('Ajay').tr(),
                                    const SizedBox(),
                                    const Text('0000')
                                  ],
                                ),
                              ])),
                        ],
                      ),
                    );
                  }),
            ),
          ),
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
