
# 調校 aMule

原始來源：「[[教學] Ubuntu 14.04的調校](http://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=317196#forumpost317196P)」

```

＜四、哈日篇＞

2.
安裝線上廣播軟體「radiotray」。

sudo apt-get install radiotray



然後增加日本頻道，請先運行一遍radiotray，接著在結束之後於終端機中輸入：

nano ~/.local/share/radiotray/bookmarks.xml



將下記插進<group name="root">的下一行。

    <group name="Japan (www.simulradio.jp)">
        <bookmark name="[帯広市] FM JAGA" url="http://www.simulradio.info/asx/fmjaga.asx"/>
        <bookmark name="[帯広市] FM WING" url="http://www.simulradio.info/asx/fmwing.asx"/>
        <bookmark name="[釧路市] FMくしろ" url="http://www.simulradio.info/asx/FmKushiro.asx"/>
        <bookmark name="[旭川市] FMりべーる" url="http://www.simulradio.info/asx/fm837.asx"/>
        <bookmark name="[函館市] FMいるか" url="http://www.simulradio.info/asx/iruka.asx"/>
        <bookmark name="[札幌市] ラジオカロスサッポロ" url="http://www.simulradio.info/asx/radiokaros.asx"/>
        <bookmark name="[恵庭市] e-niwaFM" url="http://hdv4.nkansai.tv/eniwa?MSWMExt=.asf"/>
        <bookmark name="[separator-7fe16754-5917-4ff2-b42e-4e5ab1089247]" url="[separator-7fe16754-5917-4ff2-b42e-4e5ab1089247]"/>
        <bookmark name="[盛岡市] ラヂオもりおか" url="http://www.simulradio.info/asx/radiomorioka.asx"/>
        <bookmark name="[仙台市青葉区] RADIO3" url="http://www.simulradio.info/asx/radio3.asx"/>
        <bookmark name="[本宮市] エフエム モットコム" url="http://www.simulradio.info/asx/fmmotcom.asx"/>
        <bookmark name="[いわき市] FMいわき" url="http://www.simulradio.info/asx/fm-iwaki.asx"/>
        <bookmark name="[会津若松市] エフエム会津" url="http://www.simulradio.info/asx/aizu.asx"/>
        <bookmark name="[湯沢市] FMゆーとぴあ" url="http://www.simulradio.info/asx/FmYutopia.asx"/>
        <bookmark name="[横手市] 横手かまくらエフエム" url="http://www.simulradio.info/asx/yokote.asx"/>
        <bookmark name="[宮古市] みやこハーバーラジオ" url="http://www.simulradio.info/asx/FmMiyako.asx"/>
        <bookmark name="[石巻市] ラジオ石巻" url="http://www.simulradio.info/asx/RadioIshinomaki.asx"/>
        <bookmark name="[塩釜市] BAY WAVE" url="http://www.simulradio.info/asx/BAYWAVE.asx"/>
        <bookmark name="[仙台市泉区] fmいずみ" url="http://www.simulradio.info/asx/fmIzumi.asx"/>
        <bookmark name="[山元町] {臨時災害放送局} りんごFM" url="http://www.simulradio.info/asx/RingoFM.asx"/>
        <bookmark name="[名取市] なとらじ" url="http://www.simulradio.info/asx/Natoraji.asx"/>
        <bookmark name="[南相馬市] {臨時災害放送局} 南相馬ひばりFM" url="http://www.simulradio.info/asx/MinamisomaFM.asx"/>
        <bookmark name="[郡山市] 郡山コミュニティ放送" url="http://www.simulradio.info/asx/kocofm.asx"/>
        <bookmark name="[女川町] {臨時災害放送局} 女川災害FM" url="http://www.simulradio.info/asx/OnagawaFM.asx"/>
        <bookmark name="[気仙沼市] {臨時災害放送局} 気仙沼災害FM" url="http://www.simulradio.info/asx/kesennumaFM.asx"/>
        <bookmark name="[陸前高田市] {臨時災害放送局} 陸前高田災害FM" url="http://www.simulradio.info/asx/rikuzentakataFM.asx"/>
        <bookmark name="[亘理町] {臨時災害放送局} 亘理臨時災害FM局" url="http://www.simulradio.info/asx/aozora.asx"/>
        <bookmark name="[釜石市] {臨時災害放送局} 釜石災害FM" url="http://www.simulradio.info/asx/kamaishi.asx"/>
        <bookmark name="[鹿角市] 鹿角きりたんぽFM" url="http://www.simulradio.info/asx/kiritampo.asx"/>
        <bookmark name="[separator-eaedcca2-444d-4073-881e-09d131cfcb8a]" url="[separator-eaedcca2-444d-4073-881e-09d131cfcb8a]"/>
        <bookmark name="[新潟市中央区] FM Kento" url="http://www.simulradio.info/asx/fmkento.asx"/>
        <bookmark name="[軽井沢町] FM軽井沢" url="http://www.simulradio.info/asx/fmkaruizawa.asx"/>
        <bookmark name="[佐久市] FMさくだいら" url="http://www.simulradio.info/asx/sakudaira.asx"/>
        <bookmark name="[安曇野市] あづみ野FM" url="http://www.simulradio.info/asx/azumino.asx"/>
        <bookmark name="[separator-a86ffb55-2e38-466a-b259-c51310f9a386]" url="[separator-a86ffb55-2e38-466a-b259-c51310f9a386]"/>
        <bookmark name="[水戸市] FMぱるるん" url="http://www.simulradio.info/asx/fmpalulun.asx"/>
        <bookmark name="[朝霞市] すまいるFM" url="http://www.simulradio.info/asx/smile.asx"/>
        <bookmark name="[逗子市・葉山町] 湘南ビーチFM" url="http://www.simulradio.info/asx/shonanbeachfma.asx"/>
        <bookmark name="[藤沢市] レディオ湘南" url="http://www.simulradio.info/asx/radioshonan.asx"/>
        <bookmark name="[小田原市] FMおだわら" url="http://www.simulradio.info/asx/fmodawara.asx"/>
        <bookmark name="[つくば市] ラヂオつくば" url="http://www.simulradio.info/asx/tsukuba.asx"/>
        <bookmark name="[立川市] エフエムたちかわ" url="http://www.simulradio.info/asx/fm-tachikawa.asx"/>
        <bookmark name="[川崎市] かわさきFM" url="http://www.simulradio.info/asx/kawasaki.asx"/>
        <bookmark name="[桐生市] FM 桐生" url="http://www.simulradio.info/asx/kiryufm.asx"/>
        <bookmark name="[大和市] FMやまと" url="http://www.simulradio.info/asx/FmYamato.asx"/>
        <bookmark name="[横浜市] FM戸塚" url="http://www.simulradio.info/asx/totsuka.asx"/>
        <bookmark name="[前橋市] まえばしCITYエフエム" url="http://radio.maebashi.fm:8080/mwave"/>
        <bookmark name="[葛飾区] かつしかFM" url="http://www.simulradio.info/asx/katsushika.asx"/>
        <bookmark name="[海老名市] FM kaon" url="mms://hdv.nkansai.tv/kaon"/>
        <bookmark name="[中央区] 中央エフエム" url="http://www.simulradio.info/asx/chuo_fm.asx"/>
        <bookmark name="[高萩市] たかはぎFM" url="http://www.simulradio.info/asx/takahagi.asx"/>
        <bookmark name="[separator-de97190d-9c40-414e-a5eb-7d22e8b76aab]" url="[separator-de97190d-9c40-414e-a5eb-7d22e8b76aab]"/>
        <bookmark name="[四日市市] PORT WAVE" url="http://www.simulradio.info/asx/portwavefm.asx"/>
        <bookmark name="[熱海市] Ciao!" url="http://www.simulradio.info/asx/ciao.asx"/>
        <bookmark name="[名古屋市中区] MID-FM" url="http://www.simulradio.info/asx/mid-fm761.asx"/>
        <bookmark name="[岡崎市] FMおかざき" url="http://www.simulradio.info/asx/FmOkazaki.asx"/>
        <bookmark name="[刈谷市] Pitch FM" url="http://www.simulradio.info/asx/pitch.asx"/>
        <bookmark name="[豊田市] RADIO LOVEAT" url="http://www.simulradio.info/asx/toyota.asx"/>
        <bookmark name="[鈴鹿市] Suzuka Voice FM" url="http://www.simulradio.info/asx/suzuka.asx"/>
        <bookmark name="[伊豆の国市] FMいずのくに" url="http://hdv4.nkansai.tv/izunokuni?MSWMExt=.asf"/>
        <bookmark name="[separator-8521e95a-3f19-408d-a25a-6d609d322dc3]" url="[separator-8521e95a-3f19-408d-a25a-6d609d322dc3]"/>
        <bookmark name="[黒部市] ラジオ・ミュー" url="http://www.simulradio.info/asx/radiomyu.asx"/>
        <bookmark name="[separator-e58d7e8b-8f97-43b1-b961-9bf2ae4a186e]" url="[separator-e58d7e8b-8f97-43b1-b961-9bf2ae4a186e]"/>
        <bookmark name="[福知山市] FM丹波" url="http://fukuchiyama.fm-tanba.jp/simul.asx"/>
        <bookmark name="[豊中市] FM千里" url="http://www.simulradio.info/asx/fmsenri.asx"/>
        <bookmark name="[神戸市] エフエムわいわい" url="http://www.simulradio.info/asx/fmyy.asx"/>
        <bookmark name="[三木市] エフエムみっきぃ" url="http://www.simulradio.info/asx/fm-miki.asx"/>
        <bookmark name="[枚方市] FMひらかた" url="http://www.simulradio.info/asx/fm-tanabe.asx"/>
        <bookmark name="[姫路市] FM GENKI" url="http://www.simulradio.info/asx/fm-genki.asx"/>
        <bookmark name="[田辺市] FM TANABE" url="http://www.simulradio.info/asx/fm-tanabe.asx"/>
        <bookmark name="[豊岡市] FMジャングル" url="http://www.simulradio.info/asx/jungle.asx"/>
        <bookmark name="[加古川市] BAN-BANラジオ" url="http://www.simulradio.info/asx/banban.asx"/>
        <bookmark name="[白浜町] FMビーチステーション" url="http://www.simulradio.info/asx/beach_station.asx"/>
        <bookmark name="[箕面市] みのおエフエム" url="http://fm.minoh.net/minohfm.asx"/>
        <bookmark name="[大阪市中央区] YES-fm" url="http://www.simulradio.info/asx/yes-fm.asx"/>
        <bookmark name="[京都市伏見区] 京都リビングエフエム" url="http://www.simulradio.info/asx/KyotoLivingFM.asx"/>
        <bookmark name="[西宮市] さくらFM" url="http://www.simulradio.info/asx/sakura.asx"/>
        <bookmark name="[尼崎市] エフエムあまがさき" url="http://www.simulradio.info/asx/aiai.asx"/>
        <bookmark name="[草津市] えふえむ草津" url="http://www.simulradio.info/asx/rockets785.asx"/>
        <bookmark name="[橋本市] FMはしもと" url="http://www.simulradio.info/asx/hasimoto.asx"/>
        <bookmark name="[京都市中京区] 京都三条ラジオカフェ" url="http://www.simulradio.info/asx/radiocafe.asx"/>
        <bookmark name="[神戸市] FM MOOV KOBE" url="http://www.simulradio.info/asx/fmmoov.asx"/>
        <bookmark name="[separator-49658cd8-3465-446d-884c-5fa6eee7ca1e]" url="[separator-49658cd8-3465-446d-884c-5fa6eee7ca1e]"/>
        <bookmark name="[広島市] FMちゅーピー" url="http://www.simulradio.info/asx/fm-chupea.asx"/>
        <bookmark name="[separator-ea84cc7d-c1ce-4404-9153-4b45722dedca]" url="[separator-ea84cc7d-c1ce-4404-9153-4b45722dedca]"/>
        <bookmark name="[徳島市] FMびざん" url="http://www.simulradio.info/asx/b-fm791.asx"/>
        <bookmark name="[坂出市] FM SUN" url="http://www.simulradio.info/asx/fmsun.asx"/>
        <bookmark name="[separator-577ae741-c29b-458e-a2fc-27c5bc06b32c]" url="[separator-577ae741-c29b-458e-a2fc-27c5bc06b32c]"/>
        <bookmark name="[奄美市] あまみFM" url="http://www.npo-d.org/simul/AmamiFM.asx"/>
        <bookmark name="[島原市] FMしまばら" url="http://www.shimabara.fm/st/fm-shimabara-live.asx"/>
        <bookmark name="[北九州市小倉北区] FM KITAQ" url="http://www.shimabara.fm/st/fm-kitaq-live.asx"/>
        <bookmark name="[福岡市] コミュニティラジオ天神" url="http://comiten.jp/live.asx"/>
        <bookmark name="[北九州市] AIR STATION HIBIKI" url="http://www.simulradio.info/asx/hibiki.asx"/>
        <bookmark name="[separator-21f17faa-cc0e-466a-b186-71a82275164c]" url="[separator-21f17faa-cc0e-466a-b186-71a82275164c]"/>
        <bookmark name="[北谷町] エフエム ニライ" url="http://www.simulradio.info/asx/fm-nirai.asx"/>
        <bookmark name="[うるま市] FMうるま" url="http://www.simulradio.info/asx/uruma.asx"/>
        <bookmark name="[那覇市] FMレキオ" url="http://www.simulradio.info/asx/lequio.asx"/>
        <bookmark name="[豊見城市] FMとよみ" url="http://www.simulradio.info/asx/toyomi.asx"/>
        <bookmark name="[沖縄市] オキラジ" url="http://www.simulradio.info/asx/okiradi.asx"/>
        <bookmark name="[南城市] FMなんじょう" url="http://www.simulradio.info/asx/nanjo.asx"/>
        <bookmark name="[久米島] FMくめじま" url="http://www.simulradio.info/asx/fmkumejima.asx"/>
        <bookmark name="[separator-5db6c6fc-b69e-410c-acb1-d8350f138192]" url="[separator-5db6c6fc-b69e-410c-acb1-d8350f138192]"/>
    </group>


by xenomorph0525
```
