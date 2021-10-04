import 'package:b_wallet/b_wallet/barrel.dart';
import 'package:b_wallet/util/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:routemaster/routemaster.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({Key? key}) : super(key: key);
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.white),
      borderRadius: BorderRadius.circular(15.0),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            const Align(
                alignment: Alignment.bottomCenter, child: BackgroundPattern()),
            Column(
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Routemaster.of(context).push('/'),
                      child: const Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white.withOpacity(.1)),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Icon(
                            Icons.lock,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Text(
                  "Enter the OTP Code ",
                  style: TextStyle(color: Colors.white),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "We've sent you an OTP Code to",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Text(
                  "085702636260",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child: PinPut(
                        fieldsCount: 4,
                        onSubmit: (string) =>
                            {Routemaster.of(context).push('/home')},
                        onChanged: (string) {},
                        onSaved: (string) {},
                        focusNode: _pinPutFocusNode,
                        controller: _pinPutController,
                        submittedFieldDecoration: _pinPutDecoration,
                        selectedFieldDecoration: _pinPutDecoration,
                        followingFieldDecoration: _pinPutDecoration,
                        fieldsAlignment: MainAxisAlignment.center,
                        eachFieldMargin:
                            const EdgeInsets.symmetric(horizontal: 5.0),
                        eachFieldHeight: 70.0,
                        eachFieldWidth: 70.0,
                        autofocus: true,
                        keyboardType: TextInputType.number,
                        textStyle:
                            const TextStyle(color: Colors.white, fontSize: 24),
                        textInputAction: TextInputAction.go,
                      ),
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
