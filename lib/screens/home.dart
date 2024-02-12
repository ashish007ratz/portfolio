import 'package:flutter/material.dart';
import 'package:portfolio/models/elements.dart';
import 'package:portfolio/screens/full_screen_popup.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController = ScrollController();

  viewVideo(String url){
    Navigator.of(context).push(PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) =>
            VideoPlayer(url)));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [
          Color(0xff3021ff),
          Color(0xff6e36d5),
          Color(0xffee8645),
        ],
        stops: [0.1, 0.4, 0.75],
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
      )),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "Ashish Raturi",
            style: TextStyle(
              letterSpacing: 1,
              fontSize: 22,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          actions: [
            //
            InkWell(
              onTap: (){
                var url = Uri.parse('https://github.com/ashish007ratz');
                launchUrl(url);
              },
              child: SizedBox(
                  width: 25,
                  height: 25,
                  child: Image.asset("assets/images/git.png")),
            ),
            //
            SizedBox(width: 5),

            SizedBox(
                width: 35,
                height: 35,
                child:
                InkWell(
                    onTap: (){
                       launch("mailto:asish8126940910@gmail.com");
                    },child: Image.asset("assets/images/mail.png"))),

            SizedBox(width: 5),
            // linkdin
            InkWell(
              onTap: (){
                var url = Uri.parse('https://www.linkedin.com/in/ashish-raturi-8aa079190');
                launchUrl(url);
              },
              child: SizedBox(
                  width: 25,
                  height: 25,
                  child: Image.asset("assets/images/link.png")),
            ),
            SizedBox(width: 15),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (MediaQuery.of(context).size.width > 500)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: 200,
                        minWidth: 200,
                        // minHeight: MediaQuery.of(context).size.height,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          displayPhoto(),
                          sideBarTiles(),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(child: sideBarDetailView()),
                    SizedBox(width: 30)
                  ],
                )
              else
                mobileView()
            ],
          ),
        ),
      ),
    );
  }

  Widget mobileView() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 10,bottom: 10),
            width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(
          'assets/images/cover.jpg'),
      fit: BoxFit.fitWidth,)
              ),
              child: Row(
                children: [
                  displayPhoto(),
                ],
              )),
          SizedBox(height: 50),
          sideBarDetailView(),
          SizedBox(height: 50)
        ],
      ),
    );
  }

  Widget displayPhoto() {
    return Container(
        margin: EdgeInsets.only(left: 15),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
        constraints: BoxConstraints(
            maxWidth: 150, minWidth: 50, maxHeight: 150, minHeight: 50),
        child: Image.asset("assets/images/ashish_profile.jpg"));
  }

  Widget sideBarTiles({bool onlyPhoto = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(left: 10),
            minLeadingWidth: 0,
            title: Text("SELF PROJECTS DEMO",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold))),

        TextButton(onPressed: (){
          viewVideo('https://github.com/ashish007ratz/shopping_app/assets/76123289/818c678c-adcb-43dd-a547-50a9ef284673');
        }, child: Text("Shopping App Sample", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold,color: Colors.indigo))),

        TextButton(onPressed: (){
          var url = 'https://github.com/ashish007ratz/meetings/assets/76123289/f99a6dcc-bf3d-4693-9732-5b1ac4318fc2';
          viewVideo(url);
          }, child: Text("Dummy App 1", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.indigo))),

        TextButton(onPressed: (){
          var url = 'https://github.com/ashish007ratz/meetings/assets/76123289/62c134a6-71dc-4536-b479-ad2f42ae763a';
          viewVideo(url);
        }, child: Text("Quiz App Sample", style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.indigo))),

      ],
    );
  }

  Widget sideBarDetailView() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Objective
        detailViewItem(
          "goal",
          "CAREER OBJECTIVE",
          [Subtitle("${"I'm eager to join a dynamic and innovative company where I can work long-term and contribute my skills as a Flutter developer while continuously learning and growing."
              "\nMy ultimate goal is to become a leading expert in Flutter development, creating high-performing and engaging mobile apps."}")],
        ),
        SizedBox(height: 50),

        /// Education
        detailViewItem(
            "EDUCATION",
            "EDUCATION",
            [Subtitle("${"2019-2021 MCA (Master of Computer Applications) Graphic Era Hill University, Dehradun 7.2/10.0"
                "\n2016-2019 BCA (Bachelor of Computer Applications) Graphic Era Hill University, Dehradun) 6.0/10.0"
                "\n2014-2015 Higher Secondary Certificate S.G.R.R Patel Nagar, Dehradun 58%"
                "\n2012-2013 Secondary School Certificate Army Public School, Dehradun (CBSE) 6.0/10.0"}")]
        ),
        SizedBox(height: 50),

        /// Experience
        detailViewItem(
            "EXPERIENCE",
            "EXPERIENCE",
            [Subtitle("${"Kalki Corporation Pvt. Ltd. as Flutter Engineer (Aug 2021)"
                "\n● Design and develop high-volume, low-latency applications for mission-critical systems, delivering high-availability and performance"
                "\n● Contribute in all phases of the development lifecycle: concept, design, build, deploy,test, release to app stores and support."
                "\n● Diagnose performance issues, fix bugs(including crashes and application not responding) to increase the functionality of the application"
                "\n● Write well designed,testable, efficient code"
                "\n● Good knowledge of design patterns like MVC and MVVM"
                "\n● Utilize state management libraries like Get and Provider"
                "\n● Utilize in app caching tools like hive and shared preferences"
                "\n● Support continuous improvement by investigating alternatives and technologies and presenting these for architectural review."
                "\n● Collaborate with team members(product managers, developers, designers) to brainstorm about new features and functionalities."
                "\n● Can create my own custom widgets"
                "\n● Actively contributed to the development and deployment of mobile applications for iOS and Android platforms."
                "\n● PROJECTS:"
                "\n• Presence Teachers App (Available on Apple App Store, Google Play Store, Web)"
                "\n• Presence Tech Support (mobile and web application not been published)"}")]
        ),

        SizedBox(height: 50),

        /// internship

        detailViewItem(
            "INTERNSHIP",
            "INTERNSHIP",
            [Subtitle("${"Six Months Internship at Specso Technologies as Flutter Developer."
                "\n● Design and Build sophisticated and highly scalable apps using Flutter."
                "\n● Build custom packages in Flutter using the"
                "functionalities and APIsalready available in native Android and IOS."
                "\n● Translate and Build the designs and Wireframesinto high quality responsiveUI code."
                "\n● Projects: Dana Pani Application , Barbo Application(design only)"}")]
        ),
        SizedBox(height: 50),
        // self projects
        detailViewItem(
            "PROJECTS",
            "SELF PROJECTS",
            [Subtitle(
                "${"Offline Quiz App | Flutter"
                    "\n• Engineered an offline quiz feature using Hive, allowing users to take quizzes without an internet connection, enhancing"
                    "accessibility and user experience."
                    "\n• Implemented a system to store quiz results locally and showcased them at the end of each test, providing users with immediate"
                    "feedback and performance analysis."
                }",
              url: 'https://github.com/ashish007ratz/meetings/assets/76123289/62c134a6-71dc-4536-b479-ad2f42ae763a'
            ),
            Subtitle("${
                "\nVideo player | Flutter"
                    "\n• Implemented a system to store the playback state of videos locally, allowing users to resume watching from the last viewed"
                    "point even after exiting the app."
            }"),
              Subtitle("${
                  "\nNotes application | Flutter"
                      "\n• Enables users to access, add, update, and delete notes without requiring an internet connection, ensuring accessibility at"
                      "all times."
                      "\n• Implemented a powerful Super Editor feature, empowering users with enhanced editing capabilities for creating and modifying"
                      " notes to their preferences."
              }")
            ]),
        SizedBox(height: 50),

        /// Skills
        detailViewItem(
            "SKILLS",
            "SKILLS",
            [Subtitle("${"\nProgramming Languages • Dart • Golang • Python • C • C++ • JavaScript"
                "\nUtilities & Software's • Flutter • Flutter Flow • Git • Xcode • Android Studio"
                "\nCloud Technologies • Firebase (Authentication, Realtime Database, Firestore, Cloud Functions) • Docker"
                "\nOthers • HTML • CSS • React (Intermediate)"}")]
        ),
        SizedBox(
          height: 100,
        )
      ],
    );
  }

  Widget detailViewItem(String key, String title, List<Subtitle> subTitles,{String? url}) {
    return Column(
      key: GlobalKey(debugLabel: key),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontSize: 22)),
        SizedBox(height: 10),
        ...List.generate(subTitles.length, (index) => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: Text(subTitles[index].text,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      letterSpacing: (MediaQuery.of(context).size.width > 500) ? 2 : null,
                      height: (MediaQuery.of(context).size.width > 500) ? 2 : null)),
            ),
            if(subTitles[index].url != null)
            IconButton(onPressed: (){
              viewVideo(subTitles[index].url!);
            }, icon: Icon(Icons.link,color: Colors.black))
          ],
        )),
      ],
    );
  }
}
