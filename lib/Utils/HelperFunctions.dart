import 'package:flutter/material.dart';

MaterialColor? colorByIndex(int index){
  var result = index % 4;
  switch(result){
    case 0: {
      return Colors.red;
    }
    case 1: {
      return Colors.green;
    }
    case 2: {
      return Colors.blue;
    }
    case 3: {
      return Colors.yellow;
    }
  }

}