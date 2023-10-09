import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Pages extends StatefulWidget {
  const Pages({super.key});

  @override
  State<Pages> createState() => _PagesState();
}

class _PagesState extends State<Pages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: const Text("Easy Localization"),
        actions: [
          IconButton(
              onPressed: () {
                if (context.locale == const Locale('en', 'US')) {
                  context.setLocale(const Locale('en'));
                } else {
                  context.setLocale(const Locale('en', 'US'));
                }
                setState(() {});
              },
              icon: const Icon(Icons.save))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("client").tr(),
              const Text("Number").tr(),
              const Text("Id").tr(),
              const Text("Date").tr(),
              const Text("Off").tr(),
              const Text("Mobile").tr(),
              const Text("Address").tr(),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Shummary").tr(),
              const Text("RICKSHAW").tr(),
              const Text("Amount").tr(),
              const Text("Disbursement").tr(),
              const Text("Arrears").tr(),
              const Text("Staff").tr(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("SUMMARY").tr(),
                  const Text("loan").tr(),
                  const Text("Amt").tr(),
                  const Text("Balance").tr(),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Principal").tr(),
              const Text("Interest").tr(),
              const Text("Fees").tr(),
              const Text("Penalty").tr(),
              const Text("total").tr(),
              const Text("Disburse").tr(),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("id").tr(),
              const Text("Charge").tr(),
              const Text("Type").tr(),
              const Text("At").tr(),
              const Text("AMOUNT").tr(),
              const Text("Paid").tr(),
              const Text("Waived").tr(),
              const Text("OutStanding").tr(),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Select").tr(),
              const Text("AMOUNT").tr(),
              const Text("charges").tr(),
              const Text("time").tr(),
              const Text("Cancel").tr(),
              const Text("Add").tr(),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const Text("document").tr(),
              const Text("Description").tr(),
              const Text("Tag").tr(),
              const Text("Choose").tr(),
              const Text("file").tr(),
              const Text("upload").tr(),
              const Text("Cancel").tr(),
              const Text("document").tr(),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const Text("Schedule").tr(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Status").tr(),
                  const Text("date").tr(),
                  const Text("Due").tr(),
                  const Text("Amt").tr(),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Complete").tr(),
                  const Text("Pending").tr(),
                  const Text("Overdue").tr(),
                ],
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const Text("Signature").tr(),
              const Text("Reset").tr(),
              const Text("From").tr(),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
