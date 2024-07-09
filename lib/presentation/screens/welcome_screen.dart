import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10 , vertical: 0),
          child: Stack(
            children:[
              Header(),
              ScrollsContainer(),
              FoteerSection()
            ]
          ),
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
      alignment:  Alignment.topCenter,
      child: const Text('data'),
    );
  }
}

class ScrollsContainer extends StatelessWidget {
  const ScrollsContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Scrolls Body'),
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
      alignment: Alignment.bottomCenter,
      child: const Padding(
        padding: EdgeInsets.only(bottom: 70),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Discover\nNew Trails',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                fontSize: 28,
                height: 1.2
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
      onTap: (){
      },
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(100),
            right: Radius.circular(100)
          ),
          color: Colors.orange
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text('Get Started'),
        ),
      ),
    );
  }
}
