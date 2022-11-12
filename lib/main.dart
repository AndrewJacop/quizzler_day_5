import 'package:flutter/material.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  State<QuizPage> createState() => _QuizPageState();
}

List<Widget> scoreKeeper = [];

//TODO 4: Comment out or Delete the following lines of code
List<String> questions = [
  'You can lead a cow down stairs but not up stairs.',
  'Approximately one quarter of human bones are in the feet.',
  'A slug\'s blood is green.',
];

List<bool> questionsAnswer = [
  false,
  true,
  true,
];
//TODO 5: create a list of QUESTIONs "questionBank" using Section B form the README file

int questionNumber = 0;

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                //TODO 6: update the text to use the Question "questionText" property
                questions[questionNumber],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                //The user picked true.
                setState(() {
                  //TODO 7: update the answer to use the Question "questionAnswer" property
                  if (questionsAnswer[questionNumber] == true) {
                    scoreKeeper.add(Icon(Icons.check, color: Colors.green));
                  } else {
                    scoreKeeper.add(Icon(Icons.close, color: Colors.red));
                  }
                  //TODO 8: update the question number to use the length of the questionBank List
                  if (questionNumber < 2) {
                    questionNumber++;
                  } else {
                    questionNumber = 0;
                  }
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //The user picked false.
                setState(() {
                  //TODO 9: update the answer to use the Question "questionAnswer" property
                  if (questionsAnswer[questionNumber] == false) {
                    scoreKeeper.add(Icon(Icons.check, color: Colors.green));
                  } else {
                    scoreKeeper.add(Icon(Icons.close, color: Colors.red));
                  }
                  //TODO 10: update the question number to use the length of the questionBank List
                  if (questionNumber < 2) {
                    questionNumber++;
                  } else {
                    questionNumber = 0;
                  }
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}

//TODO 11: commit and push your project with note "creating question class and question bank"
