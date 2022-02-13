import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostScreen extends StatefulWidget {
  final Map data;

  const PostScreen({required this.data, Key? key}) : super(key: key);

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Back",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  Text(
                    "Unify",
                    style: GoogleFonts.pacifico(
                      fontSize: 30,
                      color: Color.fromRGBO(191, 136, 255, 1),
                    ),
                  ),
                  Text(
                    "Share",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: size.width * .87,
                  height: size.height * .28,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        widget.data["img"],
                        // "https://images.unsplash.com/photo-1488521787991-ed7bbaae773c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                widget.data["category"],
                style: TextStyle(
                  color: Color.fromRGBO(191, 136, 255, 1),
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(
                      widget.data["title"],
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: size.width * .1,
                    height: size.height * .05,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(191, 136, 255, 1),
                    ),
                    child: Center(
                      child: Text(
                        widget.data["number"],
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                "${widget.data["time"]} Days Left",
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromRGBO(191, 136, 255, 1),
                    ),
                    child: Icon(
                      Icons.gps_fixed_rounded,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Target amount",
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 2.5,
                      ),
                      Text(
                        widget.data["tamount"],
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Color.fromRGBO(191, 136, 255, 1),
                    ),
                    child: Icon(
                      Icons.gps_fixed_rounded,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Raised",
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(
                        height: 2.5,
                      ),
                      Text(
                        widget.data["ramount"],
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                widget.data["desc"],
                // "The mission of this donation is to cultivate highly trained and capable Palestinian graduate with a proficiency in conversational english that will lead to their succesfful participation in the labor",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  wordSpacing: 2,
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Container(
          color: Colors.white,
          height: size.height * .1,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                AnimatedButton(
                  color: Color.fromRGBO(191, 136, 255, 1),
                  width: size.width * .45,
                  height: 100,
                  borderRadius: BorderRadius.circular(20),
                  text: "Donate",
                  pressEvent: () {
                    late AwesomeDialog dialog;
                    dialog = AwesomeDialog(
                      context: context,
                      headerAnimationLoop: false,
                      dialogType: DialogType.NO_HEADER,
                      body: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                        child: Column(
                          children: [
                            Text(
                              "Donate",
                              style: GoogleFonts.poppins(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                prefixText: "\$",
                                labelText: "Please enter the amount",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            AnimatedButton(
                              color: Colors.green,
                              width: size.width * .45,
                              height: 100,
                              borderRadius: BorderRadius.circular(20),
                              text: "Ok",
                              pressEvent: () {
                                dialog.dismiss();
                                AwesomeDialog(
                                    context: context,
                                    animType: AnimType.LEFTSLIDE,
                                    headerAnimationLoop: false,
                                    dialogType: DialogType.SUCCES,
                                    showCloseIcon: true,
                                    title: 'Succes',
                                    desc:
                                        'Thank You for Contributing for the Cause',
                                    btnOkOnPress: null,
                                    btnOkIcon: Icons.check_circle,
                                    onDissmissCallback: (type) {
                                      debugPrint(
                                          'Dialog Dissmiss from callback $type');
                                    })
                                  ..show();
                              },
                            ),
                          ],
                        ),
                      ),
                    )..show();
                  },
                ),
                AnimatedButton(
                  color: Color.fromRGBO(191, 136, 255, 1),
                  width: size.width * .45,
                  height: 100,
                  borderRadius: BorderRadius.circular(20),
                  text: "Volunteer",
                  pressEvent: () {
                     AwesomeDialog(
                                    context: context,
                                    animType: AnimType.LEFTSLIDE,
                                    headerAnimationLoop: false,
                                    dialogType: DialogType.SUCCES,
                                    showCloseIcon: true,
                                    title: 'Volunteered',
                                    desc:
                                        'Thank You for Contributing for the Cause',
                                    btnOkOnPress: () {
                                      debugPrint('OnClcik');
                                    },
                                    btnOkIcon: Icons.check_circle,
                                    onDissmissCallback: (type) {
                                      debugPrint(
                                          'Dialog Dissmiss from callback $type');
                                    })
                                  ..show();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
