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

//TODO 2: Create a List of Widgets "scoreKeeper" here to act as the children list for your Score Keeper Row

//TODO 6: Create a List of Strings "questions" using the questions at section A in the README file

//TODO 8: Create a variable "questionNumber" to be used as a counter for the questions

//TODO 10: Create a List of bools "questionsAnswers" as answers for the questions list

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
                //TODO 7: use the first value of questions from the question list for the text here
                'This is where the question text will go.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        //TODO 9: increase questionNumber by one wherever "TRUE" or "FALSE" buttons is pressed
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
                //TODO 3: When pressed, Add a green "true" icon to the score keeper list
                //The user picked true.
                //TODO 11: compare the question answer to the selected answer (true) and add icons to the score keeper list accordingly
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
                //TODO 4: When pressed, Add a red "close" icon to the score keeper list
                //The user picked false.
                //TODO 12: compare the question answer to the selected answer (false) and add icons to the score keeper list accordingly
              },
            ),
          ),
        ),
        //TODO 1: Add a Row here as your score keeper
      ],
    );
  }
}
//TODO 5: Commit and push your project with the note : "initiaing the scorekeeper"

//TODO 13: Commit and push your project with the note : "Starting Challeng A"
//TODO 14: CHALLENGE A: print a msg when the questions list is finished without crashing the app
//TODO 15: Commit and push your project with the note : "Finishing Challeng A"
