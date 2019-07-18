# Spring-CRUD

# 開発環境
JDK 1.8<br>
Apache Tomcat 9.0<br>
Mysql 8.0.16<br>
Bootstrap 3<br>
Spring Framework<br>

## Main Page
![main](./capture/main.png)<br>

## Sign 
![sign](./capture/sign.gif)<br>

会員加入の空いているところや重複があればメッセージ出力<br>
JsファイルにでID,PW,名前検証及び有効性検査<br>
IDは4~14文字PWは8文字以上に特殊文字を含む名前はハングルで6文字まで<br>
IDは重複する非同期処理<br>
PWはBcrypt方式で暗号化<br>

## UserDB
![user](./capture/user.png)<br>

会員加入の重複のためにあらかじめ生成しておいたアカウントとパスワードの暗号化の確認<br>


## Login
![login](./capture/login.gif)<br>

IDとPWの検証と有効性検査をしながらajaxを利用して間違えたと出力<br>


## Write
![write](./capture/write.gif)<br>

文作成 <br>
作成後3日以内の文章にはNewマーク付いています<br>

## Post Check
![post](./capture/post.gif)<br>

掲示物の修正や削除が可能<br>

## BoardDB
![board](./capture/board.png)<br>

掲示板DBの確認<br>

## Post Search
![search](./capture/search.gif)<br>

掲示板一ページに掲示物数10、20、30個に調整可能<br>
以前の次のボタン活性化<br>
掲示物数によるページ数補正<br>
検索時検索単語を維持しつつ単語を含むすべての掲示物を検索<br>

## Interceptor
![guest](./capture/guest.gif)<br>

会員でない人は文章を書くことができません<br>
加入ページに移動<br>
インターセプターを利用したログイン<br>
インタセプターを利用する理由は,削除,修正などすべての要請時にセッション情報を確認しなければならないので,繰り返しコードを無くすために<br>

