import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

class Slide {
  final String ?imageUrl;
  final String ?title;
  final String ?description;

  Slide({
    @required  this.imageUrl,
    @required this.title,
    @required this.description,
  });
}

final slideList = [
  Slide(
    imageUrl: 'assets/images/welcome.png',
    title: translator.translate('introA'),
    description: translator.translate('introB'),
  ),
  Slide(
    imageUrl: 'assets/images/welcomeb.png',
    title: translator.translate('introC'),
    description: translator.translate('introD'),
  ),

];