import 'package:flutter/material.dart';


class informal extends StatefulWidget {
  @override
  _informalState createState() => _informalState();
}

class _informalState extends State<informal> {
  final fromtexteditingController  =TextEditingController();
  final totexteditingController  =TextEditingController();
  final fromadresseditingController = TextEditingController();
  final toadresseditingController = TextEditingController();

  String nUsername = "";
  String nPassword = "";
  String nFrom ="";
  String nTo="";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unformal Letter'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: fromtexteditingController,
                  decoration: InputDecoration(
                      hintText: 'Enter the name to be placed at the from field'
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: fromadresseditingController,
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  decoration: InputDecoration(
                      hintText: 'Enter your address to be placed at the from field'
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: totexteditingController,
                  decoration: InputDecoration(
                      hintText: 'Enter the name to be placed at the from field'
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: MaterialButton(onPressed: () {
                  setState(() {
                    nUsername = fromtexteditingController.text;
                    nPassword= totexteditingController.text;
                    nFrom= fromadresseditingController.text;

                  });
                },
                  color: Colors.orange,
                  textColor: Colors.white,
                  child: Text('Submit'),
                ),
              ),Container(
                child: Padding(
                  padding: const EdgeInsets.only(left:20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [Text(nFrom)],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20.0),
                child: RichText(text: TextSpan(
                    style: TextStyle(height: 2,fontSize: 14,color: Colors.black),
                    children: <TextSpan>[
                      TextSpan(text: "Dear " + nPassword+"\n"),
                      TextSpan(text: "I am fine here and hope the same for you. This letter will surely dispel all your worries about my staying in a new city. I am enjoying my new life and new job. Though sometimes I feel homesick, your words of advice always help me overcome this feeling."),
                      TextSpan(text: "I believe this job is one of the best opportunities life has offered me. Besides, Hyderabad is a wonderful city i to live in. I have made a few friends here. They are very helpful and welcoming."),
                      TextSpan(text: "However,I must tell you frankly that i miss all of you. Pay my regards to grandma and give my love to both of my sisters."+"\n"),
                      TextSpan(text: "Your Loving " +nUsername+"\n"),
                    ]
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
