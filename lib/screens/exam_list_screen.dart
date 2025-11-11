import 'package:flutter/material.dart';
import '../models/exam.dart';
import '../widgets/exam_card.dart';
import 'exam_detail_screen.dart';

class ExamListScreen extends StatelessWidget {
  final List<Exam> exams = [
    Exam(subject: 'Структурно програмирање', dateTime: DateTime(2025, 12, 1, 9, 0), rooms: ['12', '13']),
    Exam(subject: 'Математика 1', dateTime: DateTime(2025, 12, 3, 14, 0), rooms: ['215']),
    Exam(subject: 'Калкулус', dateTime: DateTime(2025, 12, 5, 10, 0), rooms: ['105', '106']),
    Exam(subject: 'ИПКС', dateTime: DateTime(2025, 12, 7, 13, 0), rooms: ['138']),
    Exam(subject: 'АОК', dateTime: DateTime(2025, 12, 9, 8, 30), rooms: ['102']),
    Exam(subject: 'Право на друштва', dateTime: DateTime(2025, 12, 11, 15, 0), rooms: ['200аб']),
    Exam(subject: 'Бизнис и менаџмент', dateTime: DateTime(2025, 12, 13, 11, 0), rooms: ['103']),
    Exam(subject: 'Роботика', dateTime: DateTime(2025, 12, 15, 9, 0), rooms: ['104']),
    Exam(subject: 'Криптографија', dateTime: DateTime(2025, 12, 17, 16, 0), rooms: ['2']),
    Exam(subject: 'Економија на ИКТ', dateTime: DateTime(2025, 12, 19, 12, 0), rooms: ['3']),
  ]..sort((a, b) => a.dateTime.compareTo(b.dateTime));

  ExamListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Распоред за испити - 223241'),
      ),
      body: ListView.builder(
        itemCount: exams.length,
        itemBuilder: (ctx, index) {
          return ExamCard(
            exam: exams[index],
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => ExamDetailScreen(exam: exams[index]),
                ),
              );
            },
          );
        },
      ),
      bottomNavigationBar: Container(
        color: Colors.blueGrey[50],
        padding: const EdgeInsets.all(12),
        child: Text(
          'Вкупно испити: ${exams.length}',
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
