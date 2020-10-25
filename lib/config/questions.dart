import 'package:easy_games/models/Question.dart';

final questions = const [
  Question(
    questionTitle: "The Elder Scrolls...?",
    answers: ["Skyrim", "Morrowind", "Daggerfall", "Oblivion"],
    correctAnswer: "Skyrim",
    score: 25,
    type: QuestionType.text,
    illustration: "skyrim.png",
  ),
  Question(
    questionTitle: "Fallout...?",
    answers: ["Shelter", "3", "New Vegas", "4"],
    correctAnswer: "New Vegas",
    score: 25,
    type: QuestionType.text,
    illustration: "vegas.png",
  ),
  Question(
    questionTitle: "Quel est le bon logo de quake",
    answers: ["zelda", "quake", "acreed", "destiny"],
    correctAnswer: "quake",
    score: 50,
    type: QuestionType.image,
    illustration: "quake.png",
  ),
  Question(
    questionTitle: "En quelle année est sortie The Evil Within 2",
    answers: ["2015", "2010", "2008", "2017"],
    correctAnswer: "2017",
    score: 50,
    type: QuestionType.text,
    illustration: "evil_within.png",
  ),
];