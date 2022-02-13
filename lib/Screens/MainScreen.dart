import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';
import 'package:unify/News/news.dart';
import 'package:unify/Screens/CounsellingPage.dart';
import 'package:unify/Screens/CreatePost.dart';
import 'package:unify/Screens/PostScreen.dart';
import 'package:unify/group_chats/group_chat_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List PostData = [
    {
      "img":
          "https://images.unsplash.com/photo-1610093703375-6d8fd641294b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
      "category": "Environment",
      "title": "Unify For Ocean",
      "time": "20",
      "number": "15",
      "tamount": "\$5,000",
      "ramount": "\$700",
      "desc":
          "Beach cleanups can reduce litter, protect our ocean and raise awareness about litter and plastic pollution, Wanna roll up your sleeves at a cleanup?",
    },
    {
      "img":
          "https://s3-alpha-sig.figma.com/img/baff/21f5/b5e672b80779dcac2c14a2d90af70877?Expires=1645401600&Signature=QRZ6LbGLKFKBxGDubgO~AdobkCe6HgDy0KScScLu9Wl~Nb5blBNf6gLvTfc4~J9DUNh~DpThOvBbCVcEdTgyHQmF28mQhkGMa91gfo~POMJr9u~p~rOd2EGEZ-DwLELzNwrUN6a5Rp3kfOGC3IkZZRvUDJrprdA80xfkuuAdi5UfcbXPtj-78bojwcE2pjHUn9LWOKMiOCrlY6wmnAmys1RgVtCl59-RbeftIEnSbgdovSEg-aOkbDAcHJokx35BceVZcawz36m7LTU0~Lf5jpDxWmroqdmX8HevY8BW5H9Uzrmnk~5809vokpPf7pvpGceLmm-TxCN1YM~QLgr8Ag__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
      "category": "Education",
      "title": "Unify For Food Drive",
      "time": "10",
      "number": "25",
      "tamount": "\$10,000",
      "ramount": "\$7,000",
      "desc":
          "The mission of this donation is to cultivate highly trained and capable Palestinian graduate with a proficiency in conversational english that will lead to their succesfful participation in the labo",
    },
    {
      "img":
          "https://images.unsplash.com/photo-1590435753380-980ddc8f6099?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1159&q=80",
      "category": "Pandemic",
      "title": "Unify For Small Business",
      "time": "5",
      "number": "10",
      "tamount": "\$2,500",
      "ramount": "\$2,700",
      "desc":
          "working unify might not solve the long-term issues that many small businesses will face due to COVID-19, helping one another and others is giving some the morale boost and some capital to hold on for another day. "
    }
  ];

  final _controller = ScrollController();
  bool isOpened = false;

  final GlobalKey<SideMenuState> _sideMenuKey = GlobalKey<SideMenuState>();
  final GlobalKey<SideMenuState> _endSideMenuKey = GlobalKey<SideMenuState>();

  toggleMenu([bool end = false]) {
    if (end) {
      final _state = _endSideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    } else {
      final _state = _sideMenuKey.currentState!;
      if (_state.isOpened) {
        _state.closeSideMenu();
      } else {
        _state.openSideMenu();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SideMenu(
        background: Color.fromRGBO(191, 136, 255, 1),
        key: _sideMenuKey,
        menu: buildMenu(),
        type: SideMenuType.shrinkNSlide,
        onChange: (_isOpened) {
          setState(() => isOpened = _isOpened);
        },
        child: IgnorePointer(
          ignoring: isOpened,
          child: DefaultTabController(
            initialIndex: 0,
            length: 2,
            child: Scaffold(
              body: TabBarView(
                physics: BouncingScrollPhysics(),
                children: [
                 
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => toggleMenu(),
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(191, 136, 255, 1),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => CounsellingPage(),
                                ),
                              ),
                              child: Text(
                                "Unify",
                                style: GoogleFonts.pacifico(
                                  fontSize: 30,
                                  color: Color.fromRGBO(191, 136, 255, 1),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => GroupChatMessageScreen()),
                              ),
                              child: Container(
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color.fromRGBO(191, 136, 255, 1),
                                    ),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Icon(
                                  Icons.messenger_outline_outlined,
                                  color: Color.fromRGBO(191, 136, 255, 1),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.all(15),
                          height: 200,
                          width: 450,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(191, 136, 255, 1),
                            borderRadius: BorderRadius.circular(25),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text(
                                  "Restore Happiness",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  'Create your Own unify Post',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400),
                                ),
                                GestureDetector(
                                  onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) => CreatePost(),
                                    ),
                                  ),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    padding: EdgeInsets.fromLTRB(20, 12, 20, 12),
                                    child: Text(
                                      "Start Now",
                                      style: TextStyle(
                                          color: Color.fromRGBO(191, 136, 255, 1),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(234, 241, 255, 1.0),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Icon(Icons.menu_rounded, color: Colors.blue),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(234, 255, 249, 1.0),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Icon(
                                Icons.medical_services_rounded,
                                color: Colors.green[600],
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 242, 237, 1.0),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Icon(
                                Icons.menu_book_rounded,
                                color: Colors.orange,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(255, 233, 233, 1.0),
                                  borderRadius: BorderRadius.circular(8)),
                              child: Icon(
                                Icons.coronavirus_rounded,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Popular',
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 25),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: 400,
                            child: FadingEdgeScrollView.fromScrollView(
                              child: ListView.builder(
                                  physics: BouncingScrollPhysics(),
                                  controller: _controller,
                                  itemCount: PostData.length,
                                  itemBuilder: (context, index) {
                                    return PostContainer(PostData[index]);
                                  }),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                   NewsScreen(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget PostContainer(Map data) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (_) => PostScreen(
            data: data,
          ),
        ),
      ),
      child: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.symmetric(vertical: 20),
        width: 450,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(
            color: Color.fromRGBO(191, 136, 255, 1),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 400,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    data['img'],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 210,
              child: Text(
                data["title"],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "${data["number"]} days left",
              style: TextStyle(
                color: Colors.grey.shade400,
                fontWeight: FontWeight.w700,
                fontSize: 12,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${data["ramount"]} Raised",
                  style: TextStyle(
                    color: Color.fromRGBO(191, 136, 255, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                Text(
                  "Target - ${data["tamount"]}",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMenu() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                  backgroundColor: Colors.white,
                  radius: 22.0,
                ),
                SizedBox(height: 16.0),
                Text(
                  "Hello, Sid",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.verified_user,
                size: 20.0, color: Colors.white),
            title: const Text("Profile"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.contacts_rounded,
                size: 20.0, color: Colors.white),
            title: const Text("Counselling"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.volunteer_activism_rounded,
                size: 20.0, color: Colors.white),
            title: const Text("My Activity"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {},
            leading:
                const Icon(Icons.settings, size: 20.0, color: Colors.white),
            title: const Text("Settings"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {},
            leading:
                const Icon(Icons.logout,size: 20.0, color: Colors.white),
            title: const Text("Log Out"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}
