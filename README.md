# alt-shift-ime-delete-colon-ahk

## 概要

* https://github.com/the6th/alt-and-shift-ime-ahk を改良して、Deleteキー周りとコロンキー周りにも対応させました。

左右 Alt キーもしくはShiftキーの空打ちで IME を OFF/ON する AutoHotKey スクリプトです。

* 左 Alt/Shift キーの空打ちで IME を「英数」に切り替え
* 右 Alt/Shift キーの空打ちで IME を「かな」に切り替え
* Alt/Shift キーを押している間に他のキーを打つと通常の Alt キーとして動作
* Delete -> BackSpace
* Alt+Delete -> Delete
* Colon -> Semi Colon
* Semi Colon -> Colon

## 動作環境

* Windows10

## 使い方

[releases](https://github.com/noyuno/alt-shift-ime-delete-colon-ahk/releases) から alt-shift-ime-delete-colon-ahk.exe をダウンロードして好きな場所に置き、起動してください。 タスクトレイに常駐します。

終了する場合はタスクトレイのアイコンを右クリックし、「終了」をクリックしてください。

アンインストールは alt-shift-ime-delete-colon-ahk.exe を削除するだけで OK です。

## JetBrains 製の IDE で使う場合は Tool Buttons をオンに

IntelliJ IDEA, PhpStorm など JetBrains 製の IDE をお使いの方は「上部メニューバー　＞　View　＞　Tool Buttons」をオンにしてください。

オフのまま使うと Alt キーを離した際に alt-shift-ime-delete-colon-ahk.exe がエラー終了します。

## ブログの紹介ページ

[Altの空打ちで日本語入力(IME)を切り替えるツールを作った](http://www.karakaram.com/alt-ime-on-off)
