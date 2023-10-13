import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/gravition/documents.dart';

class CollectionSheet extends StatefulWidget {
  const CollectionSheet({super.key, required String title});

  @override
  State<CollectionSheet> createState() => _CollectionSheetState();
}

class _CollectionSheetState extends State<CollectionSheet> {
  dynamic? newValue;
  dynamic? values;
  final TextEditingController dateinput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size.height;
    final List<Tab> myTabs = [
      Tab(
        text: "new".tr(),
      ),
      Tab(
        text: "saved".tr(),
      )
    ];

    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.green,
              leading: const Icon(Icons.menu),
              title: const Text("Individual Collection Sheet").tr(),
              bottom: TabBar(tabs: myTabs),
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
                IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Documents(
                                  title: '',
                                )),
                      );
                    },
                    icon: const Icon(Icons.arrow_forward))
              ],
            ),
            body: TabBarView(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          const Text(
                            "Generate New",
                            style: TextStyle(fontSize: 20),
                          ).tr(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Text("Please").tr(),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.074,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: DropdownButtonFormField(
                        borderRadius: BorderRadius.circular(10),
                        decoration: InputDecoration(
                            labelText: 'Select Office'.tr(),
                            border: const OutlineInputBorder()),
                        onChanged: (onchanged) {
                          setState(() {
                            values = onchanged;
                          });
                        },
                        items: <String>[
                          'jaipur'.tr(),
                          'kooksh'.tr(),
                          'Ajmer'.tr(),
                          'dudhu'.tr()
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(fontSize: 12),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 0.074,
                        width: MediaQuery.of(context).size.width * 0.9,
                        child: Column(children: [
                          TextField(
                            controller:
                                dateinput, //editing controller of this TextField

                            keyboardType: TextInputType.none,
                            decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                suffixIcon: Icon(Icons.calendar_month)),
                            onTap: () async {
                              DateTime? pickedDate = await showDialog(
                                  context: context,
                                  builder: (context) {
                                    return LayoutBuilder(
                                        builder: (_, constraints) {
                                      return Center(
                                        child: Material(
                                            child: CalendarDatePicker(
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(2000),
                                          lastDate: DateTime.now(),
                                          onDateChanged: (value) {
                                            Navigator.of(context).pop(value);
                                          },
                                        )),
                                      );
                                    });
                                  });

                              if (pickedDate != null) {
                                String formattedDate =
                                    DateFormat('dd-MM-yyyy').format(pickedDate);

                                setState(() {
                                  dateinput.text = formattedDate;
                                });
                              } else {}
                            },
                          )
                        ])),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.074,
                      width: MediaQuery.of(context).size.width * 0.9,
                      child: DropdownButtonFormField(
                        icon: const Icon(
                          Icons.arrow_drop_down,
                        ),
                        isExpanded: false,
                        isDense: true,
                        borderRadius: BorderRadius.circular(10),
                        decoration:
                            const InputDecoration(border: OutlineInputBorder()),
                        onChanged: (changedValue) {
                          setState(() {
                            newValue = changedValue;
                          });
                        },
                        value: newValue,
                        items: [
                          "jaipur".tr(),
                          "2",
                        ].map<DropdownMenuItem<String>>((String items) {
                          return DropdownMenuItem<String>(
                            value: items,
                            child: Text(
                              items,
                              style: const TextStyle(fontSize: 12),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: const Text(
                            "GENERATE",
                            style: TextStyle(color: Colors.white),
                          ).tr()),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.04,
                          width: MediaQuery.of(context).size.width * 0.4,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                              child: Text(
                            "CLEAR".tr(),
                            style: const TextStyle(color: Colors.white),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: ExpansionTile(
                    trailing: Container(
                      height: 25,
                      width: 30,
                      decoration: const BoxDecoration(color: Colors.blue),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                    title: const Text("show payment details"),
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Text("data"),
                              SizedBox(
                                height: 30,
                                width: 250, // <-- SEE HERE
                                child: TextField(
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Text("data"),
                              // SizedBox(
                              //   width: 30,
                              // ),
                              SizedBox(
                                height: 30,
                                width: 250, // <-- SEE HERE
                                child: TextField(
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Text("data"),
                              // SizedBox(
                              //   width: 30,
                              // ),
                              SizedBox(
                                height: 30,
                                width: 250, // <-- SEE HERE
                                child: TextField(
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Text("data"),
                              // SizedBox(
                              //   width: 30,
                              // ),
                              SizedBox(
                                height: 30,
                                width: 250, // <-- SEE HERE
                                child: TextField(
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              Text("data"),
                              // SizedBox(
                              //   width: 30,
                              // ),
                              SizedBox(
                                height: 30,
                                width: 250, // <-- SEE HERE
                                child: TextField(
                                  textAlign: TextAlign.left,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder()),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
