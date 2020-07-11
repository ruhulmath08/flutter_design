import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class MyIntroductionScreen extends StatefulWidget {
  MyIntroductionScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyIntroductionScreenState createState() => new _MyIntroductionScreenState();
}

class _MyIntroductionScreenState extends State<MyIntroductionScreen> {
  final pageDecoration = PageDecoration(
    titleTextStyle:
        PageDecoration().titleTextStyle.copyWith(color: Colors.black),
    bodyTextStyle: PageDecoration().bodyTextStyle.copyWith(color: Colors.black),
    contentPadding: EdgeInsets.all(10),
  );

  List<PageViewModel> getPages() {
    return [
      PageViewModel(
        image: Image.asset('assets/images/online_Ad.png'),
        title: 'Online Ads',
        body: 'This is an online Ad',
        footer: Text(
          'MATERIAL DESIGN',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      PageViewModel(
        image: Image.asset('assets/images/online_article.png'),
        title: 'Online Articles',
        body: 'This is an online articles',
        footer: Text(
          'MATERIAL DESIGN',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      PageViewModel(
        image: Image.asset('assets/images/website.png'),
        title: 'HTML, CSS & PHP',
        body: 'This is an online course where you can learn HTML, CSS & PHP',
        footer: Text(
          'MATERIAL DESIGN',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      PageViewModel(
        image: Image.asset('assets/images/shared_workspace.png'),
        title: 'Workspace',
        body: 'What a workspace! Check out now',
        footer: Text(
          'MATERIAL DESIGN',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
//      appBar: new AppBar(
//        title: new Text(widget.title),
//      ),
      body: IntroductionScreen(
        globalBackgroundColor: Colors.white,
        pages: getPages(),
        done: Text(
          'Done',
          style: TextStyle(color: Colors.black),
        ),
        onDone: () {},
      ),
    );
  }
}

//link: https://pub.dev/packages/introduction_screen
