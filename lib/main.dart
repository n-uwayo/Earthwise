import 'package:flutter/material.dart';

void main() {
  runApp(earthwiseApp());
}

class earthwiseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Earthwise',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: DefaultTabController(
        length: 5, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            title: Row(
              children: [
                Icon(Icons.eco),
                SizedBox(width: 10),
                Text('Earthwise'),
              ],
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  // Add search functionality here
                },
              ),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()),
                  );
                },
              ),
            ],
            bottom: TabBar(
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'About Us'),
                Tab(text: 'Services'),
                Tab(text: 'Events'),
                Tab(text: 'Contacts'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeScreen(),
              AboutUsScreen(),
              ServicesScreen(),
              EventsScreen(),
              ContactsScreen(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.track_changes), label: 'Track'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.group), label: 'Community'),
            ],
            onTap: (index) {
              switch (index) {
                case 1:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TrackScreen()),
                  );
                  break;
                case 2:
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CommunityScreen()),
                  );
                  break;
              }
            },
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Add functionality to add new item
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Welcome to Earthwise!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()),
                  );
                },
              ),
            ],
          ),
        ),
        Expanded(
          child: ClimateDashboard(),
        ),
      ],
    );
  }
}

class AboutUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('About Us Content'),
    );
  }
}

class ServicesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Services Content'),
    );
  }
}

class EventsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Events Content'),
    );
  }
}

class ContactsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Contacts Content'),
    );
  }
}
class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: Text('Setting Screen'),
      ),
    );
  }
}
class TrackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Track'),
      ),
      body: Center(
        child: Text('Track Screen'),
      ),
    );
  }
}
class CommunityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Community'),
      ),
      body: Center(
        child: Text('Community Screen'),
      ),
    );
  }
}
class ClimateDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Text('Climate Tracker', style: TextStyle(fontSize: 24)),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Chip(
                      avatar: Icon(Icons.thermostat),
                      label: Text('Temperature'),
                    ),
                    Chip(
                      avatar: Icon(Icons.water),
                      label: Text('Humidity'),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 200,
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Icon(Icons.cloud, size: 100),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Icon(Icons.wb_sunny, size: 100),
                      ),
                      Center(
                        child: Text(
                          'Live Climate Data',
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

