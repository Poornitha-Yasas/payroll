import 'package:flutter/material.dart';
import 'package:payroll/Calendar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Menu"),
        backgroundColor: Colors.lightGreen,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                const SizedBox(height: 10),
                ListTile(
                  leading: RawMaterialButton(
                    fillColor: Colors.green,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CalendarPage(),
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.attach_money_sharp,
                      size: 36,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    'Option 1',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                ),
                const SizedBox(height: 10),
                ListTile(
                  leading: RawMaterialButton(
                    fillColor: Colors.green,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10),
                    onPressed: () {},
                    child: const Icon(
                      Icons.attach_money_sharp,
                      size: 36,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    'Option 2',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                ),
                const SizedBox(height: 10),
                ListTile(
                  leading: RawMaterialButton(
                    fillColor: Colors.green,
                    shape: const CircleBorder(),
                    padding: const EdgeInsets.all(10),
                    onPressed: () {},
                    child: const Icon(
                      Icons.attach_money_sharp,
                      size: 36,
                      color: Colors.white,
                    ),
                  ),
                  title: const Text(
                    'Option 3',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),

          // 'Option 3' at the bottom
          ListTile(
            leading: RawMaterialButton(
              fillColor: Colors.green,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10),
              onPressed: () {},
              child: const Icon(
                Icons.attach_money_sharp,
                size: 36,
                color: Colors.white,
              ),
            ),
            title: const Text(
              'Option 4',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          const SizedBox(height: 10),
          ListTile(
            leading: RawMaterialButton(
              fillColor: Colors.green,
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(10),
              onPressed: () {},
              child: const Icon(
                Icons.attach_money_sharp,
                size: 36,
                color: Colors.white,
              ),
            ),
            title: const Text(
              'Option 5',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
