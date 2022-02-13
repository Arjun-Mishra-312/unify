import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:unify/News/model.dart';
import 'package:unify/News/news_api.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  _NewsScreenState createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  List<NewsApiModel>? newsList;
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getNews().then((value) {
      setState(() {
        if (value.isNotEmpty) {
          newsList = value;
          isLoading = false;
        } else {
          print("List is Empty");
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar:AppBar(
        elevation: 0,
        toolbarHeight: 100,
        backgroundColor: Colors.white12,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            
            Text(
              "NEWS",
              style: GoogleFonts.poppins(
                fontSize: 25,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Unify",
              style: GoogleFonts.pacifico(
                fontSize: 30,
                color: Color.fromRGBO(191, 136, 255, 1),
              ),
            ),
          ],
        ),
      ),
        body: Container(
          height: size.height,
          width: size.width,
          child: Column(
            children: [
              isLoading
                  ? Center(
                    child: Container(
                        height: 40,
                        width: 40,
                        child: CircularProgressIndicator(),
                      ),
                  )
                  : Expanded(
                      child: Container(
                        child: ListView.builder(
                          itemCount: newsList!.length,
                          itemBuilder: (context, index) {
                            return listItems(size, newsList![index]);
                          },
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }

  Widget listItems(Size size, NewsApiModel model) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
      child: GestureDetector(
        onTap: () async {
          var url = model.url;
          if (await canLaunch(url)) {
            await launch(url);
          } else {
            throw 'Could not launch $url';
          }
        },
        child: Container(
          padding: EdgeInsets.fromLTRB(0,20,0,0),
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Color.fromRGBO(191, 136, 255, 1),
          ),
        ),
          child: Column(
            children: [
              Container(
                // height: size.height / 2.8,
                height: 200,
                width: size.width / 1.2,
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    model.imageUrl == "" ? "https://westsiderc.org/wp-content/uploads/2019/08/Image-Not-Available.png" : model.imageUrl,
                  ),
                ),
              ),
                
              ),
              Container(
                width: size.width / 1.2,
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  model.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                width: size.width / 1.2,
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text(
                  model.description,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
