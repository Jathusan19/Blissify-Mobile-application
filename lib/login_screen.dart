import 'package:flutter/material.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/signup.dart';
import 'music_app.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

 GlobalKey <FormState> formkey = GlobalKey <FormState> ();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      extendBody: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: Color.fromARGB(0, 248, 248, 248), // Dark background color
      body: SingleChildScrollView(
        child: Form(
          key : formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(
                    bgImage,
                    height: height * 0.4,
                    width: width * 1,
                    fit: BoxFit.cover, // Make the background image cover the whole area
                  ),


                  Container(
                    height: height * 0.4,
                    width: width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: const [Colors.transparent, Colors.white24],
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  appName,
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    color: Colors.white, // Text color
                  ),
                ),
              ),
              Center(
                
                child: Text(
                  slogan,
                  style: TextStyle(color: Colors.white10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Text(
                    "  $loginString  ",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white, // Text color
                    ),
                  ),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(0, 25, 86, 5),
                        const Color.fromARGB(0, 32, 203, 106).withOpacity(0.4),
                      ],
                    ),
                    border: Border(left: BorderSide(color: Colors.green, width: 5)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator: (email){
                    if(email!.isEmpty) 
                    return "Please Enter Email";
                 else if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$').hasMatch(email))
                  return "It is not a valid Email";
                return null;
                  },
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    
                    //TextStyle(color: Colors.white)
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.purple,
                    ),
                    labelText: "EMAIL ADDRESS",
                    labelStyle: TextStyle(color: Colors.purple, fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  validator:(password){
                  if(password!.isEmpty)
                  return "Please Enter Password";
                  else if(password.length<8)
                   return "Password Length is low";
                  return null; 
                } ,
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    prefixIcon: Icon(
                      Icons.lock_open,
                      color: Colors.purple,
                    ),
                    labelText: "PASSWORD",
                    labelStyle: TextStyle(color: Colors.purple, fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "If you don't have an account",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white, // Text color
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignupPage()),
                        );
                      },
                      child: Text(
                        " Register",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.blue,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  if(formkey.currentState!.validate())
                  { print("Valid");

                  }

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MusicApp()),
          );
                },
                style: ElevatedButton.styleFrom(
          primary: Colors.green,
          onPrimary: Colors.white,
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 5,
                ),
                child: Text(
          'Login',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
                ),
              ),
            ),
          ),
          
            ],
          ),
        ),
      ),
    );
  }
}
