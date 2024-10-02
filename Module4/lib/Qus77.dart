import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class Qus77 extends StatefulWidget {
  const Qus77({super.key});

  @override
  State<Qus77> createState() => _Qus77State();
}

class _Qus77State extends State<Qus77> {
  TextEditingController _phoneController = TextEditingController();
  Future<void> myPhoneCall(String? phonenumber) async {
    Uri phoneUri = Uri(scheme: "tel", path: phonenumber);
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    }
  }
   Future<void> mySMS(String? phonenumber) async {
    Uri phoneUri = Uri(scheme: "sms", path: phonenumber);
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call Application",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            child: TextField(
              controller: _phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter phone number",
                labelText: "Phone Number",
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  myPhoneCall(_phoneController.text.toString());
                },
                child: Text("Call"),
              ),
              SizedBox(
                width: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  mySMS(_phoneController.text.toString());
                },
                child: Text("Message"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
