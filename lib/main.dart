import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MaterialApp(
    home: DigitalCard(),
  ));
}

class DigitalCard extends StatefulWidget {
  const DigitalCard({super.key});

  @override
  State<DigitalCard> createState() => _DigitalCardState();
}

class _DigitalCardState extends State<DigitalCard> {
  int a = 5;
  String name = "Md. Mezbaul Islam Zion";
  String id = "201-15-3496";
  String dept = "CSE";
  String mail = "mezbaul15-3496@diu.edu.bd";
  String designation = "Student";
  String university = "Daffodil International University";
  String expiry = "July 28, 2027";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(university),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: const TextStyle(
                            color: Colors.amber,
                            letterSpacing: 1.5,
                            wordSpacing: 1,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Department of $dept",
                          style: const TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.5,
                            wordSpacing: 1,
                            fontSize: 17,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Student ID",
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1.5,
                              wordSpacing: 1,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          id,
                          style: const TextStyle(
                              color: Colors.white,
                              letterSpacing: 1.5,
                              wordSpacing: 1,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Text(
                          "Mail",
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1.5,
                              wordSpacing: 1,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          mail,
                          style: const TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.5,
                            wordSpacing: 1,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Image(
                            image: AssetImage("assets/IMG.jpg"),
                            width: 130,
                          ),
                          Container(
                            color: Colors.white,
                            width: 130,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Expanded(
                                child: Text(
                                  designation,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    color: Colors.black,
                                    letterSpacing: 1,
                                    wordSpacing: 1,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const Image(
                            image: AssetImage("assets/signature.jpg"),
                            width: 130,
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              color: Colors.black,
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: [
                      RotatedBox(
                        quarterTurns: 3,
                        // Rotates the child by 90 degrees (1 quarter turn clockwise)
                        child: Text(
                          "Expiry: $expiry",
                          style: const TextStyle(
                            color: Colors.grey,
                            letterSpacing: 1.5,
                            wordSpacing: 1,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: QrImageView(
                          data: "Name: $name, ID: $id",
                          errorCorrectionLevel: QrErrorCorrectLevel.L,
                          size: 250,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
