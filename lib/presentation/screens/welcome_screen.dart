import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
          child: Stack(children: [
            ScrollsContainer(),
            Header(),
            FoteerSection(),
          ]),
        ),
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xFF010101),
          Color(0xFF010101),
          Color.fromARGB(0, 1, 1, 1),
          Color.fromARGB(0, 1, 1, 1),
          Color.fromARGB(0, 1, 1, 1),
          Color.fromARGB(0, 1, 1, 1),
          Color.fromARGB(0, 1, 1, 1),
        ], begin: Alignment.topCenter, end: Alignment.center),
      ),
      alignment: Alignment.topCenter,
      child: const Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                  child: Center(child: Text('Logo 2')),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                SizedBox(
                  height: 80,
                  child: Center(child: Text('Logo 2')),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ScrollsContainer extends StatelessWidget {
  const ScrollsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Row(
        children: [
          CustomListView(),
          SizedBox(width: 20),
          CustomListView(),
        ],
      ),
    );
  }
}

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, _) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ImageCard(),
          );
        },
        itemCount: 5,
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 9 / 16,
      child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/images/landscapes/pexels-packermann-1666021.jpg',
              fit: BoxFit.cover,
            ),
          )),
    );
  }
}

class FoteerSection extends StatelessWidget {
  const FoteerSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: <Color>[
              const Color(0xFF010101),
              const Color(0xFF010101),
              const Color(0xFF010101).withOpacity(0.6),
              const Color(0xFF010101).withOpacity(0.2),
              const Color(0xFF010101).withOpacity(0.2),
              const Color(0xFF010101).withOpacity(0.1),
              const Color(0xFF010101).withOpacity(0.0),
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: const [0.0, 0.2, 0.3, 0.5, 0.7, 0.6, 1.0]),
      ),
      alignment: Alignment.bottomCenter,
      child: const Padding(
        padding: EdgeInsets.only(bottom: 120),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Discover\nNew Trails',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                fontSize: 28,
                height: 1.2,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 25),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed('/home');
      },
      child: Container(
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.horizontal(
                left: Radius.circular(100), right: Radius.circular(100)),
            color: Colors.orange),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text('Get Started'),
        ),
      ),
    );
  }
}
