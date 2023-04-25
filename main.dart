// OOP
import 'dart:io';

class Book {
  String title;
  String author;
  int noPages;

  Book(this.title, this.author, this.noPages);

  void description() {
    print('$author wrote $title');
  }
}

class MathQuestion {
  String question;
  double answer;

  MathQuestion(this.question, this.answer);

  double promptUser() {
    print('Solve this: $question');
    double userAnswer = double.parse(stdin.readLineSync()!);
    return userAnswer;
  }
}

void main() {
  Book bestRead = Book("Lord of the Rings", "Tolkien", 500);
  bestRead.description();

  List<MathQuestion> questions = [
    MathQuestion('7 * 3', 21),
    MathQuestion('12 - 5', 7),
    MathQuestion('12.3 / 3', 4.1)
  ];

  int quizScore = 0;

  for (MathQuestion question in questions) {
    double answer = question.promptUser();
    if (answer == question.answer) {
      print('Correct!');
      quizScore++;
    } else {
      print('Incorrect, the correct answer is ${question.answer}!');
    }
  }

  print('You got $quizScore/${questions.length} correct');
}
