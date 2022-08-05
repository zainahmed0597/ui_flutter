import 'package:flutter/material.dart';
import '../widgets/exercises_tile.dart';
import '../widgets/icon_button.dart';
import '../widgets/icons_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  // Greetings Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Hi Zain
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hi, Zain!',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '5 Aug, 2022',
                            style: TextStyle(
                              color: Colors.blue[200],
                            ),
                          ),
                        ],
                      ),
                      // Notification
                      const IconWidget2(
                        icon: Icons.notifications,
                      ),
                    ],
                  ),
                  // Search Bar
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // How to you feel?
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'How to you feel?',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Icon(
                        Icons.more_horiz,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  // 4 different faces
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      // Bad
                      IconWidget1(
                        emoticonFace: '😩',
                        emoticonText: 'Bad',
                      ),
                      // Fine
                      IconWidget1(
                        emoticonFace: '🙂',
                        emoticonText: 'Fine',
                      ),
                      //well
                      IconWidget1(
                        emoticonFace: '😃',
                        emoticonText: 'Well',
                      ),
                      // excellent
                      IconWidget1(
                        emoticonFace: '😁',
                        emoticonText: 'Excellent',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(50.0),
                    topRight: Radius.circular(50.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      // Exercises heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Exercises',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              // color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.more_horiz,
                            // color: Colors.white,
                          ),
                        ],
                      ),
                      // Listview of exercises
                      const SizedBox(
                        height: 20.0,
                      ),
                      Expanded(
                        child: ListView(
                          children: [
                            ExercisesTile(
                              icon: Icons.speaker,
                              exercisesName: "Speaking Skills",
                              numberOfExercises: '16',
                              color: Colors.cyan[300],
                            ),
                            ExercisesTile(
                              icon: Icons.read_more,
                              exercisesName: "Reading Skills",
                              numberOfExercises: '14',
                              color: Colors.green[300],
                            ),
                            ExercisesTile(
                              icon: Icons.text_fields,
                              exercisesName: "Writing Skills",
                              numberOfExercises: '13',
                              color: Colors.orange[300],
                            ),
                            ExercisesTile(
                              icon: Icons.hearing,
                              exercisesName: "Listing Skills",
                              numberOfExercises: '10',
                              color: Colors.purple[300],
                            ),
                            ExercisesTile(
                              icon: Icons.book,
                              exercisesName: "Writing Skills",
                              numberOfExercises: '13',
                              color: Colors.red[300],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
