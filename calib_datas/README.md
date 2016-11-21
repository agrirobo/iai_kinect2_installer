# キャリブレーション全般の解説

## 手順
校正する項目は color ir sync depth の 4 項目で, データを採集する必要があるのは depth を除いた 3 項目. 

`roslaunch kinect2_bridge kinect2_bridge.launch` 

開いたまま別のターミナルで作業を続ける 

`rosrun rosrun kinect2_calibration kinect2_calibration chess短辺の交差点の数x長い辺の交差点の数x升目の大きさ(m) record color` 

画面が出れば正解. 虹色の線が交差点を認識する様子が見られたらスペースキーかsキーを乱打して保存. 最低百枚近くは用意する必要があると言われている. 

カメラレンズの歪みを把握するために, 上下左奥手前6方向及びヨーピッチロール各方向に回転させておくと吉 

chess以外のボードは使ったことがない 

`rosrun kinect2_calibration kinect2_calibration  chess短辺の交差点の数x長い辺の交差点の数x升目の大きさ(m) calibrate color` 

非常に長い処理になるので. 終わったら `paplay /usr/share/sounds/stereo/dialog-question.org` などするようにしておいても便利 (&& で後ろに追記する) 

以下は繰り返し. 

`record ir` 
`calibrate ir` 
`record sync` 
`calibrate sync` 

後に, `calibrate depth` 

この時点で, 4 つのキャリブレートファイルが出来上がっているはずである. 

それ用の保管ディレクトリを作るために 


`roslaunch kinect2_bridge kinect2_bridge.launch` 

したとき, 前の方でdevice serial が表示されているので, それを確認する.(arc については不要と思われる)

kinect2\_bridge 以下の data を 起動時に読みに行く仕様になっている. そこに, device serial と同一のディレクトリを作る (シェルを用意した) 

以上で作業は完了したので. viwer などで眺めてみると綺麗になっているはず. 

## 提案 

 1. calibration data 格納用に作成するディレクトリには個体番号と作成者環境がわかるような名前をつけてほしい
 2. calibration data の近くに採取状況(データ数など)を以ってそのデータの信頼性を評価できうるように添付してほしい.
 3. 他人の作ったデータについても, ちょいちょい評価をつけていくのが良いのではないだろうか.

 
