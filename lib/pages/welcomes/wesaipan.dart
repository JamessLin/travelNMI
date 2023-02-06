import 'package:app/main.dart';
import 'package:app/pages/homepage.dart';
import 'package:flutter/material.dart';

class wesaipan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/Places/managaha.jpg',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: 900,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                      Colors.black.withOpacity(1),
                      Colors.black.withOpacity(0.9),
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.6),
                      Colors.black.withOpacity(0.5),
                      Colors.black.withOpacity(0.4),
                      Colors.black.withOpacity(0.1),
                      Colors.black.withOpacity(0.05),
                      Colors.black.withOpacity(0.025),
                    ],
                  ),
                ),
                child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container())),
          ),
          Container(
            padding: EdgeInsets.only(top: 200),
            alignment: Alignment.topCenter,
            child: Text(
              "Saipan",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.white70,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  EdgeInsets.only(top: 80, bottom: 20, left: 20, right: 20),
              child: Text(
                "Saipan is a small island located in the Northern Mariana Islands in the Pacific Ocean. It is known for its stunning beaches, lush tropical forests, and rich cultural heritage. The indigenous people of Saipan are the Chamorros, who have a long and fascinating history on the island. Today, the Chamorro culture continues to thrive on Saipan, and is celebrated through festivals, traditional dances, and other cultural events. Visitors to Saipan can experience the island's rich cultural heritage by visiting museums, participating in cultural tours, or simply exploring the local villages and communities. The warm and friendly locals are proud of their heritage and are happy to share it with visitors, making Saipan a truly authentic and unique travel destination.",
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Poppins'),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}
