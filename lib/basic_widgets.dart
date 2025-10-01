import 'package:flutter/material.dart';

class BasicWidgets extends StatelessWidget {
  const BasicWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(
        children: [
          
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
                ),
                builder: (context) {
                  return Container(
                    height: 250,
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bottom Sheet Title',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 20),
                        ListTile(
                          leading: Icon(Icons.share),
                          title: Text('Share'),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.link),
                          title: Text('Get Link'),
                          onTap: () {},
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            child: Text("data"),
          ),
          FilledButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Row(children: [Text("data"), Text("data")]),
                  duration: Duration(seconds: 1),
                ),
              );
            },
            child: Text("data"),
          ),
          FilledButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showMaterialBanner(
                MaterialBanner(
                  content: Container(
                    height: 50,
                    width: 50,
                    color: Colors.green,
                  ),
                  actions: [
                    TextButton(onPressed: null, child: Text('OPEN')),
                    TextButton(onPressed: null, child: Text('DISMISS')),
                  ],
                ),
              );
            },
            child: Text("data"),
          ),
          FilledButton.icon(
            onPressed: null,
            label: Text("data"),
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.green),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FAB clicked');
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(), // يعمل notch لـ FAB
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            SizedBox(width: 50), // مساحة للـ FAB
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
        ),
      ),
    );
  }
}

/*
class BasicWidgets extends StatelessWidget {
  const BasicWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("data"),
          shadowColor: Colors.amber,
          automaticallyImplyLeading: false,  دا بتاع زرار الرجوع بقولو شيلو
          excludeHeaderSemantics: true,
          toolbarHeight: 100.0, // ارتفاع appBar
           systemOverlayStyle: SystemUiOverlayStyle.dark , //icon الموبيل نفسو لونها ابيض ولا اسود
          forceMaterialTransparency: true, // بيشيل الون
           bottom: TabBar(tabs: [             *****************
            Tab(text: 'التبويب 1'),
            Tab(text: 'التبويب 2'),
          ]),
        ),
      ),
    );
  }
}

دي اهم الحجات اللي جوا الappabar
TabBar زي ال buttom navigation bar بس من فوق

مثال تاني عليه بس

class BasicWidgets extends StatefulWidget {
  @override
  _BasicWidgetsState createState() => _BasicWidgetsState();
}

class _BasicWidgetsState extends State<BasicWidgets> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        bottom: TabBar(
          controller: _tabController, // ربط الـ TabBar بالـ controller
          tabs: [
            Tab(text: 'Home'),
            Tab(text: 'Profile'),
            Tab(text: 'Settings'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController, // ربط الـ TabBarView بالـ controller
        children: [
          Center(child: Text('Home Page')),
          Center(child: Text('Profile Page')),
          Center(child: Text('Settings Page')),
        ],
      ),
    );
  }
}












class BasicWidgets extends StatelessWidget {
  const BasicWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // SliverAppBar
          SliverAppBar(
            backgroundColor: Colors.blue,
            expandedHeight: 150, // ارتفاع عند التوسع الكامل
            pinned: true, // يثبت أعلى الشاشة عند التمرير
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Hello SliverAppBar"),
            ),
          ),

          // محتوى Scrollable بسيط
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) => ListTile(
                title: Text('Item ${index + 1}'),
              ),
              childCount: 20, // عدد العناصر
            ),
          ),
        ],
      ),
    );
  }
}

*/
