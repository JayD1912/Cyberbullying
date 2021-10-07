import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter_dialogflow/dialogflow_v2.dart';
import 'package:intl/intl.dart';
import 'dart:math';
import  'package:url_launcher/url_launcher.dart';

void main() => runApp(MyApp());

class Hyperlink extends StatelessWidget {
  final String _url;
  final String _text;

  Hyperlink(this._url, this._text);

  _launchURL() async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'Could not launch $_url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Text(
        _text,
        textAlign: TextAlign.center,
        style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.indigo.withOpacity(1.0),
            decoration: TextDecoration.underline),
      ),
      onTap: _launchURL,
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}
class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideDrawer(),
      appBar: AppBar(
        title: Text('        Say No to bullying!     '),
        backgroundColor: Color(0x802196F3),
      ),
      body: ListView(children:<Widget> [
        Padding(
          padding: const EdgeInsets.all(1.0),

          child: new LimitedBox(
            child: Material(
                color: Colors.black,
                elevation: 14.0,


                borderRadius: BorderRadius.circular(0.0),
                shadowColor: Color(0x802196F3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: myDetailsContainer1(),
                      ),
                    ),


                    Container(
                      width: 50,
                      height: 120,
                    ),
                  ],)
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(1.0),

          child: new LimitedBox(
            child: Material(
                color: Colors.black,
                elevation: 14.0,


                borderRadius: BorderRadius.circular(0.0),
                shadowColor: Color(0x802196F3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: myDetailsContainer2(),
                      ),
                    ),


                    Container(
                      width: 50,
                      height: 120,
                    ),
                  ],)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(1.0),

          child: new LimitedBox(
            child: Material(
                color: Colors.black,
                elevation: 14.0,


                borderRadius: BorderRadius.circular(0.0),
                shadowColor: Color(0x802196F3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: myDetailsContainer3(),
                      ),
                    ),


                    Container(
                      width: 50,
                      height: 120,
                    ),
                  ],)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(1.0),

          child: new LimitedBox(
            child: Material(
                color: Colors.black,
                elevation: 14.0,


                borderRadius: BorderRadius.circular(0.0),
                shadowColor: Color(0x802196F3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: myDetailsContainer4(),
                      ),
                    ),


                    Container(
                      width: 50,
                      height: 120,
                    ),
                  ],)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(1.0),

          child: new LimitedBox(
            child: Material(
                color: Colors.black,
                elevation: 14.0,


                borderRadius: BorderRadius.circular(0.0),
                shadowColor: Color(0x802196F3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: myDetailsContainer5(),
                      ),
                    ),


                    Container(
                      width: 48.5,
                      height: 160,
                    ),
                  ],)
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(1.0),

          child: new LimitedBox(
            child: Material(
                color: Colors.black,
                elevation: 14.0,


                borderRadius: BorderRadius.circular(0.0),
                shadowColor: Color(0x802196F3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: myDetailsContainer1(),
                      ),
                    ),


                    Container(
                      width: 50,
                      height: 120,
                    ),
                  ],)
            ),
          ),
        ),

      ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatBotPage()),
          );
        },
        child:  Icon(Icons.chat_bubble_rounded),
        backgroundColor: Color(0xff08a0e9),
        foregroundColor: Colors.white,

      ),
    );
  }
  Widget myDetailsContainer1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right:130.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Container(child: Text("Akash Sonare ",
                    style: TextStyle(color: Colors.white,fontSize: 18.0,),)),


                ],)),

        ),
        Padding(
          padding: const EdgeInsets.only(right:180.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(child: Text("@Akash01\n ",
                    style: TextStyle(color: Colors.grey,fontSize: 12.0,),)),



                ],)),

        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0),

          child: Container(child: Text("Lets kill jews and kill them for fun.",
            style: TextStyle(color: Colors.red, fontSize: 18.0,fontWeight: FontWeight.bold),)),
        ),


      ],
    );
  }
  Widget myDetailsContainer2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right:40.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Container(child: Text("Akash Sonare ",
                    style: TextStyle(color: Colors.white,fontSize: 18.0,),)),


                ],)),

        ),
        Padding(
          padding: const EdgeInsets.only(right:100.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(child: Text("@Akash01\n ",
                    style: TextStyle(color: Colors.grey,fontSize: 12.0,),)),



                ],)),

        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0),

          child: Container(child: Text("Happy Birthday Aashish.\nLet's party night",
            style: TextStyle(color: Color(0xffc4c4c4), fontSize: 18.0,fontWeight: FontWeight.bold),)),
        ),


      ],
    );
  }
  Widget myDetailsContainer3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right:50.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Container(child: Text("Akash Sonare ",
                    style: TextStyle(color: Colors.white,fontSize: 18.0,),)),


                ],)),

        ),
        Padding(
          padding: const EdgeInsets.only(right:110.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(child: Text("@Akash01\n ",
                    style: TextStyle(color: Colors.grey,fontSize: 12.0,),)),



                ],)),

        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0),

          child: Container(child: Text("Sneha,Aashish,Akash and\nJay will sleep for 20 days.",
            style: TextStyle(color: Color(0xffc4c4c4), fontSize: 18.0,fontWeight: FontWeight.bold),)),
        ),


      ],
    );
  }
  Widget myDetailsContainer4() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right:60.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Container(child: Text("Akash Sonare ",
                    style: TextStyle(color: Colors.white,fontSize: 18.0,),)),


                ],)),

        ),
        Padding(
          padding: const EdgeInsets.only(right:120.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(child: Text("@Akash01\n ",
                    style: TextStyle(color: Colors.grey,fontSize: 12.0,),)),



                ],)),

        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0),

          child: Container(child: Text("Happy Holi!!!!\nEnjoy the festival of colors.",
            style: TextStyle(color: Color(0xffc4c4c4), fontSize: 18.0,fontWeight: FontWeight.bold),)),
        ),


      ],
    );
  }
  Widget myDetailsContainer5() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right:120.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  Container(child: Text("Akash Sonare ",
                    style: TextStyle(color: Colors.white,fontSize: 18.0,),)),


                ],)),

        ),
        Padding(
          padding: const EdgeInsets.only(right:180.0),
          child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(child: Text("@Akash01\n ",
                    style: TextStyle(color: Colors.grey,fontSize: 12.0,),)),



                ],)),

        ),
        Padding(
          padding: const EdgeInsets.only(left: 40.0),

          child: Container(child: Text("School is easy.It's like riding a bike.\nExcept the bike is on fire and\nyou are on fire and everything is on\nfire and you are in hell.",
            style: TextStyle(color: Colors.red, fontSize: 18.0,fontWeight: FontWeight.bold),)),
        ),


      ],
    );
  }
}
class ChatBotPage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<ChatBotPage> {

  final messageInsert = TextEditingController();
  List<Map> messsages =List();

  void response(query) {
    var flag=0;
    query=query.toLowerCase();
    List<String> tokens = query.split(" ");
    List<String> sadReply = ["Until you’re broken you don’t know what you’re made of. It gives you the ability to build yourself all over again, but stronger than ever.",
                              "Never be ashamed of a scar. It means you were stronger than whatever tried to hurt you.",
                              "Cheer up, buttercup. Storms don’t last forever.",
                              "Once you choose hope, anything is possible. Forgive those who insult you, attack you, belittle you or take you for granted.But more than this… forgive yourself for allowing them to hurt you.",
                              "If you could only sense how important you are to the lives of those you meet; how important you can be to the people you may never even dream of. There is something of yourself that you leave at every meeting with another person.",
                              "The most beautiful people I’ve known are those who have known trials, have known struggles, have known loss, and have found their way out of the depths.",
                              "As I look back on my life, I realize that every time I thought I was being rejected from something good, I was actually being re-directed to something better.",
                              "Respect yourself enough to say ‘I deserve peace’ and walk away from people or things that prevent you from attaining it.",
                              "One of the happiest moments in life is when you find the courage to let go of what you cannot change.",
                              "Every experience, no matter how bad it seems, holds within it a blessing of some kind. The goal is to find it.",
                             ];
    List<String> welcome = ["hi","hello","hey"];
    List<String> positive = ["good","great","Amazing","fine","happy","cheerful"];
    List<String> negative= ["sad","unhappy","depressed","yes","yup","ofcourse"];
    List<String> bye= ["no","bye"];
    var randomNumber = new Random();
    var isNegative= false;
    for (var i = 0; i < bye.length; i++){
      if(tokens.contains(bye[i])) {
        flag=1;
        setState(() {
          messsages.insert(0, {
            "data": 0,
            "message": "Bbye. Have a great day!!"
          });
        });
      }
    }
    if(tokens.contains("not")) isNegative=true;
    if (!isNegative) {
      for (var i = 0; i < tokens.length; i++) {
        if (welcome.contains(tokens[i])) {
          setState(() {
            flag=1;
            messsages.insert(0, {
              "data": 0,
              "message": "Hi how are you doing??"
            });
          });
        }
        if (positive.contains(tokens[i])) {
          flag=1;
          setState(() {
            messsages.insert(0, {
              "data": 0,
              "message": "Oh! That's great, nice talking to you..."
            });
          });
        }
        if(negative.contains(tokens[i])){
          flag=1;
          setState(() {
            messsages.insert(0, {
              "data": 0,
              "message": sadReply[randomNumber.nextInt(sadReply.length-1)]+"\n Do you want to read more"
            });
          });
        }
      }
    }
    else{
      for (var i = 0; i < tokens.length; i++){
        if(positive.contains(tokens[i]))
        {
          flag=1;
          setState(() {
            messsages.insert(0, {
              "data": 0,
              "message": sadReply[randomNumber.nextInt(sadReply.length-1)]+"\n Do you want to read more"
            });
          });
        }
        if(negative.contains(tokens[i]))
        {
          flag=1;
          setState(() {
            messsages.insert(0, {
              "data": 0,
              "message": "Oh! That's great, nice talking to you..."
            });
          });
        }
      }

    }
    if(flag==0) {
      setState(() {
        messsages.insert(0, {
          "data": 0,
          "message": "Sorry, I fail to understand.. how are you?"
        });
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Chat bot",
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 10),
              child: Text("Today, ${DateFormat("Hm").format(DateTime.now())}", style: TextStyle(
                  fontSize: 20
              ),),
            ),
            Flexible(
                child: ListView.builder(
                    reverse: true,
                    itemCount: messsages.length,
                    itemBuilder: (context, index) => chat(
                        messsages[index]["message"].toString(),
                        messsages[index]["data"]))),
            SizedBox(
              height: 20,
            ),

            Divider(
              height: 5.0,
              color: Colors.greenAccent,
            ),
            Container(


              child: ListTile(

                // leading: IconButton(
                //   icon: Icon(Icons.camera_alt, color: Colors.greenAccent, size: 35,),
                // ),

                title: Container(
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(
                        15)),
                    color: Color.fromRGBO(220, 220, 220, 1),
                  ),
                  padding: EdgeInsets.only(left: 15),
                  child: TextFormField(
                    controller: messageInsert,
                    decoration: InputDecoration(
                      hintText: "Enter a Message...",
                      hintStyle: TextStyle(
                          color: Colors.black26
                      ),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                    ),

                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black
                    ),
                    onChanged: (value) {

                    },
                  ),
                ),

                trailing: IconButton(

                    icon: Icon(

                      Icons.send,
                      size: 30.0,
                      color: Colors.greenAccent,
                    ),
                    onPressed: () {

                      if (messageInsert.text.isEmpty) {
                        print("empty message");
                      } else {
                        setState(() {
                          messsages.insert(0,
                              {"data": 1, "message": messageInsert.text});
                        });
                        //print("##"+messageInsert.text);
                        response(messageInsert.text);
                        messageInsert.clear();
                      }
                      FocusScopeNode currentFocus = FocusScope.of(context);
                      if (!currentFocus.hasPrimaryFocus) {
                        currentFocus.unfocus();
                      }
                    }),

              ),

            ),

            SizedBox(
              height: 15.0,
            )
          ],
        ),
      ),
    );
  }

  //for better one i have use the bubble package check out the pubspec.yaml

  Widget chat(String message, int data) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20),

      child: Row(
        mainAxisAlignment: data == 1 ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [

          data == 0 ? Container(
            height: 60,
            width: 60,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/robot.jpg"),
            ),
          ) : Container(),

          Padding(
            padding: EdgeInsets.all(10.0),
            child: Bubble(
                radius: Radius.circular(15.0),
                color: data == 0 ? Color.fromRGBO(23, 157, 139, 1) : Colors.orangeAccent,
                elevation: 0.0,

                child: Padding(
                  padding: EdgeInsets.all(2.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[

                      SizedBox(
                        width: 10.0,
                      ),
                      Flexible(
                          child: Container(
                            constraints: BoxConstraints( maxWidth: 200),
                            child: Text(
                              message,
                              style: TextStyle(
                                  color: Colors.white, fontWeight: FontWeight.bold),
                            ),
                          ))
                    ],
                  ),
                )),
          ),


          data == 1? Container(
            height: 60,
            width: 60,
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/default.jpg"),
            ),
          ) : Container(),

        ],
      ),
    );
  }
}

class Info extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Awareness to CyberBullying: Say No!!"),
      ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('  What is Cyber Bullying? ',style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 0.5)),
            Text('\n Cyberbullying is bullying that takes place over digital devices like cell phones, computers, and tablets.'
                '\n Cyberbullying can occur through SMS, Text, and apps, or online in social media, forums, or gaming where people can view, participate in, or share content.'
                '\n Cyberbullying includes sending, posting, or sharing negative, harmful, false, or mean content about someone else. '
                '\n It can include sharing personal or private information about someone else causing embarrassment or humiliation.'
                '\n Some cyberbullying crosses the line into unlawful or criminal behavior.\n',style:TextStyle(color: Colors.black87,fontSize: 15)),
            Text('\n Call the following helpline number if you feel a need for help : \n',style:TextStyle(color: Colors.black87,fontSize: 15)),
            Text('\n               Helpline Number: 155260            \n',style:TextStyle(color: Colors.black87,fontSize: 20),),
            Text('\n->NEVER Hesitate to call if you need help.\n',style: DefaultTextStyle.of(context).style.apply(fontSizeFactor: 0.3)),
            Text('\n Available time: 9:00 AM To 6:00 PM\n',style:TextStyle(color: Colors.black87,fontSize: 15)),
            Text('\n For more Info Visit These websites: \n',style: TextStyle(fontStyle: FontStyle.italic,fontSize: 15),),
            Hyperlink('https://www.endcyberbullying.net/what-to-do-if-youre-a-victim/', '\n Know More!\n'),
            Hyperlink('https://www.unicef.org/end-violence/how-to-stop-cyberbullying', '\n UNICEF To Help You!\n'),
          ],
        ),
    );
  }
}

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Developers!",textAlign: TextAlign.center),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text('\n  Hello People! Runtime Coders Here ☻',textAlign: TextAlign.justify,style:TextStyle(color: Colors.black87,fontSize: 20)),
          Text("\n  => We are a team of 4 students from Vivekanand \n  Education Society's Institute Of Technology."
              '\n   => We build this app to be a little help in minimizing \t\t cyberbullying in social media platforms.  '
              '\n   => Email us at:  '),
          Text(" \t\t\t Aashish Nair:   2019aashish.nair@ves.ac.in",style:TextStyle(color: Colors.black87,fontSize: 16)),
          Text(" \t\t\t Jay Deshmukh:   2019jay.deshmukh@ves.ac.in",style:TextStyle(color: Colors.black87,fontSize: 16)),
          Text(" \t\t\t Sneha Karthik:   2019sneha.karthik@ves.ac.in",style:TextStyle(color: Colors.black87,fontSize: 16)),
          Text(" \t\t\t Akash Sonare:   2019akash.sonare@ves.ac.in",style:TextStyle(color: Colors.black87,fontSize: 16)),
          Align(alignment: Alignment(0.2,0.6),child: Image.asset('assets/Image.jpg',width: 300, height:300)),
          Align(alignment: Alignment(0.05,0.6),child: Image.asset('assets/gallery.jpg',width: 150, height:150))
        ],
      ),
    );
  }
}


class SideDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
            color: Colors.green,
            image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/cover.jpg'))),
             ),
          ListTile(
            leading: Icon(Icons.chat_bubble_outline),
            title: Text('Chatbot'),
            onTap: ()  {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatBotPage()),
            );
            },
          ),
          ListTile(
            leading: Icon(Icons.perm_device_information),
            title: Text('Info'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Info()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.assignment_ind),
            title: Text('About us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => About()),
              );
            },
          ),
        ],
      ),
    );
  }
}
