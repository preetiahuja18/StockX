import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController passwordController = TextEditingController();
  bool isPasswordObscure = true;

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Color(0xFFF2F2F2),
        appBar: PreferredSize(
          
          preferredSize: Size.fromHeight(100),
          child: AppBar(
            elevation: 2.0,
            automaticallyImplyLeading: false,
            centerTitle: true,
            backgroundColor: Color(0xFFF2F2F2),
            flexibleSpace: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/stock logo.png',
                    height: 80,
                  ),
                ),
              ],
            ),
            bottom: TabBar(
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black54,
              indicatorColor: Colors.black,
              tabs: [
                Tab(text: 'Sign Up'),
                Tab(text: 'Login'),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
        
            ListView(
              padding: EdgeInsets.all(16),
              children: [
             buildTextField(
              hintText: 'First Name',
                isMandatory: true,
                
),
                SizedBox(height: 16),
                buildTextField(
                  hintText: 'Last Name',
                ),
                SizedBox(height: 16),
                buildTextField(
                  hintText: 'Email Address',
                  obscureText: false,
                ),
                SizedBox(height: 16),
                buildPasswordField(
                  hintText: 'Password',
                  controller: passwordController,
                  isObscure: isPasswordObscure,
                  toggleObscure: () {
                    setState(() {
                      isPasswordObscure = !isPasswordObscure;
                   });
                },
              ),
              SizedBox(height: 10),
              Text(
                'At least 8 characters, 1 uppercase letter, 1 number & 1 symbol',
                style: TextStyle(color: Colors.black, fontSize: 10,fontWeight: FontWeight.bold),
              ),
               SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  
                },
                 style: ButtonStyle(
                     minimumSize: MaterialStateProperty.all(Size(double.infinity, 45)),
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                child: Text('Sign Up'),
              ),
              SizedBox(height: 10),
                RichText(
               text: TextSpan(
             style: TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.bold),
    children: [
      TextSpan(text: "By signing up, you agree you've read and accepted our \n "),
      TextSpan(text: "Terms and Conditions", style: TextStyle(color: Colors.black)),
      TextSpan(text: ". Please see our "),
      TextSpan(text: "Privacy Policy", style: TextStyle(color: Colors.black)),
      TextSpan(text: " for information \n on how we process your data."),
    ],
  ),
),
  SizedBox(height: 10),

              
                Row(
                  children: [
                    Expanded(
                      child: Divider(color: Colors.grey),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'OR',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ),
                    Expanded(
                      child: Divider(color: Colors.grey),
                    ),
                  ], 
                ),
                
                SizedBox(height: 10),

                buildSocialButton('Continue with Google', 'assets/images/g.jpg', () {
                
                }),SizedBox(height: 10),
                buildSocialButton('Continue with Facebook', 'assets/images/f.png', () {
               
                }),SizedBox(height: 10),
                buildSocialButton('Continue with Twitter', 'assets/images/t.jpg', () {
                  
                }),SizedBox(height: 10),
                 Center(
                   child: RichText(
                                 text: TextSpan(
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    children: [
                      TextSpan(text: "Already have an account? "),
                      TextSpan(
                        text: "Log In",
                        style: TextStyle(color: Color(0xFF426340)),
                        recognizer: TapGestureRecognizer()..onTap = () {
                        
                        },
                      ),
                    ],
                                 ),
                               ),
                 ),


            ],
          ),
            
  
            // Login Tab content
            Center(
              child:  ListView(
              padding: EdgeInsets.all(16),
              children: [
               
               
               
                SizedBox(height: 10),
                buildTextField(
                  hintText: 'Email Address',
                  obscureText: false,
                ),
                SizedBox(height: 16),
                buildPasswordField(
                  hintText: 'Password',
                  controller: passwordController,
                  isObscure: isPasswordObscure,
                  toggleObscure: () {
                    setState(() {
                      isPasswordObscure = !isPasswordObscure;
                   });
                },
              ),
              SizedBox(height: 10),
              Align(alignment: Alignment.bottomRight,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.black, fontSize: 12,),
                ),
              ),
               SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  
                },
                 style: ButtonStyle(
                     minimumSize: MaterialStateProperty.all(Size(double.infinity, 55)),
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                child: Text('Log in'),
              ),
              SizedBox(height: 10),
RichText(
  text: TextSpan(
    style: TextStyle(color: Colors.grey, fontSize: 10, fontWeight: FontWeight.bold),
    children: [
      TextSpan(text: "By logging in, you agree to the "),
      TextSpan(text: "Terms of Service", style: TextStyle(color: Colors.black)),
      TextSpan(text: " and "),
      TextSpan(text: "Privacy Policy", style: TextStyle(color: Colors.black)),
     
    ],
  ),
),
  SizedBox(height: 10),

              
                Row(
                  children: [
                    Expanded(
                      child: Divider(color: Colors.grey),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'OR',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ),
                    Expanded(
                      child: Divider(color: Colors.grey),
                    ),
                  ], 
                ),
                
                SizedBox(height: 10),

                buildSocialButton('Continue with Google', 'assets/images/g.jpg', () {
                
                }),SizedBox(height: 10),
                buildSocialButton('Continue with Facebook', 'assets/images/f.png', () {
               
                }),SizedBox(height: 10),
                buildSocialButton('Continue with Twitter', 'assets/images/t.jpg', () {
                  
                }),SizedBox(height: 10),
                 Center(
                   child: RichText(
                                 text: TextSpan(
                    style: TextStyle(fontSize: 15, color: Colors.black),
                    children: [
                      TextSpan(text: "Need an account? "),
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(color: Color(0xFF426340)),
                        recognizer: TapGestureRecognizer()..onTap = () {
                         
                        },
                      ),
                    ],
                                 ),
                               ),
                 ),


            ],
          ),
            ),
          ],
        ),
      ),
    );
  }
Widget buildTextField({required String hintText, bool obscureText = false, bool isMandatory = false}) {
  return TextFormField(
    decoration: InputDecoration(
      hintText: hintText,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      suffix: isMandatory ? _buildMandatoryHintText(hintText) : null,
    ),
    obscureText: obscureText,
  );
}

Widget _buildMandatoryHintText(String hintText) {
  return Container(
    padding: EdgeInsets.only(right: 8),
    child: Text.rich(
      TextSpan(
        style: TextStyle(color: Colors.grey, fontSize: 14),
        children: [
          TextSpan(text: hintText),
          TextSpan(text: ' *', style: TextStyle(color: Colors.red)),
        ],
      ),
    ),
  );
}


  Widget buildPasswordField({
    required String hintText,
    required TextEditingController controller,
    required bool isObscure,
    required VoidCallback toggleObscure,
  }) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: isObscure ? hintText.replaceAll(RegExp('.'), '*') : hintText,
      
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        suffixIcon: GestureDetector(
          onTap: toggleObscure,
          child: Icon(
            isObscure ? Icons.visibility : Icons.visibility_off,
            color: Colors.grey,
          ),
        ),
      ),
      obscureText: isObscure,
    );
  }
  
 Widget buildSocialButton(String label, String imagePath, VoidCallback onPressed) {
    return InkWell(
      onTap: onPressed,
      child: Container(
      
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          
          borderRadius: BorderRadius.circular(0),
          border: Border.all(color: Colors.black),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              height: 24,
              width: 24,
            ),
            SizedBox(width: 8),
            Text(
              label,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
