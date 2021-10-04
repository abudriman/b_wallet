import 'package:b_wallet/b_wallet/widgets/widgets.dart';
import 'package:b_wallet/util/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                const Expanded(
                  flex: 25,
                  child: BackgroundPattern(path: 'assets/images/pattern2.png'),
                ),
                Expanded(
                  flex: 75,
                  child: Container(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Expanded(
                  flex: 18,
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Text(
                              "Balance",
                              style: TextStyle(color: Colors.white),
                            ),
                            Row(
                              children: [
                                const Text(
                                  "\$5,000.00",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                GestureDetector(
                                    child: const Icon(
                                  Icons.visibility_off,
                                  color: Colors.white54,
                                )),
                              ],
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(.3)),
                          child: const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 82,
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 4,
                              spreadRadius: -2,
                              offset: const Offset(0, 5),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        color: Colors.amber,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.add_circle_outlined,
                                          color: Colors.white,
                                        ),
                                      )),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: Text('Top up'),
                                  ),
                                ],
                              ),
                              const Flexible(
                                  child: FractionallySizedBox(
                                widthFactor: 0.4,
                              )),
                              Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        color: Colors.indigoAccent,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.arrow_circle_up,
                                          color: Colors.white,
                                        ),
                                      )),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: Text('Send'),
                                  ),
                                ],
                              ),
                              const Flexible(
                                  child: FractionallySizedBox(
                                widthFactor: 0.4,
                              )),
                              Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                        color: Colors.redAccent.shade100,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.arrow_circle_down,
                                          color: Colors.white,
                                        ),
                                      )),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: Text('Request'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    width: 1,
                                    color: Colors.grey.shade200,
                                    style: BorderStyle.solid),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: SizedBox(
                                  height: 65,
                                  width: 65,
                                  child: Column(
                                    children: const [
                                      Icon(
                                        Icons.phone_android_rounded,
                                        color: Colors.amber,
                                        size: 40,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text("Internet")
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    width: 1,
                                    color: Colors.grey.shade200,
                                    style: BorderStyle.solid),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: SizedBox(
                                  height: 65,
                                  width: 65,
                                  child: Column(
                                    children: const [
                                      Icon(
                                        Icons.account_balance_wallet,
                                        color: Colors.amber,
                                        size: 40,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text("Gold")
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    width: 1,
                                    color: Colors.grey.shade200,
                                    style: BorderStyle.solid),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: SizedBox(
                                  height: 65,
                                  width: 65,
                                  child: Column(
                                    children: const [
                                      Icon(
                                        Icons.tungsten,
                                        color: Colors.amber,
                                        size: 40,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text("Electricity")
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(
                                    width: 1,
                                    color: Colors.grey.shade200,
                                    style: BorderStyle.solid),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: SizedBox(
                                  height: 65,
                                  width: 65,
                                  child: Column(
                                    children: const [
                                      Icon(
                                        Icons.apps,
                                        color: Colors.amber,
                                        size: 40,
                                      ),
                                      SizedBox(
                                        height: 8,
                                      ),
                                      Text("Others")
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: const [
                            Text(
                              "Promo For You",
                              style: TextStyle(
                                  fontSize: 28, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 130,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            const SizedBox(
                              width: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            'Doorprize Handphone',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Get Coupons Now',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 50,
                                      ),
                                      const Icon(
                                        Icons.image,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: kPrimaryColor,
                                    borderRadius: BorderRadius.circular(20)),
                                child: Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: const [
                                          Text(
                                            'Doorprize Handphone',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 24),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            'Get Coupons Now',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 50,
                                      ),
                                      const Icon(
                                        Icons.image,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
