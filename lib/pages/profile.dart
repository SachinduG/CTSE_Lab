import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('My App'),
        )
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              "assets/images/908396.jpg",
                width: 250,
                height: 250,
                fit: BoxFit.cover,
              ),
          ),
          const SizedBox(
            width: double.infinity,
            height: 40,
          ),
          Text(
            "Gimhana P.S.",
            style: GoogleFonts.iceberg(
              fontSize: 30,
              fontStyle: FontStyle.normal,
              color: Colors.black87,
            ),
          ),
          const Text(
            "Title",
            style: TextStyle(
              fontSize: 24,
              fontStyle: FontStyle.italic,
              color: Colors.deepPurple,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center, 
            children: const [
              Icon(Icons.facebook_rounded),
              SizedBox(
                width:10,
              ),
              Icon(Icons.email_rounded),
            ]  
          )
        ],
      ),
    );
  }
}
