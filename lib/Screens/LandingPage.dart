import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Authenticate/Autheticate.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      SizedBox(height: 40),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://s3-alpha-sig.figma.com/img/e38a/9c6e/5d507b30631949837dcc3ceab54ca504?Expires=1645401600&Signature=SdZZbWpd7DEPmfLMc~s14TivDy~BBJejIGjtvlrnPPq0WqMACjtkF2NG8DD3rxI0UvHgQ3dCvDGbOyYuOFTYZQQfi-xBtPd8pOp7GOQ~d68BYdORVNVEj6n8Nyf~v0g0EEAP3xyoCZxxxBXwS0P~a6XJlHTLRw7gEQhR1oZpgdF-Xv2QZQabuj5Rk0J9TlPrroLCSzFnJGm6sQCqLeGjW2bphoE6LiWQlhUR1GJU8hbKKr5tRG6AtEP7x2lgbX7uUtXXeEqwSSQZpBJzjuWWHfiBIWx7pj-V6VPI8gRdI59nW-zLKQa5mDs4uIOZmzF-qfrtdtPUfTnlNrjlAxgcOQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
                          ),
                        ),
                        height: 200,
                        width: 100,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://s3-alpha-sig.figma.com/img/040a/366f/20248e263f6a95ff5d607adce4806828?Expires=1645401600&Signature=TzXNQZ53spkT35rwmp80pkBeUjgu-paet~ietl4IHgQMjfW0rVQNc0PYhaVXxow0fzUinpw7dgq01v6yNE4wHzhD5BKY6wR5a9j-z0S0GltJPmGu2v4KynB7pCwfo5MPQz-pQXTLijqUEJD0C2mkx5jSdkHgj70ZXcHlK~vdjRNyIlE6vwQ265nmyYG0gwdloknAj4K-Rgf5hBY~BQ3h383OZR6MAVfydJGcD9FFtUTmfJlvScYuyiUKahEKA~23wZwfSwJMQdEZbEfczZE2-BBHXndOiaBfWpvS~7g8vLOb-aRqtqG--OX25LpZ6qXd89Es0pikbxZwb7duXogfKA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
                          ),
                        ),
                        height: 200,
                        width: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://s3-alpha-sig.figma.com/img/dc09/1e86/2b7a1659a57f4de28980cce9b6973ea7?Expires=1645401600&Signature=LB4az~KS06LZa93otW13dUdUIJSXN8gCe9v6Ad7RQW3d7bugVHwhUnDz0N4nANvqBTVYRpKXMRjrC7B9tYMMQGD1DbYZJ9gWa1rx-r4THKyGIDDGgatjgTkvHZdpI6k3saOz0GkjHQhkU9x2ZBPbffcHwmwUcdmi1tXIQ8TxhRpz3mhq07nE7-e447YpQkNSZMFGMppMEo-mbKDdWn76NPV0Hw5Wp8auSBZnOHsFRZdIXDE0ngv3JNZ2zj~2qpofOcKexfS7YaWzxh0PGcLK~-ELPKZMOK6-kVlP8lcWCsAZcooruLyV1~PVRxhtRuEQHfe80pU8XpRYET72ke2vEw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
                          ),
                        ),
                        height: 200,
                        width: 100,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://s3-alpha-sig.figma.com/img/135a/4dfe/336db4ba427ca1993814553ac9b373c4?Expires=1645401600&Signature=L0XNvGOhMW2v9WKQ5aSfG3QzghnvtZshuSoF9qCHXvWx8QshbUABUxEpVyyZF87R4uLPZI75UpcSXupLSadDZa5~0~cc3A38cPY0Ce3pjTZrWppBl58NcHFoYevm66uxbWL3aa7I5QPlznFMa7uwVO-lPqfb-L4FPuSMzBZvVUsViLlbqFvsDpVElBT8Ss5s5jX8BCiEAkR1zWAmmoxSbztPqfaabscG~KPTC6ydSWcZHAF~3D-rgFJhQovzqOCCl58bntb6PcxNp3pJAlltFen3WZ3sU4Emg-fmMuLzHKfBr5esrh2-4tXppMJML-D38AIIdvnLbcOI2-u08Wn-3A__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
                          ),
                        ),
                        height: 200,
                        width: 100,
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://s3-alpha-sig.figma.com/img/afa2/d45a/805c43d2cd63c3eac1949fc88210d0bf?Expires=1645401600&Signature=S5NAOjvjUe1jPoJ2BVJB6u7536iGmWe2hrhXcpUuIgRKUbEoNkOQjU~Lul9G3tliEONhpF8POwsNaXjc60AJdzUbei9UNjHglOQmdYfm76lhsEqPkInDBkTjxO2qlxubCg9qBEDISynz6bh3TtUGRkg-McLMlmfTRB7M4DGahzjHuQd2kPr9~3~jbhKzhasSx1yZux8iGev033OgScPqqPxiBZOvLETKAKXV0nyWUE1oEj~NGga3MscEK16SQhBdF6DwphaHI2AS4dTYGcm0Nw5W2JmQp0eLd7R4QqI6eLG~ZsotdidY3qb44Mp9CApjQb~0CoV5UOAjMJH65j71lA__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
                          ),
                        ),
                        height: 200,
                        width: 100,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                "https://s3-alpha-sig.figma.com/img/c976/e7e9/eba266f7b6c69f87c4e89cfbf121b3da?Expires=1645401600&Signature=ZXxwo7zvk9VjSra8ugz7Tj~uejdajTE0TwATvVhF9KtQtH-IccXusxStixZExURhsUKTVkKlJxYdz~cdbG7hh4GHBpES3WUiuozhTRR2TP05XV4fgjE9Cii4GFoj9uiHRK3b7QHbKtgSlrgXnpZeorAa5kJphKOYCDA5Isq7a5fyRpwZp~3GTxIMhySP7nVe9YxMAqiK8Jqd-ZYDuMWQ950JNKaOyFlnPfFI880modKwBu436QLOwirRi8oF7EvB0jD-UV0m3RvvZrnqRSn6GkLiLOfiDNTGXHEMl5PpCK6sGawBy9Cn9T7OQkoYyUtu2qIpOQVCpc1a-iL~DghY7Q__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA"),
                          ),
                        ),
                        height: 200,
                        width: 100,
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Column(
                  children: [
                    Text(
                      "Unify ",
                      style: GoogleFonts.pacifico(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(191, 136, 255, 1),
                      ),
                    ),
                    Text(
                      "Let's Help Each Other",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => Authenticate(),
                  ),
                ),
                child: Container(
                  width: 65,
                  height: 65,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color.fromRGBO(191, 136, 255, 1),
                  ),
                  child: Center(
                    child: Icon(
                      Icons.arrow_forward_ios_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
