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






# TODOアプリ
import 'package:flutter/material.dart';

# Flutterのmaterialデザインライブラリをインポート
# UIコンポーネントを使うために必要


void main() {

  runApp(MyApp());

}

# アプリのエントリーポイント
>main関数

class MyApp extends StatelessWidget {

# アプリの本体となるクラス

  @override

  Widget build(BuildContext context) {

  # UIを構築するメソッド
  >Flutterではこのbuildが中心
  >>FlutterでUIを描画／更新するうえで、最も重要なメソッドが build() だという意味

    return MaterialApp(home: TaskScreen());

  }

}

class TaskScreen extends StatefulWidget {

  @override

  _TaskScreenState createState() => _TaskScreenState();

}

class _TaskScreenState extends State<TaskScreen> {

  final List<Map<String, dynamic>> _tasks = [];

  final TextEditingController _controller = TextEditingController();

  void _addTask() {

    if (_controller.text.isNotEmpty) {

      setState(() {

        _tasks.add({'title': _controller.text, 'completed': false});

        _controller.clear();

      });

    }

  }


  void _toggleTask(int index) {

    setState(() {

      _tasks[index]['completed'] = !_tasks[index]['completed'];

    });

  }

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('タスク管理')),

      body: Column(

        children: [

          Padding(

            padding: const EdgeInsets.all(8.0),

            child: TextField(

              controller: _controller,

              decoration: InputDecoration(labelText: '新しいタスクを入力'),

            ),

          ),
          
          Expanded(
            child: ListView.builder(
              itemCount: _tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Checkbox(
                    value: _tasks[index]['completed'],
                    onChanged: (value) {
                      _toggleTask(index);
                    },
                  ),
                  title: Text(_tasks[index]['title']),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTask,
        child: Icon(Icons.add),
      ),
    );
  }
}

〇flutterスタジオ・・・ブラウザ上でflutterのUIを作れる

TextStyle・・・テキストのスタイルを指定するためのクラス  
>文字のサイズ(int型で受け取る：`32.0`等)  
>フォント  
>文字の太さ(Fontwait.w100  
　　　　　Fontwaitw.900  
　　　　　Fontwait.normal  
　　　　　Fontwait.bold)

Color・・・色を指定するクラス(TextStyle以外でも使用)
Color(0x00000000)：(0xARGB)  
16進数で各値が指定  
Color(0xffff0304)：Color.fromARGB(255,255,3,4)  
　　　　↖　同じ色が出力　↗


Center・・・Childで指定したWidgetを上下中央揃えで表示  
Container・・・Centerよりも細かく位置の調整をする場合に使用  
>Edgelnsets・・・周囲の余白幅を設定するためのクラス  
>Alignment・・・配置場所を設置するためのクラス  
>>topLeft = 左上  
 topCenter = 中央上  
 topRight = 右上  
 centerLeft = 左中央  
 center = 中央  
 centerRight = 右中央  
 bottomLeft = 左下  
 bottomCenter = 中央下  
 bottomRight = 右下

Colimn・・・複数のウィジェットを横に並べて表示  

```c
Column(
    mainAxisAlignment: MainAxisAlignment.start,
    mainAxisSize: MainAxisSize.max,
    rossAxisAlignment: CrossAxisAlignment.center,
    Children: <Widget>[
      Text(One),
      Text(Two),
      Text(Three)
    ]
),
```
　　↓  
>App Name  
One  
Two  
Three




上下の位置(mainAxisAlignment:MainAxisAlignment.start,)  
左右の位置(crossAxisAlignment:CrossAxisAlignment.center,)

Columnでは上下、 Rowでは左右  
上から`start`,`center`,`end`


showDiallog・・・一時的にdialogを表示するメゾッド
>dialogとは・・・ユーザーとの対話を促すためのポップアップウィンドウです。確認メッセージや選択肢の提示、入力フォームなど、さまざまな用途に使われる　　
>>主なdialog  
AlertDialog = アラート表示(確認・警告・通知)`タイトル・本文・ボタンを表示可能`  
SimpleDialog = 選択肢の提示 `複数の選択肢を縦に並べて表示`  
Dialog = カスタムUIの表示`任意のWidgetを配置可能`  
CupertionAlertDialog = iOS風のダイアログ`iOSスタイルのデザイン`  
アロー関数　無名関数を簡単に書くことができる記法  
条件　　　　　　　　　　　　　書き方例  
引数が１つ　　　　　　　　x => x*x  
引数が複数　　　　　　　　(a,b) => a + b  
処理が１文（式のみ）     x => x*2  
処理が複数文            { const y = x*2,;return y; }
オブジェクトを返す　　   () => ({ name:"Taro",age:25})
  
# LIFO式で、画面遷移を実現するための機能  
アドレスを事前に決めておくことで、毎回Routeクラスを書かないために設定値
>>例  
    initialRote:'/',  
    routes:{  
      '/':(countext) => FirstScreen(),  
      '/second'(context) => SecondScreen('Second'),
      '/third':(context) => SecondScreen('Third'),   
    },  

    Navigator.pushNamed(context,'/second')   

# 画面表示  
> TabBar   Tabの一覧を表示するウィジェット  
例  
  TabBar(  
    controller: タブコントローラー、  
    tabs: Tabの配列,  
  ),

>Tab       ひとつひとつのタブ   
例  
  Tab(text: '表示される文字')  

>TabBarView  Tabの一覧を表示するウィジェット  
例  
  TabBarView(
   controller: タブコントローラー,  
   children: タブに対応したウィジェットの配列,  
  ),  

>TabController  TabBarとTabBarViewを連携させるための仕組み  

>Drawer  `≡`アイコンのように画面外からリストが表示されるようなUI　　

 
