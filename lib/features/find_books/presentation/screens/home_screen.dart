import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ShelfWise')),
      body: Center(
        child: Column(
          children: [
            const Text('Welcome to ShelfWise!'),
            ElevatedButton(
              onPressed: () {
                CounterState counterState = CounterState(0);
                counterState.counterValue++;
                counterState.printCounter();

                setState(() {});
              },
              child: const Text('Increment Counter'),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class CounterState {
  int counterValue;
  CounterState(this.counterValue);
  void printCounter() {
    print('Counter Value: $counterValue');
  }
}
