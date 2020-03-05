import 'package:flutter/material.dart';
import 'package:niger_app/widgets/loading.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController fullName = new TextEditingController();
  final TextEditingController email = new TextEditingController();
  final TextEditingController password = new TextEditingController();
  bool loadingVisible = false;
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = size.height;
    double width = size.width;

    return Scaffold(
      body: LoadingScreen(
        inAsyncCall: loadingVisible,
        child: InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: Form(
            key: formKey,
            child: ListView(
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: EdgeInsets.zero,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.zero,
                          child: Container(
                            height: height * 0.3,
                            width: width,
                            child: Image.asset(
                              "assets/images/zuma.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.05),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  "FULL NAME",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                width: width * 0.8,
                                child: TextFormField(
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Field must not be empty";
                                    }
                                    return null;
                                  },
                                  controller: fullName,
                                  style: TextStyle(fontSize: 14.0),
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(color: Colors.grey),
                                      hintText: "Enter your Full Name"),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.05),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  "EMAIL",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                width: width * 0.8,
                                child: TextFormField(
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Field must not be empty";
                                    }
                                    return null;
                                  },
                                  controller: email,
                                  style: TextStyle(fontSize: 14.0),
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(color: Colors.grey),
                                      hintText: "Enter your Email Address"),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.05),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  "PASSWORD",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade600,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Container(
                                width: width * 0.8,
                                child: TextFormField(
                                  validator: (value) {
                                    if (value.isEmpty) {
                                      return "Field must not be empty";
                                    }
                                    return null;
                                  },
                                  controller: email,
                                  style: TextStyle(fontSize: 14.0),
                                  decoration: InputDecoration(
                                      hintStyle: TextStyle(color: Colors.grey),
                                      hintText: "***************"),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: height * 0.05, left: width * 0.05),
                          child: Container(
                              child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Checkbox(
                                onChanged: null,
                                value: checkedValue,
                              ),
                              Padding(
                                padding:  EdgeInsets.only(top: 15.0),
                                child: GestureDetector(
                                  child: RichText(
                                      text: TextSpan(
                                          text: 'I Agree To All Statements In ',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.grey.shade700),
                                          children: <TextSpan>[
                                        TextSpan(
                                            text: 'Terms Of Service',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: Colors.green.shade800,
                                                fontSize: 13,
                                                decoration:
                                                    TextDecoration.underline,
                                                decorationColor: Colors.red))
                                      ])),
                                ),
                              ),
                            ],
                          )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.05),
                          child: Center(
                            child: FlatButton(
                              onPressed: () {
                                Navigator.of(context).pushNamed("Login");
                              },
                              padding: EdgeInsets.symmetric(
                                  vertical: height * 0.02,
                                  horizontal: width * 0.35),
                              child: Text(
                                'SIGN UP',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6))),
                              disabledColor: Colors.indigo.shade600,
                              color: Colors.indigo.shade600,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
