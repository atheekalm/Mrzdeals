import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_launch/flutter_launch.dart';

const String _url = 'https://mrzdeals.lk/';

void main() {
  runApp(const myapp());
}

class myapp extends StatelessWidget {
  const myapp({Key? key}) : super(key: key);

  void _launchURL() async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

  void whatsAppOpen() async {
    await FlutterLaunch.launchWhatsapp(
        phone: "+94787878778", message: "Hi I Have Seen Something on your App!!");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mr.Deals',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Mrzdeal'),
        ),
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _launchURL,
                  child: const Text(
                    'Go to Web',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(25.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                ElevatedButton(
                  onPressed: (){whatsAppOpen();},
                  child: const Text(
                    'WhatsApp',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(25.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    // primary: Colors.p
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
