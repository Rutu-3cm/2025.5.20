# 課題基礎
import 'package:flutter/material.dart';\  

# Flutterのmaterialパッケージをインポート


dart

# コピーする
# 編集する

void main() {

  runApp(MyApp());

}
# dartのエントリーポイントであるmain()関数
> 引数にWidgetを渡す
>> MyAppというクラスのオブジェクトを渡す
dart

class MyApp extends StatelessWidget {

# MyAppというクラスを定義
>StatelessWidget＝状態を持たないウィジェット 
>> (一度作成されるとデータが変更されない静的なUIを構築)

dart

@override

  Widget build(BuildContext context) {

# UIを定義
>contextはビルド中のウィジェットの場所を示す情報を含むオブジェクト

dart

    return MaterialApp(

# MaterialAppはアプリ全体の設定を管理するウィジェット
>（テーマ・タイトル・etc）

dart

  title: 'Flutter Demo',

# 「Flutter Demo」という文字列に設定している状態

  dart

  home: Scaffold(

# アプリのホーム画面を設定

dart

    appBar: AppBar(title: Text('Hello Flutter!')),

# 画面上部のアプリバーを表示
>タイトルにはText('Hello Flutter!')が表示

dart

   body: Text('Hello, Flutter World!!', style: TextStyle(fontSize: 32.0)),

# 画面本体にテキストを表示
# 文字サイズを32.0にしている

dart

  ),

    );

  }

}
>ブロックを順に閉じる
>>Scaffold,MaterialApp,build(),MyApp




# 複雑な値の利用
# ※自分が必要だと思った所以外省いています
class Data {

  int _price;

  String _name;

  Data(this._name, this._price) : super();

  @override

  String toString() {

    return _name + ':' + _price.toString() + '円';

  }

}

>このクラスは「名前＋価格」という情報のセットを表現

>プライベート変数 _name（名前）と _price（価格）を持つ

>>toString() をオーバーライド>>例：
>>`「Apple:200円」`のような形式で出力

 void _setData() {

    setState(() {

      _item = (_data..shuffle()).first;

    });

  }

 @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Set data')),

      body: Text(_item.toString(), style: TextStyle(fontSize: 32.0)),

      floatingActionButton: FloatingActionButton(

        onPressed: _setData,

        tooltip: 'set message.',

        child: Icon(Icons.star),

      ),

    );

  }

>`FloatingActionButton`（右下の丸いボタン）を押すと `_setData()` が実行され、内容が変わる










