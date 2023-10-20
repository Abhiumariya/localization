import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SearchBottomSheet extends StatefulWidget {
  const SearchBottomSheet({super.key});

  @override
  State<SearchBottomSheet> createState() => _SearchBottomSheetState();
}

class _SearchBottomSheetState extends State<SearchBottomSheet> {
  dynamic? newValue;
  dynamic? values;

  final TextEditingController dateinput = TextEditingController();
  final TextEditingController inputdate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          title: const Text("Search BottomSheet"),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            child: Card(
                shadowColor: Colors.white,
                elevation: 3,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: const Icon(Icons.search),
                      hintText: ' Search by user',
                      suffixIcon: IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                                isScrollControlled: true,
                                useSafeArea: true,
                                isDismissible: false,
                                enableDrag: false,
                                elevation: 0,
                                // constraints:
                                //     BoxConstraints.tight(Size.infinite),
                                shape: const RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30))),
                                backgroundColor: Colors.white,
                                context: context,
                                builder: (BuildContext context) {
                                  return Padding(
                                    padding: EdgeInsets.only(
                                        bottom: MediaQuery.of(context)
                                            .viewInsets
                                            .bottom),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.symmetric(
                                              horizontal: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: SizedBox(
                                                    height: height * 0.09,
                                                    width: width * 0.42,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: TextField(
                                                        autofocus: true,
                                                        style: const TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                        keyboardType:
                                                            TextInputType.none,
                                                        controller: dateinput,
                                                        decoration: InputDecoration(
                                                            border: OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            suffixIcon:
                                                                const Icon(Icons
                                                                    .calendar_month)),
                                                        onTap: () async {
                                                          DateTime? pickedDate =
                                                              await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return LayoutBuilder(
                                                                        builder:
                                                                            (_, constraints) {
                                                                      return Center(
                                                                        child: Material(
                                                                            child: CalendarDatePicker(
                                                                          initialDate:
                                                                              DateTime.now(),
                                                                          firstDate:
                                                                              DateTime(2000),
                                                                          lastDate:
                                                                              DateTime(2400),
                                                                          onDateChanged:
                                                                              (value) {
                                                                            Navigator.of(context).pop(value);
                                                                          },
                                                                        )),
                                                                      );
                                                                    });
                                                                  });

                                                          if (pickedDate !=
                                                              null) {
                                                            String
                                                                formattedDate =
                                                                DateFormat(
                                                                        'dd-MM-yyyy')
                                                                    .format(
                                                                        pickedDate);

                                                            setState(() {
                                                              dateinput.text =
                                                                  formattedDate;
                                                            });
                                                          } else {}
                                                        },
                                                      ),
                                                    )),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: SizedBox(
                                                    height: height * 0.09,
                                                    width: width * 0.42,
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              8.0),
                                                      child: TextField(
                                                        style: const TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                        keyboardType:
                                                            TextInputType.none,
                                                        controller: inputdate,
                                                        decoration: InputDecoration(
                                                            border: OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10)),
                                                            suffixIcon:
                                                                const Icon(Icons
                                                                    .calendar_month)),
                                                        onTap: () async {
                                                          DateTime? pickedDate =
                                                              await showDialog(
                                                                  context:
                                                                      context,
                                                                  builder:
                                                                      (context) {
                                                                    return LayoutBuilder(
                                                                        builder:
                                                                            (_, constraints) {
                                                                      return Center(
                                                                        child: Material(
                                                                            child: CalendarDatePicker(
                                                                          initialDate:
                                                                              DateTime.now(),
                                                                          firstDate:
                                                                              DateTime(2000),
                                                                          lastDate:
                                                                              DateTime(2025),
                                                                          onDateChanged:
                                                                              (value) {
                                                                            Navigator.of(context).pop(value);
                                                                          },
                                                                        )),
                                                                      );
                                                                    });
                                                                  });

                                                          if (pickedDate !=
                                                              null) {
                                                            String
                                                                dateformatted =
                                                                DateFormat(
                                                                        'dd-MM-yyyy')
                                                                    .format(
                                                                        pickedDate);

                                                            setState(() {
                                                              inputdate.text =
                                                                  dateformatted;
                                                            });
                                                          } else {}
                                                        },
                                                      ),
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        SizedBox(
                                          height: height * 0.064,
                                          width: width * 0.9,
                                          child: DropdownButtonFormField(
                                            icon: const Icon(
                                              Icons.arrow_drop_down,
                                            ),
                                            isExpanded: false,
                                            isDense: true,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10))),
                                            onChanged: (changedValue) {
                                              setState(() {
                                                newValue = changedValue;
                                              });
                                            },
                                            value: newValue,
                                            items: [
                                              "jaipur",
                                              "frgtr",
                                              // "frgtr",
                                            ].map<DropdownMenuItem<String>>(
                                                (String items) {
                                              return DropdownMenuItem<String>(
                                                value: items,
                                                child: Text(
                                                  items,
                                                  style: const TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.064,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.9,
                                          child: DropdownButtonFormField(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            decoration: InputDecoration(
                                                labelText: 'search',
                                                labelStyle: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                                border: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10))),
                                            onChanged: (onchanged) {
                                              setState(() {
                                                values = onchanged;
                                              });
                                            },
                                            items: <String>[
                                              'jaipur',
                                              'kooksh',
                                              'Ajmer',
                                              'dudhu',
                                            ].map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(
                                                  value,
                                                  style: const TextStyle(
                                                      fontSize: 10,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                            height: height * 0.06,
                                            width: width * 0.9,
                                            child: TextFormField(
                                              onTapOutside: (event) {},
                                              decoration: const InputDecoration(
                                                  border: OutlineInputBorder()),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: height * 0.05,
                                                width: width * 0.42,
                                                decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    border: Border.all(
                                                        color: Colors.blue)),
                                                child: const Center(
                                                    child: Text(
                                                  "data",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                              ),
                                              Container(
                                                height: height * 0.05,
                                                width: width * 0.42,
                                                decoration: BoxDecoration(
                                                    color: Colors.blue,
                                                    border: Border.all(
                                                        color: Colors.blue)),
                                                child: const Center(
                                                    child: Text(
                                                  "data",
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  );
                                });
                          },
                          icon: Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white,
                              )))),
                )),
          ),
        ]));
  }
}
