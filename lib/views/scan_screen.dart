import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ScanScreen extends StatefulWidget {
  @override
  _ScanScreenState createState() => _ScanScreenState();
}
class _ScanScreenState extends State<ScanScreen> {


  _launchURL() async {
    String url = 'https://letsenhance.io/boost';
    Uri uri = Uri.parse(url);// Replace with your URL
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch $url';
    }
  }







  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Stack(
              alignment: Alignment.center, // Center the children in the stack
              children: [
                Image.asset(
                  'assets/rounded_rect_orange.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/No meter detected.png',
                  width: 100, // Adjust the width of the no meter image as needed
                  height: 100, // Adjust the height of the no meter image as needed
                ),
              ],
            ),
          ),


          SizedBox(height: 25),
          Center(
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/rounded_rect_gris.png',
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 18,
                  child: Image.asset(
                    'assets/guide_to_press_power_button.png',
                    fit: BoxFit.cover,
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    _launchURL(); // Call _launchURL() when the button is tapped
                  },
                  child: Image.asset(
                    'assets/more_information_button.png',
                    fit: BoxFit.cover,
                  ),
                ),

                Positioned(
                  top: 150,
                  child: Image.asset(
                    'assets/scanning_device.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 130),


          Positioned(
            bottom: 18,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  'assets/connect_button.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/Connect.png',
                  width: 100,
                  height: 100,
                ),
              ],
            ),
          ),

  ],
      ),
    );
  }


}