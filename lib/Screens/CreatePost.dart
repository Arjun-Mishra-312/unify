import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreatePost extends StatefulWidget {
  const CreatePost({Key? key}) : super(key: key);

  @override
  _CreatePostState createState() => _CreatePostState();
}

class _CreatePostState extends State<CreatePost> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text(
              "Unify",
              style: GoogleFonts.pacifico(
                fontSize: 30,
                color: Color.fromRGBO(191, 136, 255, 1),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Create Post",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 9.0),
              child: Container(
                width: size.width,
                alignment: Alignment.center,
                child: field(
                  size,
                  "Title",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 9.0),
              child: Container(
                width: size.width,
                alignment: Alignment.center,
                child: field(
                  size,
                  "Category",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 9.0),
              child: Container(
                width: size.width,
                alignment: Alignment.center,
                child: field(
                  size,
                  "Days Left",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 9.0),
              child: Container(
                width: size.width,
                alignment: Alignment.center,
                child: field(
                  size,
                  "Target Amount",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 9.0),
              child: Container(
                width: size.width,
                alignment: Alignment.center,
                child: field(
                  size,
                  "Description",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 9.0),
              child: Container(
                  width: size.width,
                  alignment: Alignment.center,
                  child: Container(
                    height: size.height / 5,
                    width: size.width / 1.1,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.grey)),
                    child: Center(
                      child: Text("Add Image",style: TextStyle(color: Colors.grey,fontSize: 15),)
                    ),
                  )),
            ),
            SizedBox(
              height: size.height / 40,
            ),
          ],
        ),
        bottomSheet: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10),
                      height: 60,
                      width: size.width * .85,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(191, 136, 255, 1),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          "Add Post",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                            wordSpacing: 2,
                          ),
                        ),
                      ),
                    ),
          ],
        ),
      ),
    );
  }

  Widget field(
    Size size,
    String hintText,
  ) {
    return Container(
      height: size.height / 14,
      width: size.width / 1.1,
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
