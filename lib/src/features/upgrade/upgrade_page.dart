import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_storage/src/constants/colors.dart';

class UpgradePage extends StatefulWidget {
  const UpgradePage({Key? key}) : super(key: key);

  @override
  State<UpgradePage> createState() => _UpgradePageState();
}

class _UpgradePageState extends State<UpgradePage> {
  int _sliding = 0;
  List<bool> isChecked = [false, false, false];
  bool isMonthly = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Upgrade',
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 60,
                height: 60,
                color: const Color(0xFFFCEFE4),
                child: const Icon(Icons.auto_awesome_outlined),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Upgrade to premium',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.only(top: 13.0, right: 30, bottom: 25, left: 30),
              child: Text(
                'Your account is equipped with 50GB of free storage no fee requirement',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            CupertinoSlidingSegmentedControl(
              children: const {
                0: Padding(
                  padding:
                      EdgeInsets.only(top: 13, right: 35, bottom: 13, left: 35),
                  child: Text(
                    'Monthly',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                ),
                1: Padding(
                  padding:
                      EdgeInsets.only(top: 10, right: 27, bottom: 10, left: 27),
                  child: Text(
                    'Annually',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w700),
                  ),
                ),
              },
              groupValue: _sliding,
              onValueChanged: (newValue) {
                setState(() {
                  _sliding = newValue as int;
                  isMonthly = !isMonthly;
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            isMonthly
                ? GestureDetector(
                    onTap: () {
                      setState(() {
                        isChecked[0] = !isChecked[0];
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: _Plan(
                        isSelected: isChecked[0],
                        amount: '200GB',
                        pricing: '6.00',
                        plan: 'Premium',
                      ),
                    ),
                  )
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        isChecked[0] = !isChecked[0];
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: _Plan(
                        isMonthly: false,
                        isSelected: isChecked[0],
                        amount: '200GB',
                        pricing: '50.00',
                        plan: 'Premium',
                      ),
                    ),
                  ),
            const SizedBox(
              height: 15,
            ),
            Visibility(
              visible: isMonthly,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: _Plan(
                  amount: '1TB',
                  pricing: '22.99',
                  plan: 'Pro',
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Visibility(
              visible: isMonthly,
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: _Plan(
                  amount: '2TB',
                  pricing: '32.99',
                  plan: 'Business',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _Plan extends StatelessWidget {
  const _Plan({
    required this.amount,
    required this.pricing,
    required this.plan,
    this.isSelected = false,
    this.isMonthly = true,
    Key? key,
  }) : super(key: key);
  final String amount;
  final String pricing;
  final String plan;
  final bool isSelected;
  final bool isMonthly;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 110,
        color: isSelected ? lightYellowGreen : lightGrey,
        child: Padding(
          padding:
              const EdgeInsets.only(top: 15, right: 13.0, bottom: 10, left: 13),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      amount,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text(
                      plan,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          isMonthly ? '\$$pricing/ Month' : '\$$pricing/ Year',
                          style: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          isMonthly
                              ? 'Billed every month'
                              : 'Billed every year',
                          style: const TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 11),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: isSelected ? black : lightGrey,
                        minimumSize: const Size(80, 34),
                        shape: RoundedRectangleBorder(
                          side: const BorderSide(
                            color: Colors.black12,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Start',
                        style: TextStyle(
                            color: isSelected ? Colors.white : Colors.black),
                      ),
                    )
                  ],
                )
              ]),
        ),
      ),
    );
  }
}
