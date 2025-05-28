# 課題基礎
import 'package:flutter/material.dart';\  

# パッケージをインポート

dart

# コピーする
# 編集する

void main() {

  runApp(MyApp());

}

# 引数にWidgetを渡す
# MyAppというクラスのオブジェクトを渡す
dart

class MyApp extends StatelessWidget {

# MyAppというクラスを定義
# StatelessWidget＝状態を持たないウィジェット（一度作成されるとデータが変更されない静的なUIを構築）
dart

@override

  Widget build(BuildContext context) {

# UIを定義

dart

    return MaterialApp(

# MaterialAppはアプリ全体の設定を管理するウィジェット（テーマ・タイトル・etc）

dart

  title: 'Flutter Demo',

# 「Flutter Demo」という文字列に設定している状態

  dart

  home: Scaffold(

# アプリのホーム画面を設定

dart

    appBar: AppBar(title: Text('Hello Flutter!')),

# 画面上部のアプリバーを表示

dart

   body: Text('Hello, Flutter World!!', style: TextStyle(fontSize: 32.0)),

# 画面本体にテキストを表示
# 文字サイズを32.0にしている

dart

  ),

    );

  }

}



