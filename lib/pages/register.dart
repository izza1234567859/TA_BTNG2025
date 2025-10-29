import 'package:example_stack/pages/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:example_stack/pages/homePage.dart'; 

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isVisible = true;
  final TextEditingController passwordctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final bool isPasswordshort =
        passwordctrl.text.isNotEmpty && passwordctrl.text.length < 8;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 45),
          child: Column(
            children: [
              SizedBox(height: 175),
              Text(
                "Create Account",
                style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 26),
              Text(
                "Welcome back \nyou’ve been missedvvvvvvvvv!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 26),
           
              TextField(
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 20),
             
              TextField(
                decoration: InputDecoration(
                  labelText: "email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 20),
         
              TextField(
                controller: passwordctrl,
                obscureText: isVisible,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(
                      color: isPasswordshort ? Colors.red : Colors.black,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: isPasswordshort ? Colors.red : Colors.black,
                      ),
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          isVisible = !isVisible;
                        });
                      },
                      icon: Icon(
                        isVisible ? Icons.visibility_off : Icons.visibility,
                      ),
                    )),
              ),
              SizedBox(height: 4),
         
              if (isPasswordshort)
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Password must be at least 8 characters.",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 11, color: Colors.red),
                  ),
                ),
              SizedBox(height: 33),
             
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 69, 18, 255),
                    elevation: 0,
                  ),
                  onPressed: () {
                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Text(
                    "Sign Up",
                    
                    style: TextStyle(color: Colors.white),
                  ),
                  
                ),
              ),
            
              SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                  onPressed: () {
                 
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  child: Text(
                    "Already have an account",
                    style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: 30),
             
              Text(
                "Or continue with",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 142, 166, 226)),
              ),
              SizedBox(height: 20),
            
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
               Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 205, 234, 252),
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: Image.asset("assets/images/google.png", height: 29, width: 29),
                    ),
                 
              Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 205, 234, 252),
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: Image.asset("assets/images/iphone.png", height: 29, width: 30),
                    ),
                
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 205, 234, 252),
                        borderRadius: BorderRadius.circular(19),
                      ),
                      child: Image.asset("assets/images/instagram.png", height: 29, width: 29),
                    ),
                 
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}