import 'package:flutter/material.dart';
import 'package:food_delivery_app_ui/pages/home_page.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
              image: AssetImage('asset/images/starter-image.jpg'),
              fit: BoxFit.cover),
        ),
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.black.withOpacity(.9),
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.2),
          ])),
          child:  Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Taking Order For Faster Delivery",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("see resturants nearby \nadding location",
                    style: TextStyle(
                        fontSize: 18, color: Colors.white, height: 1.4)),
                const SizedBox(
                  height: 100,
                ),
                Container(
                  decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.yellow,Colors.orange])),
                  child:MaterialButton(
                    minWidth: double.infinity,
                    onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));

                    },child: Text("Start",style: TextStyle(color: Colors.white),),)
                ),
                const SizedBox(
                  height: 30,
                ),
                Align(
                  child:  const Text("Now Deliver To Your Door 24/7",
                    style: TextStyle(
                        fontSize: 15, color: Colors.white70,)),
                ),
                 const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
