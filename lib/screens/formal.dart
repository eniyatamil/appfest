import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';



class Formal extends StatefulWidget {
  @override
  _FormalState createState() => _FormalState();
}

class _FormalState extends State<Formal> {
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
        title: Text('Formal Letter'),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all( 20.0),
                child: TextFormField(
                  controller: fromtexteditingController,
                  decoration: InputDecoration(
                      hintText: 'Enter the name to be placed in from'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all( 20.0),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  controller: fromadresseditingController,
                  decoration: InputDecoration(
                      hintText: 'Enter the address to be placed in from'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all( 20.0),
                child: TextFormField(
                  controller: totexteditingController,
                  decoration: InputDecoration(
                      hintText: 'Enter the value to be placed in To'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                  controller: toadresseditingController,
                  decoration: InputDecoration(
                      hintText: 'Enter the address to be placed in from'
                  ),
                ),
              ),
              Container(
                height: 420.0,
                child: Column(
                  children: <Widget>[
                    Lottie.asset('assets/lottie.json')
                  ],
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: MaterialButton(onPressed: () {
                  setState(() {
                    nUsername = fromtexteditingController.text;
                    nPassword = totexteditingController.text;
                    nFrom = fromadresseditingController.text;
                    nTo = toadresseditingController.text;

                  });
                },
                  color: Colors.orange,
                  textColor: Colors.white,
                  child: Text('Submit'),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 200.0),
                child: Column(
                  children: <Widget>[
                    Text("Form :""\n",textAlign: TextAlign.justify),
                    Text(nUsername +"\n",textAlign: TextAlign.justify),
                    Text(nFrom,textAlign: TextAlign.justify),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.only(right: 200.0),
                child: Column(
                  children: <Widget>[
                    Text("To:""\n",textAlign: TextAlign.justify,),
                    Text(nPassword +"\n",textAlign: TextAlign.justify),
                    Text(nTo,textAlign: TextAlign.justify)
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.only(left:20.0,right: 20.0),
                child: RichText(
                  text: TextSpan(
                      style: TextStyle(height: 2,fontSize: 14,color: Colors.black),
                      children: <TextSpan>[
                        TextSpan(text: "Dear "+ nPassword + "\n"),
                        TextSpan(text: "I was excited when my former colleague, Stephanie Taylor, told me that you were hiring for a Human Resources Specialist at Avery Solutions.""\n"),
                        TextSpan(text: "Stephanie has told me how important teamwork is to your group at Avery, and how much you need an HR Specialist who can fit in with the department and hit the ground running on day one. I believe that I am the ideal candidate for your team.""\n"),
                        TextSpan(text: "In my current job at Smith Group, I created and run our onboarding program, including organizing background checks and new hire orientation. I also have extensive experience in:""\n"),
                        TextSpan(text: "*Data reporting/data entry on HRIS software""\n"),
                        TextSpan(text: "*Recruiting and hiring processes, including creating job descriptions and postings, screening resumes, and scheduling interviews""\n"),
                        TextSpan(text: "*Producing company events, such as the annual company-wide picnic (100+ employees from across the country)""\n"),
                        TextSpan(text: "I’d love to speak with you about my qualifications and what I can do for your team. I’ve attached my resume for your consideration. Please don’t hesitate to contact me on my cell at 555-555-5555 with questions or to arrange an interview.""\n"),
                        TextSpan(text: "Best regards,""\n"),
                        TextSpan(text:  nUsername),
                      ]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

