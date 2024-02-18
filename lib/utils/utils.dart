import 'package:flutter/material.dart';
import 'package:gov_app/model/models.dart';

class GlobalGovData {
  static List<GovServiceData> allGovData = [
    GovServiceData(
        appcolors: Colors.green,
        name: "UIDAI",
        image: "assets/img/UIDAI-Logo.webp",
        link: 'https://uidai.gov.in'),
    GovServiceData(
        appcolors: Colors.yellow,
        name: "Umang",
        image: "assets/img/umang.jpg",
        link: 'https://web.umang.gov.in'),
    GovServiceData(
        appcolors: Colors.amber,
        name: "Parivahan",
        image: "assets/img/privahan.png",
        link: 'https://parivahan.gov.in/parivahan'),
    GovServiceData(
        appcolors: Colors.red,
        name: "India-Portal",
        image: "assets/img/India-Portal.png",
        link: "https://www.india.gov.in"),
    GovServiceData(
        appcolors: Colors.purple,
        name: "EPFO",
        image: "assets/img/EPFO-Logo.jpg",
        link: "https://www.epfindia.gov.in/site_en/index.php"),
    GovServiceData(
        appcolors: Colors.blue,
        name: "Digital-India",
        image: "assets/img/digital.jpeg",
        link: "https://digitalindia.gov.in"),
    GovServiceData(
        appcolors: Colors.brown,
        name: "Digilocker",
        image: "assets/img/DigiLocker.png",
        link: "https://www.digilocker.gov.in"),
    GovServiceData(
        appcolors: Colors.teal,
        name: "Career",
        image: "assets/img/career.jpeg",
        link: "https://www.ncs.gov.in"),
  ];
}
