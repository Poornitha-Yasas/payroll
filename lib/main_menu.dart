import 'package:flutter/material.dart';
import 'package:payroll/Calendar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _selectedIndex = 0; // Added this line

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Menu"),
        backgroundColor: Colors.lightGreen,
      ),
      backgroundColor: Colors.white,
      body: ListView(
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
              onPressed: () {
                // Add functionality for Option 2
              },
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
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightGreen,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        // Navigate to the DashboardPage (Main Menu)
        // Replace YourDashboardPage() with the actual widget or screen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => DashboardPage(),
          ),
        );
      }
    });
  }
}