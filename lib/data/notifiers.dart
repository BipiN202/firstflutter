//valueNotifier': hold data
//valuelistenablebuilder: listen to the data (dont need setstate)

import 'package:flutter/material.dart';

ValueNotifier <int> selectedPageNotifier  = ValueNotifier(0);
ValueNotifier <bool> isDarkModeNotifier = ValueNotifier(true);