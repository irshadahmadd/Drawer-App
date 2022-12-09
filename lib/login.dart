import 'package:drawerapp/register.dart';
import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<ScaffoldState> _key=GlobalKey();
  TextEditingController email=TextEditingController();
  TextEditingController passward=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: SafeArea(
        child: Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.only(bottom: 50),
          height: 700,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(bottomLeft:Radius.circular(20),bottomRight: Radius.circular(20)),
            border: Border.all(color: Colors.indigo,width: 3),
          ),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20,),

                height: 150,
                width: 250,
                decoration: const BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(30)),
                ),

                child: Row(
                  children: [
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [

                        CircleAvatar(child: Icon(Icons.person_outline,color: Colors.black,),backgroundColor: Colors.white,),

                      ],

                    ),
                    const SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [

                        Text("Irshad Khan",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),

                        Text("View Profile",style: TextStyle(color: Colors.white),),
                      ],
                    ),
                  ],

                ),
              ),
              Container(
                  padding: const EdgeInsets.only(left: 10,top: 15),
                  child: Column(
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.home,color: Colors.indigo,size: 30,),
                          SizedBox(width: 20,),
                          Text("Home",style: TextStyle(color: Colors.black,fontSize: 18),),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        children: const [
                          Icon(Icons.contrast,color: Colors.indigo,size: 30,),
                          SizedBox(width: 20,),
                          Text("Terms & conditions",style: TextStyle(color: Colors.black,fontSize: 18),),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        children: const [
                          Icon(Icons.privacy_tip_outlined,color: Colors.indigo,size: 30,),
                          SizedBox(width: 20,),
                          Text("Privacy Policy",style: TextStyle(color: Colors.black,fontSize: 18),),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        children: const [
                          Icon(Icons.wallet_giftcard,color: Colors.indigo,size: 30,),
                          SizedBox(width: 20,),
                          Text("Wallet Deposit Policy",style: TextStyle(color: Colors.black,fontSize: 18),),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        children: const [
                          Icon(Icons.verified_user_outlined,color: Colors.indigo,size: 30,),
                          SizedBox(width: 20,),
                          Text("How it Works",style: TextStyle(color: Colors.black,fontSize: 18),),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        children: const [
                          Icon(Icons.account_balance_wallet_outlined,color: Colors.indigo,size: 30,),
                          SizedBox(width:20,),
                          Text("About Us",style: TextStyle(color: Colors.black,fontSize: 18),),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      Row(
                        children: const [
                          Icon(Icons.heart_broken_sharp,color: Colors.indigo,size: 30,),
                          SizedBox(width: 20,),
                          Text("Support",style: TextStyle(color: Colors.black,fontSize: 18),),
                        ],
                      )
                    ],
                  )
              )
            ],

          ),


        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: const BoxDecoration(
          color: Color(0xfff4f4f6),

        ),

      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40),
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(onPressed: (){
                    _key.currentState!.openDrawer();
                  }, icon: const Icon(Icons.menu,color: Colors.black,size: 30,)),
                  const Image(image: AssetImage("assets/log.png"),),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 15,right: 15),
              width: 350,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const SizedBox(height: 20,),
                  const Text("Sign in",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
                  const SizedBox(height: 5,),
                  const Text("If you have already an account then Login",style: TextStyle(color: Colors.black),),
                  const SizedBox(height: 25,),
                  Container(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    decoration: BoxDecoration(
                      border: Border.all(width: 2,color: Colors.black),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: TextField(
                      controller: email,

                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          hintText: "Enter Your Email",
                          prefixIcon: const Icon(Icons.email,color: Colors.black,),
                         focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,


                      ),

                    ),
                  ),
                  const SizedBox(height: 25,),
                  Container(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black,width: 2),
                    ),
                    child: TextField(
                      controller: passward,
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Your Passward",
                          suffixIcon: Icon(Icons.remove_red_eye,color: Colors.black,),
                         prefixIcon: Icon(Icons.lock,color: Colors.black,),
                         enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 25,),
                  Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(20),
                      boxShadow: const [BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 10,
                        blurRadius: 20,
                        offset: Offset(0.3,0.3),

                      ),
                      ]
                    ),
                    child: ElevatedButton(onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Register()));
                    },
                        child: const Text("Sign in",style: TextStyle(color: Colors.black,fontSize: 20),),
                        style:ElevatedButton.styleFrom(
                           primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          )
                        )
                    ),
                  ),
                  const SizedBox(height: 20,),
                  const Text("Forgot Password? ",style: TextStyle(color: Colors.red),)

                ],
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 20,),
                const Text("Have Not an Account then Sign Up",style: TextStyle(color: Colors.black),),
                const SizedBox(height: 20,),
                Container(
                  height: 40,
                  width: 180,
                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ElevatedButton(onPressed:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Register()));
                  },
                      child: const Text("Sign Up"),
                      style:ElevatedButton.styleFrom(
                         padding: const EdgeInsets.only(left: 40,right: 40),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                        primary: const Color(0xff1e557c),
                      )
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 3,
                  width: 70,
                  decoration: const BoxDecoration(
                    color: Color(0xff1e557c),
                  ),
                )
              ],
            )
          ],
        ),
      ),
      ),
    );
  }
}
