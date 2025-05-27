#課題基礎
import 'package:flutter/material.dart';\  パッケージをインポート

dart

void main() {

  runApp(MyApp());

}

dart

dart

@override

  Widget build(BuildContext context) {

dart

    return MaterialApp(

dart

  title: 'Flutter Demo',

  dart

  home: Scaffold(

dart

    appBar: AppBar(title: Text('Hello Flutter!')),
dart

   body: Text('Hello, Flutter World!!', style: TextStyle(fontSize: 32.0)),

dart

  ),

    );

  }

}



