

import 'package:flutter/material.dart';

class OnboardingContents {
  final String title;
  final String image;
  final String backgroundImage2;
  final String desc;
  final String backgroundImage; 

  OnboardingContents({
    required this.title,
    required this.image,
    required this.backgroundImage2,
    required this.desc,
    required this.backgroundImage, 
  });
}
List<OnboardingContents> contents = [
  OnboardingContents(
    title: "Tobeto kariyer yolculuğunda \n senin yanında! ",
    image: "assets/on1.png",
    backgroundImage2: "assets/on-siyah.png",
    desc: "yeni nesil öğrenme deneyimi ile",
    backgroundImage: "assets/onboarding1.png",
  ),
  OnboardingContents(
    title: "        Aradığın İş Burada!        ",
    image: "assets/on2.png",
    backgroundImage2: "assets/on-siyah2.png",
    desc:
        "Ücretsiz eğitimlerle, \n geleceğin mesleklerinde \n sen de yerini al.",
    backgroundImage:"assets/onboarding2.png",
  ),
  OnboardingContents(
    title: "Hayalindeki teknoloji \n kariyerini başlat!",
    image: "assets/on3.png",
    backgroundImage2: "assets/on-siyah.png",
    desc:
        "İstediğin yoldan,\n istediğin hızla.",
      backgroundImage: "assets/onboarding3.png",
  ),
];
