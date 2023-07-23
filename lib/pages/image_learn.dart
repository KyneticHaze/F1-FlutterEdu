import 'package:first_flutter_edu/pages/core_widget_learn.dart';
import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  final String _description = "News for People";
  final String _buttonText = "Save a news";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: ProjectPadding.verticalPadding,
              child: _SampleCard(
                description: _description,
                buttonText: _buttonText,
                image: ProjectImagePath.newsPaperImagePath,
              ),
            ),
            Padding(
              padding: ProjectPadding.verticalPadding,
              child: _SampleCard(
                description: _description,
                buttonText: _buttonText,
                image: ProjectImagePath.newsPaperImagePath,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SampleCard extends StatelessWidget with ProjectColorsV2 {
  _SampleCard(
      {required this.description,
      required this.buttonText,
      required this.image});

  final String description;
  final String buttonText;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: shamrock,
      width: 160,
      height: 250,
      child: Column(
        children: [
          Image.asset('assets/png/$image.png'),
          Padding(
            padding: ProjectPadding.verticalPadding,
            child: Text(description),
          ),
          Padding(
            padding: ProjectPadding.verticalPadding,
            child: ElevatedButton(
              onPressed: () {},
              child: Text(buttonText),
            ),
          )
        ],
      ),
    );
  }
}

class ProjectPadding {
  static const EdgeInsets verticalPadding = EdgeInsets.symmetric(vertical: 5.0);
  static const EdgeInsets horizontalPadding =
      EdgeInsets.symmetric(horizontal: 10.0);
  static const EdgeInsets symmetricPadding =
      EdgeInsets.symmetric(vertical: 6.0, horizontal: 6.0);
}

class ProjectImagePath {
  static const String heyImagePath = "hey";
  static const String newsPaperImagePath = "newsPaper";
  static const String schoolBookImagePath = "school_book";
}

class ProjectColorsV2 {
  final Color puce = const Color(0xffCD939C);
  final Color shamrock = const Color(0xff43E58E);
  final Color pictonBlue = const Color(0xff43B2E5);
}
