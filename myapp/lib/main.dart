import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'myworkout',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 0, 48, 23)),
      ),
      home: const MyHomePage(title: 'Fitness Tracker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedValue = 9;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (_) => const PushUpPage()));
          },
          child: const Text('Go to PushUp Page'),
        ),
      ),
    );
  }
}

class PushUpPage extends StatefulWidget {
  const PushUpPage({super.key});

  @override
  State<PushUpPage> createState() => _PushUpPageState();
}

class _PushUpPageState extends State<PushUpPage> {
  int _selectedValue = 9;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PushUp')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Table(
              border: TableBorder.all(),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            'assets/images/bruce.jpg',
                            width: 200,
                            height: 200,
                            fit: BoxFit.fitHeight,
                          ),
                          const SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: () {
                              showDialog<void>(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text('PushUp Description'),
                                  content: const Text(
                                    'Push-ups are a compound bodyweight exercise that strengthens chest, shoulders, triceps, and core.',
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                      child: const Text('Close'),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: const Text('Description'),
                          ),
                        ],
                      ),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: DropdownButton<int>(
                          value: _selectedValue,
                          items: const [
                            DropdownMenuItem(value: 4, child: Text('4 KG')),
                            DropdownMenuItem(value: 9, child: Text('9 KG')),
                            DropdownMenuItem(value: 14, child: Text('14 KG')),
                            DropdownMenuItem(value: 18, child: Text('18 KG')),
                            DropdownMenuItem(value: 23, child: Text('23 KG')),
                            DropdownMenuItem(value: 27, child: Text('27 KG')),
                            DropdownMenuItem(value: 32, child: Text('32 KG')),
                            DropdownMenuItem(value: 36, child: Text('36 KG')),
                            DropdownMenuItem(value: 41, child: Text('41 KG')),
                            DropdownMenuItem(value: 45, child: Text('45 KG')),
                            DropdownMenuItem(value: 50, child: Text('50 KG')),
                            DropdownMenuItem(value: 54, child: Text('54 KG')),
                            DropdownMenuItem(value: 59, child: Text('59 KG')),
                            DropdownMenuItem(value: 64, child: Text('64 KG')),
                            DropdownMenuItem(value: 68, child: Text('68 KG')),
                            DropdownMenuItem(value: 73, child: Text('73 KG')),
                            DropdownMenuItem(value: 77, child: Text('77 KG')),
                            DropdownMenuItem(value: 82, child: Text('82 KG')),
                            DropdownMenuItem(value: 86, child: Text('86 KG')),
                            DropdownMenuItem(value: 91, child: Text('91 KG')),
                          ],
                          onChanged: (int? newValue) {
                            if (newValue != null) {
                              setState(() {
                                _selectedValue = newValue;
                              });
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(Icons.fitness_center, size: 120),
                          const SizedBox(height: 12),
                          const Text(
                            'Chest Only',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 12),
                          ElevatedButton(
                            onPressed: () {
                              showDialog<void>(
                                context: context,
                                builder: (context) => AlertDialog(
                                  title: const Text('Chest Only Description'),
                                  content: const Text(
                                    'This row is for chest-only training: focus on bench press, flys, and chest dips.',
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.of(context).pop(),
                                      child: const Text('Close'),
                                    ),
                                  ],
                                ),
                              );
                            },
                            child: const Text('Description'),
                          ),
                        ],
                      ),
                    ),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Text('Chest only info and tips'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
