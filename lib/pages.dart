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
              const Text("Account Number").tr(),
              const Text("External Id").tr(),
              const Text("Date").tr(),
              const Text("Office").tr(),
              const Text("Mobile Number").tr(),
              const Text("Address").tr(),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Loan Account Shummary").tr(),
              const Text("E-RICKSHAW").tr(),
              const Text("Amount Disbursed").tr(),
              const Text("Disbursement Date").tr(),
              const Text("In Arrears").tr(),
              const Text("Staff").tr(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("SUMMARY").tr(),
                  const Text("loan").tr(),
                  const Text("Amt.Paid").tr(),
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
              const Text("Disburse Loan").tr(),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Charges id").tr(),
              const Text("Charges Name").tr(),
              const Text("Calculation Type").tr(),
              const Text("Due At").tr(),
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
              const Text("Select charges").tr(),
              const Text("AMOUNT").tr(),
              const Text("Charge time").tr(),
              const Text("time").tr(),
              const Text("Cancel").tr(),
              const Text("Add Charge").tr(),
              const Divider(
                thickness: 1,
                color: Colors.grey,
              ),
              const Text("Add Document").tr(),
              const Text("Description").tr(),
              const Text("Tag").tr(),
              const Text("Choose  Tag").tr(),
              const Text("Select file").tr(),
              const Text("Upload File").tr(),
              const Text("Cancel").tr(),
              const Text("Document").tr(),
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
                  const Text("Amount Due").tr(),
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
              // const Text("Upload Signature").tr(),
              const Text("From Gallery").tr(),
              const Text("Form").tr(),
              const Text("Activation Date").tr(),
              const Text("Accounts Date").tr(),
              const Text("Home").tr(),
              const Text("Macker").tr(),
              const Text("Checker").tr(),
              const Text("GROUPS").tr(),
              const Text("SAVINGS").tr(),
              const Text("SHARES").tr(),

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
