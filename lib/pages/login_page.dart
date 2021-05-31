import 'package:flutter/material.dart';
import 'package:flutter_catalogue/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100.0,
            ),
            Image.asset(
              "assets/images/login_new_image.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome $name",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter User Name", labelText: "UserName"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      }),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40.0,
            ),

            Material(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(changedButton ? 50 : 8),
              child: InkWell(
                onTap: () async {
                  setState(() {
                    changedButton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  await Navigator.pushNamed(context, MyRoutes.homeRoute);
                  setState(() {
                    changedButton = false;
                  });
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: changedButton ? 50 : 150,
                  height: 50,
                  alignment: Alignment.center,
                  // color: Colors.deepPurple,
                  child: changedButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                  // decoration: BoxDecoration(
                  //     color: Colors.deepPurple,
                  //     // shape: changedButton ? BoxShape.circle : BoxShape.rectangle,

                  //     // ),
                  //     ),
                ),
              ),
            ),
            // ElevatedButton(
            //   style: TextButton.styleFrom(minimumSize: Size(150, 50)),
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   },
            //   child: Text(
            //     "Login",
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
