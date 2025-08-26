

;-----------------------------------------
;セリフの制御
;-----------------------------------------

;タイミング調整
[macro name="t1"]

    [wait time="450"]

[endmacro]



[macro name="t2"]

    [wait time="800"]

[endmacro]



[macro name="t3"]

    [wait time="1500"]

[endmacro]



[macro name="t4"]

    [wait time="1800"]

[endmacro]

[macro name="t5"]

    [wait time="1200"]

[endmacro]

;-----------------------------------------
;ボタンの表示、非表示
;-----------------------------------------

;オートスキップのボタン登場
[macro name="show_skip]

    [button name="skip_button" role="skip"  graphic="qrbutf01.png" x="240" y="30"]

[endmacro]



[macro name=show_auto]

    [button name="auto_button" role="auto" graphic="qrbutf02.png" x = 240 y = 30]

[endmacro]



;オートスキップストップのボタン登場
[macro name=show_skipstop]
    
    [button name="skipstop_button" role="skip" graphic="qrbutf01.png" x = 30 y = 30]

[endmacro]



[macro name=show_autostop]

    [button name="autostop_button" role="auto" graphic="qrbutf02.png" x = 240 y = 30]

[endmacro]



;メッセージレイヤーの表示
[macro name=show_message]

    [position layer="message0" left=0 top=896 width=720 height=384 page=fore visible=true opacity=255]
    [position layer="message0" page=fore frame="qrfra006.png" margint="80" marginl="70" marginr="70" marginb="50"]

[endmacro]


[macro name=hide_message]

    [position layer="message0" visible=false]
   
[endmacro]

;-----------------------------------------
;テキスト関係
;-----------------------------------------
[macro name="cfa"]

    [ptext name="chara_name_area" layer="message0" x="20" y="875" text="%text" overwhite="true"]

[endmacro]

;-----------------------------------------
;アニメーション
;-----------------------------------------
;正一般アニメーション 入場
[macro name="anime1"]

    [chara_show name="%name" face="%face|default" left="-720" top="216" layer="%layer|1"]

    [anim name="%name" time="800" left="0"]

[endmacro]

;逆一般アニメーション　入場
[macro name="ranime1"]

    [chara_show name="%name" face="%face|default" left="720" top="216" layer="%layer|1"] 

    [anim name="%name" time="800" left="0"]

[endmacro]

;正一般アニメーション 退場
[macro name="anime2"]

    [anim name="%name" time="1000" left="-520" opacity="0"]

    [wait time="1000"]

    [chara_hide name="%name"]

[endmacro]

;逆一般アニメーション 退場

[macro name="ranime2"]

    [anim name="%name" time="1000" left="520" opacity="0"]

    [wait time="1000"]

    [chara_hide name="%name"]

[endmacro]

;正キャラ左にズラす

[macro name="move1"]

    [chara_move name="%name" left="-130" time="500" anim="true" wait="false"]

[endmacro]


;逆キャラ右にズラす

[macro name="rmove1"]

    [chara_move name="%name" left="130" time="500" anim="true" wait="false"]

[endmacro]

;正キャラ左にズラす

[macro name="reset1"]

    [chara_move name="%name" left="0" time="500" anim="true" wait="false"]

[endmacro]

;正中央アニメーション 入場
[macro name="anime3"]

    [chara_show name="%name" face="%face|default" left="-720" top="216" layer="%layer|1"]

    [anim name="%name" time="800" left="150"]

[endmacro]

;逆中央アニメーション　入場
[macro name="ranime3"]

    [chara_show name="%name" face="%face|default" left="720" top="216" layer="%layer|1"] 

    [anim name="%name" time="800" left="-150"]

[endmacro]

;キーフレームアニメーション　虫眼鏡

[keyframe name="lends1"]

    [frame p="0%"]

    [frame p="100%" x="*270" rotate="-40deg"]

[endkeyframe]

[keyframe name="lends2"]

    [frame p="0%"]

    [frame p="100%" x="*220" rotate="0deg"]

[endkeyframe]

;虫眼鏡アニメーション　入
[macro name="show_lends"]

    [image storage="lends_01.png" layer="0" visible="true" width="720" height="1016" left="" name="lend" left="720" top="200"] 

    [kanim name="lend" keyframe="lends1" time="1500"]
    
    [wa]

    [image storage="%storage" layer="1" visible="true" left="180" top="370" time="500" wait="false" name="%name"] 

[endmacro]

;虫眼鏡アニメーション　出
[macro name="hide_lends"]

    [free layer="%layer|1" name="%name" time="500" wait="true"]

    [kanim name="lend" keyframe="lends2" time="1500"]

    [wa]

[endmacro]








;-----------------------------------------
;メニュー画面
;----------------------------------------



















;-----------------------------------------
;その他便利機能
;-----------------------------------------


[macro name="changeimg"]

[iscript]
let img = document.getElementsByClassName(mp.name);
if(img[0]){
img[0].src = "data/fgimage/" + mp.storage;
}
[endscript]

[endmacro]





[return]
