// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final bookText = 'Python Programming Learning';
  final infoText = 'Python programlama dili ile güçlü yazılımlar geliştirin.';

  @override
  Widget build(BuildContext context) {
    const String buttonText = 'Kursu ekle';
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: ProjectColors.coralTree,
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ProjectColors.coralTree,
        title: const Text(
          'Meditation App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const ProjectCards(projectImages: ProjectImages.imagesSchool),
            Column(
              children: [
                _ProjectBoxes(
                  infoText: infoText,
                  infoTextSize: 18,
                  align: TextAlign.center,
                  projectColor: ProjectColors.coralTree,
                ),
                _ProjectBoxes(
                  infoText: infoText,
                  infoTextSize: 14,
                  align: TextAlign.justify,
                  projectColor: ProjectColors.gothic,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    buttonText,
                  ),
                ),
                const ProjectCards(projectImages: ProjectImages.imagesHey),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectCards extends StatelessWidget {
  const ProjectCards({
    super.key,
    required this.projectImages,
  });

  final String projectImages;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      child: Image.asset(
        projectImages,
      ),
    );
  }
}

class _ProjectBoxes extends StatelessWidget {
  const _ProjectBoxes({
    required this.infoText,
    required this.infoTextSize,
    required this.align,
    required this.projectColor,
  });

  final String infoText;
  final double infoTextSize;
  final TextAlign align;
  final Color projectColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Text(
        infoText,
        textAlign: align,
        style: TextStyle(
          fontSize: infoTextSize,
          color: projectColor,
        ),
      ),
    );
  }
}

//Stateless = Durağan ya da daha sonradan değişmeyecek olan.
//Statefull - setState() = Daha sonradan değişecek olan ekranlara verilir.

class ProjectColors {
  static const Color coralTree = Color(0xffA26967);
  static const Color gothic = Color(0xff6794A2);
}

class ProjectImages {
  static const imagesSchool = 'assets/png/school_book.png';
  static const imagesHey = 'assets/png/hey.png';
}
