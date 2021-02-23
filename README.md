# OthelloServer-ws
[OthelloServer](https://github.com/pepepper/OthheloServer) を WebSocket 経由で動かすための環境を提供します。

## 起動
### 初回のみ - 実行権限の付与
```
$ chmod +x {run.sh,othelloserver}
```
### 起動
```
$ ./run.sh (宛先サーバー)
```
`othelloserver` によってサーバーの接続先を求められた場合、`localhost` を指定します。

## ライセンス
* [chisel](https://github.com/jpillora/chisel) は [MIT License](https://github.com/jpillora/chisel/blob/master/LICENSE) でライセンスされています。
