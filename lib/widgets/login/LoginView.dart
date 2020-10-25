import 'package:easy_games/widgets/custom/PrimaryButton.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  final Function(String) onNameEntered;

  LoginView(this.onNameEntered);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _nameController = TextEditingController();
  bool _hasClickedLogin = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset("assets/images/easy_game_logo.png"),
          Spacer(),
          !_hasClickedLogin
              ? Flexible(
                  flex: 3,
                  child: Container(
                    width: 300,
                    child: Column(
                      children: [
                        PrimaryButton(
                          onPressed: () => widget.onNameEntered("anonmyous"),
                          child: Text("Play without login in"),
                        ),
                        PrimaryButton(
                          onPressed: () {
                            setState(() => _hasClickedLogin = true);
                          },
                          child: Text("Login in"),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 6),
                          child: Divider(
                            color: Colors.grey,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: Color.fromRGBO(25, 119, 243, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Image.asset("assets/icons/facebook.png", width: 20),
                                ),
                              ),
                              Align(
//                          alignment: Alignment.center,
                                child: Text("Sign up with Google"),
                              )
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 16),
                                  child: Image.asset("assets/icons/google.png", width: 20),
                                ),
                              ),
                              Align(
//                          alignment: Alignment.center,
                                child: Text(
                                  "Sign up with Google",
                                  style: TextStyle(color: Color.fromRGBO(220, 220, 220, 1)),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              : Expanded(
                  flex: 6,
                  child: Container(
                    width: 250,
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 6,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(50))
                          ),
                          child: TextField(
                            textAlign: TextAlign.center,
                            decoration: InputDecoration(
                              hintText: "Enter your name",
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                borderSide: BorderSide.none,
                              ),
                              fillColor: Colors.white,
                              filled: true,
                            ),
                            style: TextStyle(),
                            controller: _nameController,
                            onSubmitted: (_) => widget.onNameEntered(_nameController.text),
                          ),
                        ),
                        Container(
                          width: 150,
                          child: PrimaryButton(
                            child: Text("Play", style: TextStyle(color: Colors.white)),
                            onPressed: () => widget.onNameEntered(_nameController.text),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
