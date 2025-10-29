
import 'package:example_stack/pages/register.dart';

import 'homePage.dart'; 
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 170),
            Text(
              "Sign In",
              style: TextStyle(fontSize: 29, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25),
            Text(
              "Hi! Welcome back \nyou’ve been missed!",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 19),
          
            TextField(
              decoration: InputDecoration(
                labelText: "Username or Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 20),
        
            TextField(
              obscureText: isVisible,
              decoration: InputDecoration(
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.black),
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
            SizedBox(height: 5),
          
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "Forgot password ?",
                  style: TextStyle(
                      fontSize: 13, color: Color.fromARGB(255, 3, 26, 125)),
                ),
              ),
            ),
            SizedBox(height: 9),
          
              SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 69, 18, 255),
                  ),
                  onPressed: () {
                    
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
                  )),
            ),
          
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:Color.fromARGB(255, 214, 206, 242),
                  ),
                  onPressed: () {
          
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: Text(
                    "Create new Account",
                    style: TextStyle(color: Colors.black),
                  )),
            ),
            SizedBox(
              height: 30,
            ),
          
            Text(
              "Or continue with",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color:Color.fromARGB(255, 142, 166, 226)),
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                  Container(
                  margin: EdgeInsets.symmetric(horizontal: 5), // Jarak antar ikon
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  decoration: BoxDecoration(
                    color:Color.fromARGB(255, 205, 234, 252),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: Image.asset(
                    "assets/images/google.png",
                    height: 29,
                    width: 29,
                  ),
                ),
                
              
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      color:Color.fromARGB(255, 205, 234, 252),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Image.asset(
                      "assets/images/iphone.png",
                      height: 29,
                      width: 30,
                    ),
                  ),
                
              
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 205, 234, 252),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: Image.asset(
                      "assets/images/instagram.png",
                      height: 29,
                      width: 29,
                    ),
                  ),
              
              ],
            )
          ],
        ),
      ),
    );
  }
}