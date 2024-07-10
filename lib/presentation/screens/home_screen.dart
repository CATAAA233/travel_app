import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  
  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      body: SafeArea(
        child: Column(
        children: [
          Header()

        ],
            ),
      ));
  }
}

class Header extends StatelessWidget {
  const Header({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context).size;

    return SizedBox(
      width: query.width,
      child:Padding(
        padding: const EdgeInsets.all(30),
        child: Stack(
          children: [
            
            Container(
              alignment: Alignment.centerLeft,
              child: const Text(
                'Where do\nyou want to go',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w600,
                  fontSize: 28,
                  height: 1.1
                ),
              )
            ),
            Container(
              alignment: Alignment.centerRight,
              child:const  ProfilePhoto(),
            )
          ]
        ),
      )
    );
  }
}

class ProfilePhoto extends StatelessWidget {
  const ProfilePhoto({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100)
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          'assets/images/landscapes/pexels-packermann-1666021.jpg',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}



