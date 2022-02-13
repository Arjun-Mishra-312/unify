import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CounsellingPage extends StatelessWidget {
  const CounsellingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final List data = [
      {
        "img":
            "https://t3.ftcdn.net/jpg/02/91/76/10/240_F_291761007_hcifZN5T8QonyYEbl452LPtGUKK6dPMB.jpg",
        "name": "Dr Konni",
        "cagy": "Educational Counselor",
        "date": "7",
      },
      {
        "img":
            "https://t4.ftcdn.net/jpg/03/97/81/89/240_F_397818922_4GxOXAjvvvwnf62CtOYvROlsb5fHkB0e.jpg",
        "name": "Dr Daly",
        "cagy": "Career Counselor",
        "date": "10",
      },
      {
        "img":
            "https://t4.ftcdn.net/jpg/02/76/94/29/240_F_276942923_vRe2zKQBgaQj0MyNOjqD8f7eVMyKZ2eL.jpg",
        "name": "Dr Aldene",
        "cagy": "Health Counselor",
        "date": "8",
      },
    ];
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 100,
          backgroundColor: Colors.white12,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Counselling",
                style: GoogleFonts.pacifico(
                  fontSize: 25,
                  color: Colors.black,
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
        body: Padding(
            padding: EdgeInsets.all(20),
            child: ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return CounsellorTitle(size,data[index]);
                })),
      ),
    );
  }

  Widget CounsellorTitle(Size size, Map data) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        width: size.width * 85,
        height: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 187, 184, 184),
        ),
        child: Row(
          children: [
            Container(
              height: 200,
              width: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      data["img"]
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data["name"],
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    data["cagy"],
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Next Slot: ${data["date"]} Feb",
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        child: Text(
                          "CHAT",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(191, 136, 255, 1),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.all(12),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
