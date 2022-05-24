import 'package:flutter/material.dart';
import 'package:youtube_app/video_detall_page.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => 'Item $i');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //画面上部のbar
        appBar: AppBar(
          centerTitle: false,
          //app barの背景色
          backgroundColor: Colors.white,
          //カメラのアイコン
          leading: Icon(Icons.videocam),
          //アイコンの色
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          title: const Text(
              'KBOYのFlutter大学',
            //タイトルの色
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          //アイコン設置の場合はactionsで
          actions: <Widget>[
            //SizeBoxで、一つの箱をつくてサイズなどを設定する
            //虫眼鏡アイコン
            SizedBox(
              width: 44,
                child:TextButton(
                onPressed: (){
                //  TODO 押した時の処理を書く
                },
                child: Icon(Icons.search),
                style: TextButton.styleFrom(
                  primary: Colors.grey,
                ),
              ),
            ),
            //縦3つの・のアイコン
            SizedBox(
              width: 44,
                child:TextButton(
                onPressed: (){
                //  TODO 何かを書く
                },
                child: Icon(Icons.more_vert),
                style: TextButton.styleFrom(
                primary: Colors.grey,
                ),
              ),
            ),
          ],
        ),
        //アプリのメイン画面
        body: Container(
          child: Column(
            children: <Widget>[
              //幅、高さなど指定
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      //メインの画像
                      child:Image.network(
                       'https://yt3.ggpht.com/OSc5In8tYOJ3a_WlZiFCe507_xnAz8zh3Qdvy84jPGU_MMVQnxql18V1xAwnOGYsOuE62npdxg=s176-c-k-c0x00ffffff-no-rj',
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                          'KBOYのFlutter大学',
                        ),
                        TextButton(
                          onPressed: (){},
                          child: Row(
                            children: <Widget>[
                                //YouTubeのアイコン的なやつ
                                Icon(
                                  Icons.video_call,
                                  color: Colors.red,
                                ),
                                Text('登録する'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        //リストを押下で画面遷移する
                        onTap: () async {
                        //  TODO:　画面遷移
                         await Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => VideoDetallPage()
                            ),
                          );
                        },
                        contentPadding: EdgeInsets.all(8),
                        leading: Image.network(
                          //YouTubeのサムネイル的な画像
                          'https://i.ytimg.com/vi/PXnqg_Ozouk/hqdefault.jpg?sqp=-oaymwEjCPYBEIoBSFryq4qpAxUIARUAAAAAGAElAADIQj0AgKJDeAE=&rs=AOn4CLAmjUdKEw-jfDH8nwyy3_F1VMXlfw',
                        ),
                        title: Column(
                          children: <Widget>[
                            //画像の横のテキスト
                            Text(
                              '【Flutter超入門】リストを作る方法',
                            style: TextStyle(fontSize: 13),
                            ),
                            Row(
                              children: <Widget>[
                                Text('267回再生'),
                                Text('5日前'),
                              ],
                            ),
                          ],
                        ),
                        trailing: Icon(Icons.more_vert),
                      );
                    },
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}