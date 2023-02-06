import 'package:app/main.dart';
import 'package:app/pages/homepage.dart';
import 'package:flutter/material.dart';

class WelcomeRota extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/images/island/rota2.jpg',
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
              "Rota",
              style: TextStyle(
                  fontSize: 50,
                  color: Colors.white70,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              alignment: Alignment.center,
              padding:
                  EdgeInsets.only(top: 50, bottom: 20, left: 20, right: 20),
              child: Text(
                "Rota, a charming island located in the Northern Mariana Islands, boasts an abundance of natural beauty and cultural richness. From its lush tropical forests to serene beaches, Rota invites visitors to immerse themselves in its stunning landscapes. The island is also home to the indigenous Chamorro people, whose history and heritage are deeply intertwined with the island's past and present. Visitors can gain insight into the Chamorro culture by visiting local villages, participating in cultural tours, or attending traditional festivals and events. The tranquil atmosphere and rich cultural heritage of Rota make it a truly special and memorable destination for travelers.",
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
