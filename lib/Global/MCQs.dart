import 'package:mad_flutter/Models/Questionnaire.dart';

List<Quiz> quiz = [
  Quiz(subject: 'Computer Science', questions: [
    MCQs(
        qText: 'A Computer understands which language:',
        option1: 'Binary',
        option2: 'Assembly',
        option3: 'Java',
        option4: 'C#',
        correctAns: 'Binary'),
    MCQs(
        qText: 'Basic functions of a Computer:',
        option1: 'Designing',
        option2: 'Processing',
        option3: 'Calculating',
        option4: 'Input, Processing & Output',
        correctAns: 'Input, Processing & Output'),
    MCQs(
        qText:
            'The service that is responsible for making websites publicily accessible through the internet is called:',
        option1: 'Web Server',
        option2: 'Web Hosting',
        option3: 'Web Site',
        option4: 'Web Browser',
        correctAns: 'Web Hosting'),
  ]),
  Quiz(subject: 'General Knowledge', questions: [
    MCQs(
        qText: 'National sports of Pakistan is:',
        option1: 'Soccer',
        option2: 'Cricket',
        option3: 'Hockey',
        option4: 'Badminton',
        correctAns: 'Hockey'),
    MCQs(
        qText: 'Capital of Pakistan is:',
        option1: 'Karachi',
        option2: 'Lahore',
        option3: 'Islamabad',
        option4: 'Punjab',
        correctAns: 'Islamabad'),
    MCQs(
        qText: 'Khewra Salt mine is the worlds:',
        option1: 'First Largest Salt Mine',
        option2: 'Second Largest Salt Mine',
        option3: 'Third Largest Salt Mine',
        option4: 'Fourth Largest Salt Mine',
        correctAns: 'Second Largest Salt Mine'),
  ]),
];
