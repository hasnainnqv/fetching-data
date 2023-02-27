
import 'package:flutter/material.dart';
import 'package:sample/statefull_widget.dart';
void main() {
  runApp(const myApp());
}

class myApp extends StatelessWidget{
  const myApp({Key? key}) : super(key:key);
  @override

  Widget build(BuildContext context){
    return MaterialApp(
      title: "FLUTTER WIDGET",
      debugShowCheckedModeBanner:  false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  const MyHomePage({Key? key}) : super (key: key);
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  var emailText= TextEditingController();
  var passwordText= TextEditingController();
  var phoneNumber= TextEditingController();
  var addressText= TextEditingController();
  bool _obsecure=true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Text("FLUTTER BUTTON",textAlign: TextAlign.right,),

        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   // height: 50,
                  // color:  Colors.red,
                  width: 300,
                  child: TextField(
                    controller: emailText,
                    decoration: InputDecoration(
                      hintText: "Email Address",
                      enabled: true,

                        prefixIcon: Icon(Icons.mail, color: Colors.blueAccent),
                        focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.green,
                          width: 3
                        )
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: BorderSide(
                          color: Colors.blueAccent,
                          width: 3
                        ))
                    ),
                  ),
              ),
               ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 300,
                    child: TextField(
                      controller: phoneNumber,
                      decoration: InputDecoration(

                          hintText: "Phone Number",
                          enabled: true,

                          prefixIcon: IconButton(icon: Icon(Icons.phone),color: Colors.blueAccent,
                            onPressed: (){},),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.green,
                                  width: 3
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.blueAccent,
                                  width: 3
                              ))
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 300,
                    child: TextField(
                      controller: addressText,

                      decoration: InputDecoration(

                          hintText: "Address",
                          enabled: true,

                          prefixIcon: IconButton(icon: Icon(Icons.location_city),color: Colors.blueAccent,
                            onPressed: (){},),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.green,
                                  width: 3
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.blueAccent,
                                  width: 3
                              ))
                      ),
                    ),
                  ),

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 300,
                    child: TextField(
                      controller: passwordText,
                      obscureText: _obsecure,
                      obscuringCharacter: "*",
                      decoration: InputDecoration(

                          hintText: "Password",
                          enabled: true,

                          suffixIcon: IconButton(
                            icon: Icon(
                             color: Colors.red,

                              _obsecure? Icons.visibility: Icons.visibility_off
),
                              onPressed: (){
                                  setState(() {
                                  _obsecure = !_obsecure;});


                            },),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.green,
                                  width: 3
                              )
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(11),
                              borderSide: BorderSide(
                                  color: Colors.blueAccent,
                                  width: 3
                              ))
                      ),
                    ),

                  ),

                ),
              ElevatedButton(onPressed: (){

                Navigator.push(context,
                MaterialPageRoute(builder: (context)=> introduction(),)
               );



                print("\nEMAIL : ${emailText.text} \nPHONE  NUMBER: ${phoneNumber.text}\nADDRESS : ${addressText.text}\nPASSWORD : ${passwordText.text}");},

                  child: Text("Press me"))
              ],

            ),
          ),
        )
    );
  }
}
