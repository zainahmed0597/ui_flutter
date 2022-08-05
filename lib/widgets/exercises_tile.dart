import 'package:flutter/material.dart';

class ExercisesTile extends StatelessWidget {
  final icon;
  final String exercisesName;
  final String numberOfExercises;
  final color;

  const ExercisesTile(
      {Key? key,
      required this.icon,
      required this.exercisesName,
      required this.numberOfExercises,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  icon,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 8.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Title
                Text(
                  exercisesName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                // SubTitle
                Text(
                  '$numberOfExercises Exercises',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Colors.grey),
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.more_horiz),
          ],
        ),
      ),
    );
  }
}
