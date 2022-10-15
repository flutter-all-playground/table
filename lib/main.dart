import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Table',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 74),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Table(
              border: TableBorder.all(
                color: Colors.white70,
                width: 2,
              ),
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                const TableRow(
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                  ),
                  children: [
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: Text('Column 1'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: Text('Column 2'),
                      ),
                    ),
                    TableCell(
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: Text('Column 3'),
                      ),
                    ),
                  ],
                ),
                ...List.generate(
                  100,
                  (index) {
                    return TableRow(
                      decoration: const BoxDecoration(),
                      children: [
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text('Value $index'),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text('Value $index'),
                          ),
                        ),
                        TableCell(
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Text('Value $index'),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
