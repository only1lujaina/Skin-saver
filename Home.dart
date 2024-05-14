import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:graduation_project/Chatbot.dart';
import 'package:graduation_project/Profile.dart';
import 'package:graduation_project/Sidebar.dart';
import 'Taptoscan.dart';


class Home extends StatefulWidget
{
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 1;
  final List<Widget> _widgetOptions = <Widget>[
    Profile(),
    Home(),
    Chatbot(),
  ];

  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double ScreenHeight = MediaQuery.of(context).size.height;
    double ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      endDrawer: const Sidebar(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: NetworkImage('https://s3-alpha-sig.figma.com/img/6961/b2f4/fdb1f091fc0054beeaf8ea415e5c6e60?Expires=1702252800&Signature=lXymJEtdpSfJ-8avC6x-p12UKYzQRfBAKurt9pNUqoh7k7ix8ViOjT-L5P7STxNyofoAqrNbSLtOjGe~NxnmgFG27ekkxF2cJNWEEkNxQRACj9YdEjxquaFZu~9tnIgsxCXCQH2k8s~hIN~28i2GmICSkGZpHmnCY0U-YVGJJutvtKgsWGD6JO470UbfuUutXox-~KGNvNCIRFvU30QoIOBZWXZQHc4wBt6nsvYygRE0XUPIROQIKt5CHsDwKLr3i4uuvGwPXjKeH3QcSvfvALXsP2A4dD4Q23kcVm9WFph9M8uBq2vSePJonT6d9lMy6fPvyiUTG3PFFWkAxVDliw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4'),
            ),
            SizedBox(
              width: 10.0,
            ),
            Text(
                'Good morning\n Muhammad',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 15.0 ,
              ),
            ),
          ],
        ),
      ),
      body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),

                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0,),
                    color: Colors.grey[200],
                  ),

                  padding: EdgeInsets.all(10.0),

                  child:
                  Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 25.0,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'Search here ...',
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Skin Advices',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Skin Diseases',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                    ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Skin Types',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                ),
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child:
                Container(
                  height: 190 ,
                  width: ScreenWidth,
                  color: Color(0x99a5bde1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image(
                        image: NetworkImage('https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/25343/humaaans-standing-11-clipart-md.png'),
                        width: 126.6,
                        height:211 ,
                      ),
                     Expanded(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                         crossAxisAlignment: CrossAxisAlignment.center,
                         children: [
                           Text(
                             ' Prevent skin cancer with \n our innovative detection\n application',
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontSize: 15,
                             ),
                           ),
                           SizedBox(height: 10),
                           ElevatedButton(
                             onPressed: () {
                               Navigator.push(
                                 context,
                                 MaterialPageRoute(builder: (context) => Taptoscan()),
                               );
                             },
                             child: const Text(
                               'Tap to Scan',
                               style: TextStyle(
                                 fontSize: 12,
                                 color: Colors.black,
                                 fontWeight: FontWeight.bold,
                                 decoration: TextDecoration.underline,
                               ),
                             ),
                           ),
                         ],
                       ),
                     ) ,
                    ],
                  ),
                ),
              ),
              SizedBox(
                height:15 ,
              ),
              Expanded(
                child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(
                          'You can rely on us to give you results\n that are close to accurate and make\n you reassured about your skin',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                            height: 10
                        ),
                        Container(
                          height: 218,
                          width: 321,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image(
                            height:218 ,
                              width: 321,
                              image: NetworkImage('https://s3-alpha-sig.figma.com/img/ecf8/3194/91ee4f116a6ad9dad061169fde7ee375?Expires=1702857600&Signature=m3z9-FDf3dg7RNF8SZtC6l-Al0umXcgElXbhRM2NDYU1-JD8CAFbd-0cGZE-Y4oDRqMwsYq4CcAqpu5qp1mBRQUPxKGWqAHJuTD2ZPrX0ia0jVvPjD0VOQTuinyMPdTv~hwZjhZvgxrZM3Jo71xnuRVN22yOMpQdrhT9kV~-lG-aRSAG-AwdJfNq2AEF1a7E4VYiy4TfJvX870u5cjrJudgJrJMfHwS9dHUDWBhXHOJXAvsoo8XmO5Q54UqRhaGVWvbtYttppoZ6jWyagMY50~pzLJ~knR40WNxp1UUyG37hPtATrOVkquGEwTmoXhnLQKUXXR2X7Lx-W3zam7jXdg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4')
                          ),
                        ),
                        SizedBox(
                            height: 15
                        ),
                        Text(
                          'Expert Dermatologist\n consultation',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Get professional advice from \n dermatologists specializing in skin\n cancer. Easily schedule consultation and \n receive accurate diagnosis and \n treatment recommendations',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                            height: 10
                        ),
                        Container(
                          height: 218,
                          width: 321,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image(
                              height:218 ,
                              width: 321,
                              image: NetworkImage('https://s3-alpha-sig.figma.com/img/4dfb/1e4d/e242cbe0f4aae11a8a6ab2b74fc523ef?Expires=1702857600&Signature=heBADD4SqNuY9L9spfFYP3KfD4Awn7qYtMufYPd-iSsSJ3W4daTatZhpTs4~i-DLjscVCK8hBXLixeeG7TRNluOWsjG6ph5Xspsa30w7OHxs14YvIbGCwJZTvNNK7oEt0LA~-vD3jUDljvTItHxjZAkwqV8QNINza9LQOoWtNxhW2FBAdOKaPl011rpznCEmmJLzkX0X494VeClwrkFtdFezuZ4sYuXgbzUbCbv1io74nA4p2AVFFZ~AzEy5l5I9JUuGvk~O5ADSgRybhE1Ppro0DgmXwUaiel0797xcj0ySLO7Vky-sZ0uDQeo9SOdZ7TPjrpgQDNN6VoJQiG2Csw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4')
                          ),
                        ),
                        SizedBox(
                            height: 10
                        ),
                        Text(
                          'High-resolution\n Imaging',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'our advanced imaging technology \n captures detailed images of skin \n abnormalities. enabling precise analysis \n and early detection of skin cancer',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                            height: 10
                        ),
                        Container(
                          height: 218,
                          width: 321,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Image(
                              height:218 ,
                              width: 321,
                              image: NetworkImage('https://s3-alpha-sig.figma.com/img/0057/d942/75a14fe15c56c5274d8b8fcd4589e627?Expires=1702857600&Signature=AshZX598ng3XzUKHRpvBVFI01yyFqdyJrTP0ZjZTfZ2t4v1UCxogp-HrFmpd6osZbKH6WGuZwo9aHNNSiNqrV9iHC9ckd3c8O-Yvb1fN5J1V49iWe8T9hk~e0VWSpXDK0Vz~GFfjfPvKQUtYe3jn-S6jklCquKYdZZ25VXqa9mLj8On9AMiWtgIf6lzWL91bje7vrP~7uw~PETYzkooq1hFxmHBxVSxFwgSBL54qjB~sVlVqhy7WRY3qFxmXSrnd8gFC9J-bCkVe8Hyut8U3NvcUWBHQyHtTHpef-adNQmVq5vdo6Ogydb86l6nzZYBTGqV7NF40yZGILexJDO~iBg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4')
                          ),
                        ),
                        SizedBox(
                            height: 10
                        ),
                        Text(
                          'Advices and services',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'our advanced imaging technology \n captures detailed images of skin \n abnormalities. enabling precise \n analysis and early detection of skin \n cancer',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                ),
              ),
            ],
          ),

      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: currentIndex,
        backgroundColor: Colors.white,
        height: 50.0,
        animationDuration: Duration(milliseconds: 300),
        items: <Widget>[
          Icon(Icons.person, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.chat_bubble, size: 30),
        ],
        color: Color(0x99a5bde1),
        onTap: (currentIndex)
        {
          setState(() {
            if(currentIndex==0)
              {
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Profile()),
                );
              }
            if(currentIndex==2)
            {
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Chatbot()),
              );
            }
          });
        },
      ),
    );
  }
}
