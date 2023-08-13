import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  @override
  void dispose() {
    _tabController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TabBar(
        labelPadding: EdgeInsets.zero,
        indicatorColor: Colors.transparent,
        controller: _tabController,
        labelColor: Colors.black,
        unselectedLabelColor: Colors.white.withOpacity(0.5),
        onTap: (value) => setState(() => _tabController?.index = value),
        tabs: [
          TabWidget(
            title: "Live Matches",
            isSelected: _tabController?.index == 0,
          ),
          TabWidget(
            title: "New Matches",
            isSelected: _tabController?.index == 1,
          ),
          TabWidget(
            title: "Past Matches",
            isSelected: _tabController?.index == 2,
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          Center(child: Text('Live Matches')),
          Center(child: Text('New Matches')),
          Center(child: Text('Past Matches')),
        ],
      ),
    );
  }
}

class TabWidget extends StatelessWidget {
  final String title;
  final bool isSelected;
  const TabWidget({
    super.key,
    required this.title,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      child: Tab(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Theme.of(context).primaryColor,
          ),
          child: Center(
            child: Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: isSelected
                        ? Colors.black
                        : Colors.white.withOpacity(0.5),
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
