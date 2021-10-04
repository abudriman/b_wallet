import 'package:b_wallet/b_wallet/barrel.dart';
import 'package:b_wallet/util/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kPrimaryColor,
        child: Stack(children: [
          //Background
          const Positioned(top: 170, child: BackgroundPattern()),
          //Page content
          SlidingUpPanel(
            body: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Flexible(
                        child: FractionallySizedBox(
                          heightFactor: 0.13,
                          widthFactor: 0.2,
                        ),
                      ),
                      Image.asset('assets/images/b_wallet_logo.png'),
                      const Text(
                        'B-Wallet',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )
                    ],
                  ),
                ),
              ],
            ),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
            maxHeight: 400,
            minHeight: 400,
            padding: EdgeInsets.all(10),
            panel: Column(
              children: [
                // lil head toggle
                Container(
                  height: 6,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Colors.grey.shade300,
                  ),
                ),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                    left: 20,
                    right: 20,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 18.0),
                        child: Row(
                          children: const <Widget>[
                            Text(
                              "Sign in",
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.shade300, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: TextFormField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              labelText: 'Email/Phone Number',
                              labelStyle: TextStyle(color: Color(0xFFBDBDBD)),
                            ),
                          ),
                        ),
                      ),
                      const Flexible(
                        child: FractionallySizedBox(
                          heightFactor: 0.09,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.grey.shade300, width: 2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: TextFormField(
                            obscureText: true,
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.visiblePassword,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                            decoration: const InputDecoration(
                                border: InputBorder.none,
                                labelText: 'Password',
                                labelStyle: TextStyle(
                                  color: Color(0xFFBDBDBD),
                                ),
                                suffixIcon: Icon(
                                  Icons.visibility,
                                  color: Color(0xFFBDBDBD),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () =>
                                Routemaster.of(context).push('/otp'),
                            child: Text('Sign in'),
                            style: ElevatedButton.styleFrom(
                                primary: kSecondaryColor)),
                      ),
                      const Flexible(
                        child: FractionallySizedBox(
                          heightFactor: 0.09,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(color: kSecondaryColor),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have account yet? ",
                            style: TextStyle(color: Colors.grey[400]),
                          ),
                          const Text(
                            'Sign Up',
                            style: TextStyle(color: kSecondaryColor),
                          )
                        ],
                      )
                    ],
                  ),
                )),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
