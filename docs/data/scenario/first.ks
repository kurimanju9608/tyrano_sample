*start

[title name="やがぽんを探せ"]
[hidemenubutton]
[wait time=200]
[freeimage layer="base"]

[bg storage=start.jpg width=1280 height=720 time=500]


[position left=16 top=16 width=928 height=608 visible=true]
[font size=50]
「やがぽんを探せ」[r]
[chara_new name="yagapon" storage="yaga/yagapon.png"]
[chara_show name="yagapon" width=300 top = 400 left=1000 layer="1"]
[r][r][r]
[resetfont]
矢上祭中にちりばめられた謎を解きながらやがぽんを探し出そう！[l][r]
[r]
※実際の矢上祭の企画内容とは異なります！[r]
_　本物の矢上祭もぜひ遊びに来てね！！[l][r]

[glink x=370 y=400 text="はじめる！" color=blue target=*prologue]
[s]

*prologue
[cm]
[freeimage layer="1" time="500"]

[bg storage=start.jpg width=1280 height=720 time=500]
[position left=0 top=500 width=1280 height=300 visible=true]
今日は待ちに待った矢上祭。[l][r]
[chara_new name="nazo1" storage="nazo/nazo1.png"]
[chara_show name="nazo1" width=500 top = 50 layer="1"]
あああ[l][r]
[freeimage layer="1" time="500"]
[jump target=*map]

*map
[cm]
[bg storage=map.jpg time=500]

さあ、どこへ行こうか。[l][r]

[link target=*ground] → グラウンド　　 [endlink]
[link target=*stage] → ステージ [endlink][r]
[link target=*mogiten] → 模擬店　　　　[endlink]
[link target=*11tou] → 11棟 [endlink][r]
[link target=*12tou] → 12棟　　　　　[endlink]
[link target=*14tou] → 14棟 [endlink][r]
[link target=*badend] → 矢上祭を出る [endlink][r]
[s]

*ground

[cm]
[bg storage=ground.jpg time=500]
グラウンドにやってきた。[l][r]
中では何かの準備が進んでいるが、入口に錠がかかっている。[l][r]
3桁の数字で開きそうだ。[l][r]

[image layer="1" x=" 0" y=" 0" width="960" height="640" storage="color/black.png" name="black"]
[image layer="1" x="375" y="90" width="215" height=" 55" storage="color/white.png" ]
[ptext layer="1" x="375" y="90" name="ptext" overwrite="true" text="" color="0x666666" size="42" width="215" align="right"]

[anim name="black" opacity="100" time="0"]
[eval exp=" f.input = '' "]

[button graphic="../fgimage/num/1.png" x="366" y="160" width=70 exp=" tf.num = '1' " name="fix_phone" fix="true" target="*Sub_Input"]
[button graphic="../fgimage/num/2.png" x="444" y="160" width=70 exp=" tf.num = '2' " name="fix_phone" fix="true" target="*Sub_Input"]
[button graphic="../fgimage/num/3.png" x="522" y="160" width=70 exp=" tf.num = '3' " name="fix_phone" fix="true" target="*Sub_Input"]
[button graphic="../fgimage/num/4.png" x="366" y="238" width=70 exp=" tf.num = '4' " name="fix_phone" fix="true" target="*Sub_Input"]
[button graphic="../fgimage/num/5.png" x="444" y="238" width=70 exp=" tf.num = '5' " name="fix_phone" fix="true" target="*Sub_Input"]
[button graphic="../fgimage/num/6.png" x="522" y="238" width=70 exp=" tf.num = '6' " name="fix_phone" fix="true" target="*Sub_Input"]
[button graphic="../fgimage/num/7.png" x="366" y="316" width=70 exp=" tf.num = '7' " name="fix_phone" fix="true" target="*Sub_Input"]
[button graphic="../fgimage/num/8.png" x="444" y="316" width=70 exp=" tf.num = '8' " name="fix_phone" fix="true" target="*Sub_Input"]
[button graphic="../fgimage/num/9.png" x="522" y="316" width=70 exp=" tf.num = '9' " name="fix_phone" fix="true" target="*Sub_Input"]
[button graphic="../fgimage/num/0.png" x="444" y="394" width=70 exp=" tf.num = '0' " name="fix_phone" fix="true" target="*Sub_Input"]
[button graphic="../fgimage/num/back.png" x="366" y="394" width=70 name="fix_phone" fix="true" target="*Sub_Back" ]
[button graphic="../fgimage/num/ok.png" x="522" y="394" width=70 name="fix_phone" target="*OK" ]
[s]

*Sub_Input
[iscript]
if (f.input.length < 3) {
f.input = f.input + tf.num
}
[endscript]

[ptext layer="0" x="0" y="0" name="ptext" overwrite="true" text="&f.input"]
[return]

*Sub_Back
[iscript]
f.input = f.input.substr(0, f.input.length - 1)
alert(f.input);
[endscript]
[ptext layer="0" x="0" y="0" name="ptext" overwrite="true" text="&f.input"]
[return]

*OK
[cm]
[freeimage layer="1"]
[clearfix name="fix_phone"]

[if exp="f.input==144"]
[jump target=*goodend]

[else]
開かない…番号が違うようだ。[l][r]
[jump target=*map]
[endif]

*stage
[cm]
[bg storage=stage.jpg time=500]
ステージの上はダンスやアカペラ、ゲーム大会などなど、大盛り上がりだ。[l][r]
ん？後ろの方に何か書いてある。[l][r]
[chara_new name="nazostage" storage="nazo/nazostage.png"]
[chara_show name="nazostage" width=500 top = 50 layer="1"]
[l][r]
[freeimage layer="1" time="500"]
[jump target=*map]

*mogiten
[cm]
[bg storage=mogiten.jpg time=500]
たこ焼き、焼きマシュマロ、ポップコーン…どれも美味しそう。[l][r]
どこも人でいっぱいなので、まずは近くのお店で買うことにする。[l][r]
どっちがいいかな…？[l][r]
[link target=*yakisoba] → 焼きそば [endlink][r]
[link target=*wataame] → わたあめ [endlink][r]
[link target=*map] → 戻る [endlink][r]
[s]

*11tou
[cm]
[bg storage=11tou.jpg time=500]
教室がたくさん並んでいる。どこに入ろう。[l][r]
[link target=*b2] → 11~14 [endlink][r]
[link target=*21] → 21 [endlink][r]
[link target=*22] → 22 [endlink][r]
[link target=*41] → 41 [endlink][r]
[link target=*map] → 戻る [endlink][r]
[s]

*12tou
[cm]
[bg storage=12tou.jpg time=500]
教室がたくさん並んでいる。どこに入ろう。[l][r]
[link target=*101] → 101　　　 [endlink]
[link target=*104] → 104 [endlink][r]
[link target=*106] → 106　　　 [endlink]
[link target=*110] → 110 [endlink][r]
[link target=*202A] → 202A 　　[endlink]
[link target=*202C] → 202C [endlink][r]
[link target=*207] → 207　　　 [endlink]
[link target=*map] → 戻る [endlink][r]
[s]

*14tou
[cm]
[bg storage=12tou.jpg time=500]
福引ができるみたいだ、やっていこう。[p]
「おめでとうございます！」[l][r]
まさかの2等があたった。[l][r]
何が入っているのかなーー…ん？[l][r]
何か紙切れが入っている。[l][r]
[chara_new name="nazofukubiki" storage="nazo/nazofukubiki.png"]
[chara_show name="nazofukubiki" width=500 top = 50 layer="1"]
[l][r]
[freeimage layer="1" time="500"]
[jump target=*map]

*106
[cm]
[bg storage=12tou.jpg time=500]

「こんにちは、"総合案内所"です。どうなさいましたか？」[l][r]
[link target=*otoshimono] → 落とし物を届けに… [endlink][r]
[link target=*kikaku] → おすすめの企画場所が知りたい [endlink][r]
[link target=*map] → 戻る [endlink][r]
[s]

*yakisoba
[cm]
[bg storage=mogiten.jpg time=500]
「いらっしゃい！矢上祭アプリがあると割引になりますよ！」[l][r]
え？アプリ？知らなかった…[l][r]
インストールしておこう。[l][r]
[chara_new name="gamen" storage="nazo/gamen.png"]
[chara_show name="gamen" width=350 top = 50 layer="1"]
[l][r]
[freeimage layer="1" time="500"]
[jump target=*map]

*wataame
[cm]
[bg storage=mogiten.jpg time=500]
「わたあめ大好き！」[l][r]
急にやがぽんがこう喋るので、2つ買うことにした。[l][r]
甘くて美味しい！[l][r]
[jump target=*map]

*b2
[cm]
[bg storage=11tou.jpg time=500]
やがぽんを追いかけてやってきたは良いが…[l][r]
フロア全体が薄暗い。お化け屋敷をやっているようだ。[l][r]
怖いのは苦手なのに……やがぽんを睨みつけていると[l][r]
チリンと音が聞こえた。落とし物だ。[l][r]
「落とし物は"総合案内所”に届けてください」[l][r]
と、係の人に言われてしまった。[l][r]
"総合案内所"ってどこなんだろう。[l][r]
[jump target=*map]

*21
[cm]
[bg storage=11tou.jpg time=500]
プラネタリウムだ！ゆっくり見ていこう。[l][r]
解説付きで、勉強にもなる。[l][r]
星空に紛れて、変な式が浮かんできた。[l][r]
[chara_new name="nazotenmon" storage="nazo/nazotenmon.png"]
[chara_show name="nazotenmon" width=500 top = 50 layer="1"]
[l][r]
[freeimage layer="1" time="500"]
[jump target=*map]

*22
[cm]
[bg storage=11tou.jpg time=500]
やがぽんの
やがナビと書かれたこの部屋には研究内容がかかれたポスターがずらりと並ぶ。[l][r]
ぐるぐる探せどやがぽんはいない。[l][r]
代わりに、紙切れがポスターに挟まっているのを見つけた。[l][r]
[chara_new name="nazo4" storage="nazo/nazo4.png"]
[chara_show name="nazo4" width=500 top = 50 layer="1"]
[l][r]
[freeimage layer="1" time="500"]
[jump target=*map]

*41
[cm]
[bg storage=11tou.jpg time=500]
中から歓声が聞こえる。[l][r]
ロボット同士がぶつかり合ってバトルをしていた。[l][r]
見応えある試合で、ついつい見入ってしまった。[l][r]
が、特に何も見つからなかった。[l][r]
[jump target=*map]

*101
[cm]
[bg storage=12tou.jpg time=500]
中は紅茶喫茶だった。[l][r]
「お茶していきますか？」[l][r]
疲れていたので紅茶とクッキーをいただくことにした。[l][r]
美味しかったが、特に何も見つからなかった。[l][r]
[jump target=*map]

*104
[cm]
[bg storage=12tou.jpg time=500]
落語サークルが寄席を開いている。[l][r]
中に入ると、白い球体が目に入った。[l][r]
[chara_new name="yagapon" storage="yaga/yagapon.png"]
[chara_show name="yagapon" width=500 top = 50 layer="1"]
"やがぽん"だ！！[l][r]
すっかり矢上祭を楽しんでいるようだった。[l][r]
急いで捕まえるとやがぽんは言った。[l][r]
「目の前で花火も見たかった…」[l][r]
今日の夜は矢上祭のフィナーレ、花火があがる。[l][r]
どうしよう…[l][r]
[freeimage layer="1" time="500"]
[link target=*normalend] → やがぽんを返しに行く [endlink][r]
[link target=*ex] → やがぽんと花火を見る [endlink][r]
[s]


*110
[cm]
[bg storage=12tou.jpg time=500]
この部屋は室内休憩所とかかれていた。[l][r]
椅子に腰掛けると、隣に座ったおじさんに声をかけられた。[l][r]
「模擬店の"焼きそば"、とっても美味しいよ。[l][r]
行きたい教室がどこかわからなくなったら、とりあえず食べに行くと良い。」[l][r]
お礼を言いつつやがぽんを探すが、見当たらない。[l][r]
ふと後ろの黒板に目をやると謎が書いてあった。[l][r]
[chara_new name="nazo3" storage="nazo/nazo3.png"]
[chara_show name="nazo3" width=500 top = 50 layer="1"]
まだ私には行くべき教室があるようだ。[l][r]
[freeimage layer="1" time="500"]
[jump target=*map]

*202A
[cm]
[bg storage=12tou.jpg time=500]
この部屋は…「トイだらけ」？[l][r]
黒板に、紙に、数学の問題がびっしり広がっていた。[l][r]
相変わらずやがぽんはいない。[l][r]
試しに解こうと紙を手に取ると、それはやがぽんからの謎解きだった。[l][r]
[chara_new name="nazo2" storage="nazo/nazo2.png"]
[chara_show name="nazo2" width=500 top = 50 layer="1"]
[l][r]
[freeimage layer="1" time="500"]
[jump target=*map]

*202C
[cm]
[bg storage=12tou.jpg time=500]
この部屋は縁日で賑わっているようだ。[l][r]
お祭りといったらやっぱりこれだよね！[l][r]
全力で楽しんだが、特に何も見つからなかった。[l][r]
[jump target=*map]

*207
[cm]
[bg storage=12tou.jpg time=500]
お笑いライブが開かれている。[l][r]
何も考えずに思いっきり笑うのは至福の一時である。[l][r]
ひとしきり見渡したが、特に何も見つからなかった。[l][r]
[jump target=*map]

*otoshimono
[cm]
[bg storage=12tou.jpg time=500]
「あっ落とし物ですか！ありがとうございます。」[l][r]
無事預かってもらえて良かった！[l][r]
そういえば総合案内所の黒板には謎の式が書いてあった。[l][r]
なにかの暗号だろうか？[l][r]
[chara_new name="nazoango" storage="nazo/nazoango.png"]
[chara_show name="nazoango" width=500 top = 50 layer="1"]
[l][r]
[freeimage layer="1" time="500"]
[jump target=*map]

*kikaku
[cm]
[bg storage=12tou.jpg time=500]
「おすすめの企画ですね！まだ見ていなければ…こちらはいかがでしょうか。」[l][r]
[chara_new name="osusume" storage="nazo/osusume.png"]
[chara_show name="osusume" width=500 top = 50 layer="1"]
[l][r]
[freeimage layer="1" time="500"]
[jump target=*map]

*ex
[cm]
[bg storage=12tou.jpg time=500]
花火が終わってからでも約束には間に合う。[l][r]
私はやがぽんに花火を見せてあげることにした。[l][r]
とはいえまだ時間が早いし…[l][r]
そんなことを考えていると[l][r]
「11教室に行きたい」[l][r]
やがぽんがそう言って進みだしてしまった。[l][r]
[jump target=*map]

*badend
[cm]
[bg storage=start.jpg time=500]
すっかり疲れた私は、一度矢上祭を後にすることにした。[l][r]
少し休んでからまた来よう。[l][r]
【 END 】[l][cm]
[jump target=*start]

*normalend
[cm]
[bg storage=start.jpg time=500]
やっぱり返しに行ったほうがいいよね。[l][r]
私はやがぽんを連れて入口の方へ向かった。[l][r]
「本当にありがとうございます！」[l][r]
無事にやがぽんを預け、お礼までいただいた。[l][r]
これにて一件落着！
【 END 】[l][cm]
[jump target=*start]

*goodend
[cm]
[bg storage=hanabi.jpg time=500]
ガチャッ…鍵が開いた。[l][r]
「ようこそ！特別席にご案内しますね。」[l][r]
係の人に案内され、花火の打ち上げ場所から最も近い席に座る。[l][r]
気がつけばあたりも暗くなり、周りに人も集まり始めた。[l][r]
「ドンッ」[l][r]
文字通り目の前で上がっていく花火にやがぽんも私も見入っていた。[l][r]
花火が終わり、帰ろうと席を立つと[l][r]
「ありがとう」[l][r]
満面の笑みでやがぽんは言った。[l][r]
無事にやがぽんを送り届け、私は大満足で矢上祭を後にした。[l][r]
【 END 】[l][cm]
[jump target=*start]

