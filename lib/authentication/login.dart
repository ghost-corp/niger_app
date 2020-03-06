import 'package:flutter/material.dart';
import 'package:niger_app/widgets/loading.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController email = new TextEditingController();
  final TextEditingController password = new TextEditingController();
  bool loadingVisible = false;
  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = size.height;

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
                              "assets/images/gurara.jpg",
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
                                padding: EdgeInsets.only(top: 16.0),
                                child: GestureDetector(
                                  child: Text(
                                    "Remember Me",
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade600
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: height * 0.02, right: width * 0.5),
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              'Forgot Password ?',
                              style: TextStyle(
                                  fontSize: 13, color: Colors.red.shade300),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: height * 0.05),
                          child: Center(
                            child: FlatButton(
                              onPressed: () {
                                Navigator.pushNamed(context, "home");
                              },
                              padding: EdgeInsets.symmetric(
                                  vertical: height * 0.02,
                                  horizontal: width * 0.35),
                              child: Text(
                                'LOGIN',
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
