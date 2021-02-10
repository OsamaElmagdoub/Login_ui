import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width,
              maxHeight: MediaQuery.of(context).size.height,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue[400], Colors.blue[500]],
              ),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontWeight: FontWeight.w300),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Enter a beautiful Word",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w100),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                flex: 6,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: 'Enter Your email',
                              filled: true,
                              fillColor: Colors.grey[300],
                              prefixIcon: Icon(
                                Icons.mail,
                                color: Colors.blue,
                              )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: 'Password',
                              filled: true,
                              fillColor: Colors.grey[300],
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.blue,
                              )),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            onTap: () {},
                            child: Text(
                              "Forgot Password",
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  decoration: TextDecoration.underline),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        SizedBox(
                          width: 200,
                          height: 50,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            textColor: Colors.white,
                            child: Text(
                              'LOGIN',
                              style: TextStyle(fontSize: 25),
                            ),
                            color: Colors.blue,
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Text(
                          "Don't have an account ? ",
                          style: TextStyle(fontSize: 25),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'Register Now',
                            style: TextStyle(color: Colors.blue, fontSize: 25),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ])),
      ),
    );
  }
}
