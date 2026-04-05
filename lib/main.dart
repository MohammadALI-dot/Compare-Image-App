import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: Text(
            'Compare Images',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          backgroundColor: Colors.indigo[900],
        ),
        body: ImagePage(),
      ),
    ),
  );
}

class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
  State<ImagePage> createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  var leftImageNumber = 1;
  var rightImageNumber = 1;

  void ChangeImage() {
    leftImageNumber = Random().nextInt(8) + 1;
    rightImageNumber = Random().nextInt(8) + 1;
  }

  @override
  Widget build(BuildContext context) {
    //random.nextInt(9) + 1; //using to generate random number between 1 and 6

    //random.nextInt(9) + 1; //using to generate random number between 1 and 6
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber == rightImageNumber
              ? 'Congratulations! You Win !'
              : 'You Lose! Try Again',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            Expanded(
              //flex: 2,
              child: TextButton(
                onPressed: () {
                  setState(() {
                    ChangeImage();
                  });
                },
                child: Image.asset('images/image-$leftImageNumber.png'),
              ),
            ),

            Expanded(
              //flex: 1, //using to divise 2 image in 2 part (2:1)
              child: TextButton(
                onPressed: () {
                  setState(() {
                    ChangeImage();
                  });
                },
                child: Image.asset('images/image-$rightImageNumber.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// class ImagePage extends StatelessWidget {
//   // using for stateless widget because we are not changing the state of the app (only refresh)

// }
