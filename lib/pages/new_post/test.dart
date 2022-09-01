// create a scaffold with a pageview
// add a pageview to the scaffold

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_remix/flutter_remix.dart';
import 'package:locoo/pages/chats/util.dart';

class NewPostPage extends StatelessWidget {
  const NewPostPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: PageView(
        children: [
          NewPostPage1(),
          // NewPostPage2(),
          // NewPostPage3(),
        ],
      ),
    );
  }
}

// NewPostPage1

class NewPostPage1 extends StatelessWidget {
  const NewPostPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        //align start
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Post erstellen',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontSize: 30,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -0.5,
                  // color: Theme.of(context).colorScheme.onSecondaryContainer,
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
          ),
          SizedBox(height: 28),
          Row(
            children: [
              CircleStep(1, '1', () {}),
              ProgressLine(
                isFinished: false,
              ),
              CircleStep(2, '2', () {}),
              ProgressLine(
                isFinished: false,
              ),
              CircleStep(2, '3', () {}),
            ],
          ),
          SizedBox(height: 28),
          //tile small Wähle deien Kategorie
          Text(
            'Wähle deine Kategorie',
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  // color: Theme.of(context).secondaryHeaderColor,
                ),
          ),
          //tile small Schritt 1 von 3
          SizedBox(height: 2),
          Text(
            'Schritt 1 von 3',
            style: Theme.of(context).textTheme.bodySmall?.copyWith(
                // fontSize: 18,
                // fontWeight: FontWeight.w600,
                // color: Theme.of(context).secondaryHeaderColor,
                ),
          ),
          //create  gird with 2x2 gray container with a icon and a text inside with rounded corners
          SizedBox(height: 28),
          GridView.count(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            children: [
              CategoryTile(
                title: 'Kategorie 1',
                icon: FlutterRemix.home_2_line,
                onTap: () {},
              ),
              CategoryTile(
                title: 'Kategorie 2',
                icon: FlutterRemix.home_2_line,
                onTap: () {},
              ),
              CategoryTile(
                title: 'Kategorie 3',
                icon: FlutterRemix.home_2_line,
                onTap: () {},
              ),
              CategoryTile(
                title: 'Kategorie 4',
                icon: FlutterRemix.home_2_line,
                onTap: () {},
              ),
            ],
          ),
          SizedBox(height: 28),
        ],
      ),
    ));
  }
}

class CategoryTile extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const CategoryTile({
    Key? key,
    required this.title,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
            SizedBox(height: 10),
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                  ),
            ),
          ],
        ),
      ),
    );
  }
}

//create a cirele with a number on it with a state ture false and when its ture it will be a check mark and the background green
class CircleStep extends StatelessWidget {
  final num state;
  final String index;
  //add onTap
  final VoidCallback? onTap;

  CircleStep(this.state, this.index, this.onTap);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 35,
        height: 35,
        //if state is 1 the backroun dis gray
        //if state is 2 the background is transparent and it has a gray border
        //if state is 3 the background is green
        decoration: state == 1
            ? BoxDecoration(
                color:
                    Theme.of(context).colorScheme.onSurface.withOpacity(0.09),
                borderRadius: BorderRadius.circular(50),
              )
            : state == 2
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(0.15),
                      width: 1,
                    ),
                  )
                : BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(50),
                  ),

        child: Center(
          child: state == 1 || state == 2
              ? Text(index)
              : Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 23,
                ),
        ),
      ),
    );
  }
}

//create a progress line with a constructer isfinished when true shwo a green line when false show DottedLine(), in a Expanded widget
class ProgressLine extends StatelessWidget {
  final bool isFinished;
  ProgressLine({this.isFinished = false});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: //horenzontal 4
            const EdgeInsets.symmetric(horizontal: 10),
        child: isFinished
            ? Container(
                width: MediaQuery.of(context).size.width,
                height: 1.2,
                color: Theme.of(context).primaryColor,
              )
            : DottedLine(
                lineThickness: 1.2,
                dashColor:
                    Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
                // strokeWidth: 1,
                // color: Theme.of(context).colorScheme.onSurface.withOpacity(0.15),
                // dotSpacing: 5,
                // dotRadius: 2,
              ),
      ),
    );
  }
}
