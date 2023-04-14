import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:untitled/provider/context.dart';
import 'package:untitled/screen/home/home.dart';

void main() {
  runApp(
    SafeArea(
      child: Center(
        child: SizedBox(
          width: 375,
          child: ChangeNotifierProvider(
            create: (_) => Context(),
            child: MaterialApp(
              builder: (BuildContext context, Widget? child) => MediaQuery(
                data: MediaQuery.of(context).copyWith(
                  textScaleFactor: 1,
                ),
                child: child!,
              ),
              debugShowCheckedModeBanner: false,
              home: Home(),
              theme: ThemeData(
                fontFamily: null,
                primaryColor: null,
                scaffoldBackgroundColor: null,
              ),
              title: 'untitled',
            ),
          ),
        ),
      ),
    ),
  );
}
