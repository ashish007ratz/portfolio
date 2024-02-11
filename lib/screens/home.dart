import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Color(0xff0a033f), Color(0xff30067f), Color(0xffaf4e0d)],
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
            // InkWell(
            //   onTap: (){
            //     var url = Uri.parse('https://github.com/ashish007ratz');
            //     launchUrl(url);
            //   },
            //   child: SizedBox(
            //       width: 25,
            //       height: 25,
            //       child: Image.asset("assets/images/git.png")),
            // ),
            //
            // SizedBox(width: 5),
            //
            // SizedBox(
            //     width: 30,
            //     height: 30,
            //     child:
            //     InkWell(
            //         onTap: (){
            //            launch("mailto:asish8126940910@gmail.com");
            //         },child: Image.asset("assets/images/mail.png"))),
            //
            // SizedBox(width: 5),
            //
            // SizedBox(
            //     width: 25,
            //     height: 25,
            //     child: Image.asset("assets/images/wts.png")),
            //
            // SizedBox(width: 5),
            //
            // SizedBox(
            //     width: 25,
            //     height: 25,
            //     child: Image.asset("assets/images/inst.png")),

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
          displayPhoto(),
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
      children: [
        ListTile(
            title: Text("CAREER OBJECTIVE",
                style: TextStyle(color: Colors.white))),
        ListTile(
            title: Text("EDUCATION", style: TextStyle(color: Colors.white))),
        ListTile(
            title: Text("EXPERIENCE", style: TextStyle(color: Colors.white))),
        ListTile(
            title: Text("OBJECTIVE", style: TextStyle(color: Colors.white))),
        ListTile(
            title: Text("INTERNSHIP", style: TextStyle(color: Colors.white))),
        ListTile(
            title:
                Text("SELF PROJECTS", style: TextStyle(color: Colors.white))),
        ListTile(title: Text("SKILLS", style: TextStyle(color: Colors.white))),
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
          "${"I'm eager to join a dynamic and innovative company where I can work long-term and contribute my skills as a Flutter developer while continuously learning and growing."
              "\nMy ultimate goal is to become a leading expert in Flutter development, creating high-performing and engaging mobile apps."}",
        ),
        SizedBox(height: 50),

        /// Education
        detailViewItem(
            "EDUCATION",
            "EDUCATION",
            "${"2019-2021 MCA (Master of Computer Applications) Graphic Era Hill University, Dehradun 7.2/10.0"
                "\n2016-2019 BCA (Bachelor of Computer Applications) Graphic Era Hill University, Dehradun) 6.0/10.0"
                "\n2014-2015 Higher Secondary Certificate S.G.R.R Patel Nagar, Dehradun 58%"
                "\n2012-2013 Secondary School Certificate Army Public School, Dehradun (CBSE) 6.0/10.0"}"),
        SizedBox(height: 50),

        /// Experience
        detailViewItem(
            "EXPERIENCE",
            "EXPERIENCE",
            "${"Kalki Corporation Pvt. Ltd. as Flutter Engineer (Aug 2021)"
                "\n● Design and develop high-volume, low-latency applications formission-criticalsystems, delivering high-availability and performance"
                "\n● Contribute in all phases of the development lifecycle: concept, design, build, deploy,test, release to app stores and support."
                "\n● Diagnose performance issues, fix bugs(including crashes and application not responding) to increase the functionality of the application"
                "\n● Write well designed,testable, efficient code"
                "\n● Good knowledge of design patterns like MVC and MVVM"
                "\n● Utilize state management librarieslike Get and Provider"
                "\n● Utilize in app caching tools like hive and shared preferences"
                "\n● Support continuousimprovement by investigating alternatives and technologies and presenting these for architectural review."
                "\n● Collaborate with team members(product managers, developers, designers) to brainstorm about new features and functionalities."
                "\n● Can create my own custom widgets"
                "\n● Actively contributed to the development and deployment of mobile applicationsforiOS and Android platforms."
                "\n● PROJECTS:"
                "\n• Presence Teachers App (Available on Apple App Store, Google Play Store, Web)"
                "\n• Presence Tech Support (mobile and web application not been published"}"),
        SizedBox(height: 50),

        /// internship

        detailViewItem(
            "INTERNSHIP",
            "INTERNSHIP",
            "${"Six Months Internship at Specso Technologies as Flutter Developer."
                "\n● Design and Build sophisticated and highly scalable apps using Flutter."
                "\n● Build custom packages in Flutter using the"
                "functionalities and APIsalready available in native Android and IOS."
                "\n● Translate and Build the designs and Wireframesinto high quality responsiveUI code."
                "\n● Projects: Dana Pani Application , Barbo Application(design only)"}"),
        SizedBox(height: 50),
        // self projects
        detailViewItem(
            "PROJECTS",
            "PROJECTS",
            "${"Offline Quiz App | Flutter"
                "\n• Engineered an offline quiz feature using Hive, allowing users to take quizzes without an internet connection, enhancing"
                "accessibility and user experience."
                "\n• Implemented a system to store quiz results locally and showcased them at the end of each test, providing users with imme-"
                "diate feedback and performance analysis."
                "\nVideo player | Flutter"
                "\n• Implemented a system to store the playback state of videos locally, allowing users to resume watching from the last viewed"
                "point even after exiting the app."
                "\nNotes application | Flutter"
                "\n• Enables users to access, add, update, and delete notes without requiring an internet connection, ensuring accessibility at"
                "all times."
                "\n• Implemented a powerful Super Editor feature, empowering users with enhanced editing capabilities for creating and mod"
                "ifying notes to their preferences."}"),
        SizedBox(height: 50),

        /// Skills
        detailViewItem(
            "SKILLS",
            "SKILLS",
            "${"\nProgramming Languages • Dart • Golang • Python • C • C++ • JavaScript"
                "\nUtilities & Software's • Flutter • Flutter Flow • Git • Xcode • Android Studio"
                "\nCloud Technologies • Firebase (Authentication, Realtime Database, Firestore, Cloud Functions) • Docker"
                "\nOthers • HTML • CSS • React (Intermediate)"}"),
        SizedBox(
          height: 100,
        )
      ],
    );
  }

  Widget detailViewItem(String key, String title, String subTitle) {
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
        Text(subTitle,
            style: TextStyle(
                color: Colors.white,
                fontSize: 13,
                letterSpacing: (MediaQuery.of(context).size.width > 500) ? 2 : null,
                height: (MediaQuery.of(context).size.width > 500) ? 2 : null)),
      ],
    );
  }
}
