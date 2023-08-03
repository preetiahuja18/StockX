import 'package:flutter/material.dart';
import 'package:stockx/auth/signup.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0,),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.zero,
                  child: Image.asset(
                    'assets/images/stock.png',
                    width: 180,
                    height: 150,
                  ),
                ),
                Center(
                  child: Text(
                    "Log in or create an account to",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "       manage your Portfolio, Bids and",
                      style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                 Center(
                  child: Text(
                    " Asks" ,
                      style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),elevation:  MaterialStateProperty.all(2),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(Color(0xFF00633F)),
                  ),
                  child: Text('Sign Up'),
                ),
                SizedBox(height: 10,),
                Text('Already have an account?',style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUp(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),elevation:  MaterialStateProperty.all(2),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(Color(0xFF00633F)),
                  ),
                  child: Text('Log In'),
                ),
                SizedBox(height: 10,),
                
                Text('Blog', style: TextStyle(color: Color(0xFF0f6445),fontSize: 18,fontWeight: FontWeight.bold),),
                SizedBox(height: 20),
              
                
                Text('Help', style: TextStyle(color: Color(0xFF0f6445),fontSize: 18,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                
                Text('How it Works', style: TextStyle(color: Color(0xFF0f6445),fontSize: 18,fontWeight: FontWeight.bold),),
                SizedBox(height: 20),
           
                
                Text('Reviews', style: TextStyle(color: Color(0xFF0f6445),fontSize: 18,fontWeight: FontWeight.bold),),
               SizedBox(height: 20,),
                
                Text('Currency', style: TextStyle(color: Color(0xFF0f6445),fontSize: 18,fontWeight: FontWeight.bold),),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
