import 'package:flutter/material.dart';
import 'package:ven/widgets/Button.dart';

class Homepage extends StatefulWidget {
  Homepage({Key? key}) : super(key: key);
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
  }

  TabBar makeTabBar() {
    return TabBar(
      unselectedLabelColor: Color(0xD86D6B6B),
      labelColor: Color(0xFFFF7300),
      indicatorWeight: 2,
      indicatorSize: TabBarIndicatorSize.label,
      indicatorColor: Color(0xFFFF7300),
      tabs: <Tab>[
        Tab(
          child: Text(
            'COURRIER',
            style: TextStyle(
              // color: Color(0xFF000000),
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Tab(
          child: Text('MARKET',
              style: TextStyle(
                  // color: Color(0xFF040425),
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
        ),
        Tab(
          child: Text('ABOUT',
              style: TextStyle(
                  // color: Color(0xFF040425),
                  fontSize: 15,
                  fontWeight: FontWeight.bold)),
        ),
      ],
      controller: tabController,
    );
  }

  TabBarView makeTabBarView(tabs) {
    return TabBarView(
      children: tabs,
      controller: tabController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          backgroundColor: Color(0xFFFF7300),
          title: Container(
            child: Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            'AFOID',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'SansB'),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/profile');
                            },
                            child: Hero(
                              tag: 'assets/images/john.jpg',
                              child: Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25),
                                  image: DecorationImage(
                                      image:
                                          AssetImage('asset/images/john.jpg')),
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.notifications_active),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(10)),
                  child: makeTabBar(),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          child: makeTabBarView([Logistics(), Market(), About()]),
          //
        ),
  }
