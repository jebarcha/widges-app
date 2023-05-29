import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo('Search food', 'Non irure exercitation tempor deserunt exercitation nisi. Commodo consectetur voluptate amet culpa quis tempor officia est quis do consectetur sint. Velit occaecat elit ad aliqua ut exercitation.', 'assets/images/1.png'),
  SlideInfo('Fast delivery', 'Quis dolor cillum pariatur sint consequat voluptate sunt. Est ullamco sit ipsum velit nulla qui. Ullamco occaecat fugiat exercitation proident consequat. Qui sint duis commodo ea est sunt officia quis do ut. Sit proident enim ut commodo. Qui exercitation sunt consectetur nisi magna nisi ipsum qui.', 'assets/images/2.png'),
  SlideInfo('Enjoy your food', 'Esse cupidatat deserunt minim ipsum veniam nisi magna culpa veniam quis occaecat minim occaecat. Ipsum proident labore enim ad aliqua laborum id in adipisicing laborum et occaecat consequat sint. Anim incididunt non nisi laborum proident officia in officia. Excepteur amet esse incididunt elit deserunt ut incididunt occaecat ut. Sunt ad quis aliquip enim ex aute. Ad in sunt voluptate magna excepteur sit laborum dolor minim enim enim esse.', 'assets/images/3.png'),
];


class AppTutorialScreen extends StatefulWidget {

  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  late PageController pageviewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();

    pageviewController.addListener(() { 
      
      final page = pageviewController.page ?? 0;
      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
      //print('${pageviewController.page}');

    });


    super.initState();
  }

  @override
  void dispose() {
    pageviewController.dispose();    
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageviewController,
            physics: const BouncingScrollPhysics(),
            children: slides.map((slideData) => _Slide(
              title: slideData.title, 
              caption: slideData.caption, 
              imageUrl: slideData.imageUrl
              )
            ).toList(),
          ),

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: const Text('Exit'),
              onPressed: () => context.pop(),
            )
          ),

          endReached ? 
            Positioned(
              bottom: 30,
              right: 30,
              child: FadeInRight(
                from: 15,
                delay: const Duration(seconds: 1),
                child: FilledButton(
                  onPressed: () => context.pop(),
                  child: const Text('Start'),
                ),
              )
            ): const SizedBox()


        ],
      )

    );
  }
}

class _Slide extends StatelessWidget {

  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {

    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage( imageUrl )),
          const SizedBox(height: 20),
          Text( title, style: titleStyle, ),
          const SizedBox(height: 10),
          Text( caption, style: captionStyle ),

        ]
      ),
    );
  }
}