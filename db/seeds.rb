# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password'
)

sawara = User.find_or_create_by!(email: "sawara@example.com") do |user|
  user.name = "sawara"
  user.password = "password"
  user.introduction = "ギター歴10年、宅録と作詞作曲やってます"
end
unless sawara.profile_image.attached?
  sawara.profile_image.attach(
    io: File.open("#{Rails.root}/db/fixtures/user-image1.jpg"),
    filename: "user-image1.jpg",
    content_type: "image/jpg"
  )
end

yuta = User.find_or_create_by!(email: "yuta@example.com") do |user|
  user.name = "yuta"
  user.password = "password"
  user.introduction = "EDMとLo-fiを中心にDTMしてます。ジャズにも興味あります。"
end
unless yuta.profile_image.attached?
  yuta.profile_image.attach(
    io: File.open("#{Rails.root}/db/fixtures/user-image2.jpg"),
    filename: "user-image2.jpg",
    content_type: "image/jpg"
  )
end

gnyy = User.find_or_create_by!(email: "gnyy@example.com") do |user|
  user.name = "G-nyy"
  user.password = "password"
  user.introduction = "アナログミックスが好きなDTMerです🎧"
end
unless gnyy.profile_image.attached?
  gnyy.profile_image.attach(
    io: File.open("#{Rails.root}/db/fixtures/user-image3.jpg"),
    filename: "user-image3.jpg",
    content_type: "image/jpg"
  )
end

yohira = User.find_or_create_by!(email: "yohira@example.com") do |user|
  user.name = "よひら"
  user.password = "password"
  user.introduction = "DAW買って1ヶ月、勉強しながら曲作ってます。音楽なら何でも好き。"
end
unless yohira.profile_image.attached?
  yohira.profile_image.attach(
    io: File.open("#{Rails.root}/db/fixtures/user-image4.jpg"),
    filename: "user-image4.jpg",
    content_type: "image/jpg"
  )
end

iru = User.find_or_create_by!(email: "iru@example.com") do |user|
  user.name = "Iru"
  user.password = "password"
  user.introduction = "音楽理論は苦手だけどDTM楽しんでます。ピアノ弾けます。たまに楽曲解剖します。"
end
unless iru.profile_image.attached?
  iru.profile_image.attach(
    io: File.open("#{Rails.root}/db/fixtures/user-image5.jpg"),
    filename: "user-image5.jpg",
    content_type: "image/jpg"
  )
end

loppo = User.find_or_create_by!(email: "loppo@example.com") do |user|
  user.name = "ロッポ"
  user.password = "password"
  user.introduction = "ベース始めたばかり～よろしく～"
end
unless loppo.profile_image.attached?
  loppo.profile_image.attach(
    io: File.open("#{Rails.root}/db/fixtures/user-image6.jpg"),
    filename: "user-image6.jpg",
    content_type: "image/jpg"
  )
end

haru = User.find_or_create_by!(email: "haru@example.com") do |user|
  user.name = "Haru"
  user.password = "password"
  user.introduction = "シンガーソングライター目指してます。詞先派。"
end
unless haru.profile_image.attached?
  haru.profile_image.attach(
    io: File.open("#{Rails.root}/db/fixtures/user-image7.jpg"),
    filename: "user-image7.jpg",
    content_type: "image/jpg"
  )
end

miya = User.find_or_create_by!(email: "miya@example.com") do |user|
  user.name = "ミヤ"
  user.password = "password"
  user.introduction = "エレクトロポップ系の曲を作ってます！ミックス勉強中。"
end
unless miya.profile_image.attached?
  miya.profile_image.attach(
    io: File.open("#{Rails.root}/db/fixtures/user-image8.jpg"),
    filename: "user-image8.jpg",
    content_type: "image/jpg"
  )
end

naoto = User.find_or_create_by!(email: "naoto@example.com") do |user|
  user.name = "Naoto"
  user.password = "password"
  user.introduction = "作曲メイン。インスト曲多め。癒し系サウンドが得意。"
end
unless naoto.profile_image.attached?
  naoto.profile_image.attach(
    io: File.open("#{Rails.root}/db/fixtures/user-image9.jpg"),
    filename: "user-image9.jpg",
    content_type: "image/jpg"
  )
end

yume = User.find_or_create_by!(email: "yume@example.com") do |user|
  user.name = "ゆめ"
  user.password = "password"
  user.introduction = "ノイズ音楽とかアンビエントが好き。個人制作多め。"
end
unless yume.profile_image.attached?
  yume.profile_image.attach(
    io: File.open("#{Rails.root}/db/fixtures/user-image10.jpg"),
    filename: "user-image10.jpg",
    content_type: "image/jpg"
  )
end

souta = User.find_or_create_by!(email: "souta@example.com") do |user|
  user.name = "Souta"
  user.password = "password"
  user.introduction = "ドラム叩きながらDAWいじってる人。リズム命。"
end
unless souta.profile_image.attached?
  souta.profile_image.attach(
    io: File.open("#{Rails.root}/db/fixtures/user-image11.jpg"),
    filename: "user-image11.jpg",
    content_type: "image/jpg"
  )
end

Post.create!(
  user: iru,
  title: "耳コピで得られた作曲へのヒント",
  image: nil,
  is_visible: false,
  body: <<~TEXT
    耳コピって、ただの練習手段だと思ってない？
    実は、作曲に活かせるヒントがたくさん詰まってる。

    僕が耳コピに本腰を入れたのは、好きなアーティストの曲を「再現したい」と思ったのがきっかけだった。最初は単にコード進行を拾ったり、ベースラインを追いかけたりするだけ。でも、何曲も耳コピしてるうちに、ある共通点に気づいたんだ。

    それは、「コードとメロディの関係性」と「リズムの配置」。

    耳コピで分解してみると、思ったよりも簡単なコードしか使われてない曲が多かった。だけど、それがどうして心に残るのかを分析していくと、「メロディがコードをどう乗りこなしてるか」「どこにテンションを置くか」「あえてシンプルに終わらせてるポイント」みたいな、作曲の設計図が見えてくる。

    リズムも同じ。8分や16分で細かく刻むフレーズと、あえて抜くタイミングの対比がすごく勉強になった。ドラムの打ち込みを耳コピすることで、自分が作るビートも一気に変わったよ。

    あと、耳コピを通して身についたのは「耳の感覚」だけじゃなくて、「引き出しの多さ」。
    たとえば、「この感じのコード進行、あのJ-POPでも聴いたな」とか、「このフィル、Lo-fiのあの曲にもあった」みたいに、耳コピがストックになっていく。
    作曲中に迷ったとき、そのストックがアイデアの種になる。

    完コピしなくてもいい。自分の耳と感覚で「これは何のコード？」「このベースの動きってどういう意図？」と考えるだけで、音楽の理解度はぐっと深くなる。

    DTMや作曲って、つい理論から入ろうとしがちだけど、感覚もすごく大事。
    耳コピはその「感覚」を鍛える最高のトレーニングになる。

    もし最近、作曲がワンパターンになってきたなと思ったら、好きな曲を一度耳コピしてみて。そこに、自分のスタイルを広げるヒントが隠れてるかもしれないよ。
  TEXT
)

Post.create!(
  user: yume,
  title: "ベースラインが曲の雰囲気を決める！",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/post-image1.jpg"), filename: "post-image1.jpg"),
  is_visible: true,
  body: <<~TEXT
    曲作りをしていて、「なんか物足りない…」「雰囲気がチグハグ…」と感じたことはありませんか？
    実はその原因、ベースラインにあるかもしれません。

    【ベースラインって何してるの？】

    ベースは、ドラムと並んで「リズム隊」の一員として、曲の土台を支えています。でも実は、それだけじゃありません。ベースラインはコードの流れを裏で導き、曲のグルーヴや感情に大きく影響します。

    たとえば、同じコード進行でも…

    ・ルート音をずっと弾いてるだけのベースライン  
    ・ウォーキングベースのように上下に動き回るライン  
    ・リズムにノリをつけたシンコペーションの効いたライン  

    では、聴いた印象が全然違いますよね。

    【雰囲気が変わる例】

    実際にこんなケースがあります。

    ▽同じコード進行：C - G - Am - F

    ・ベースがすべてルート音を全音符で弾く：穏やかでのんびりした印象  
    ・8ビートでルート＋5度を弾く：ポップで明るい印象  
    ・16分でリズムに絡むようなフレーズ：ファンクやR&Bっぽい印象  
    ・メロディに合わせて動くベース：メロと一体化して感情豊かに感じる  

    つまり、ベースライン次第で「同じコード進行」がまったく違う世界観になるんです！

    【作るときのポイント】

    初心者がベースラインを考えるときは、以下を意識してみてください。

    1. コードのルートを中心に  
    → 最初は各コードのルート音を1小節ずつ弾くだけでもOK！

    2. コードトーン（ルート・3度・5度）を混ぜてみる  
    → 和音をしっかり支えつつ、動きを出せる。

    3. リズムで遊ぶ  
    → 同じ音でも、リズムを変えるだけで印象がガラッと変わるよ。

    4. ドラムと噛み合わせる  
    → キックとタイミングを合わせるとグルーヴ感UP！

    5. スケールを意識して滑らかに  
    → 例えばCメジャースケールの中で上下するだけでもオシャレに。

    【考えすぎなくていい】

    ベースは地味なようでいて、めちゃくちゃ重要。でも、「正解」は一つじゃないし、雰囲気を“変えられる”からこそ楽しいパートです。

    「なんか曲がのっぺりしてるな…」と思ったら、ベースラインをちょっと変えてみるだけで、びっくりするくらい曲が生き返ることがあります。

    【最後に】

    音楽理論が苦手でも、ベースは「耳」と「感覚」でもかなりいけます。気になる曲のベースを耳コピして、自分の曲に応用するだけでも成長します。

    あなたの曲の“表情”は、ベースラインが握っているかも。
  TEXT
)

Post.create!(
  user: haru,
  title: "オーディオインターフェースの必要性について",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/post-image2.jpg"), filename: "post-image2.jpg"),
  is_visible: true,
  body: <<~TEXT
  DTMや音楽制作を始めたばかりの人にとって、「オーディオインターフェースって本当に必要？」と疑問に思うことがあるかもしれません。スマホやパソコンに直接マイクや楽器を繋げることもできますし、まずは手軽に始めたいという気持ちもわかります。でも、クオリティの高い音作りや効率的な作業を目指すなら、オーディオインターフェースは欠かせない存在です。今回は、その理由をわかりやすく解説します。

  【オーディオインターフェースって何？】

  簡単に言えば、オーディオインターフェースは楽器やマイクからのアナログ音声信号をパソコンで扱えるデジタル信号に変換する装置です。また、パソコンで処理した音を高音質でスピーカーやヘッドホンに出力する役割も持っています。

  パソコンに内蔵されているサウンドカードでも音の入出力はできますが、専用機器であるオーディオインターフェースを使うと以下のようなメリットがあります。

  【なぜオーディオインターフェースが必要なのか？】

  音質が格段に良くなる
  パソコン内蔵のサウンドカードは一般的な用途には十分ですが、録音や再生の品質では専用機器に劣ります。オーディオインターフェースは高品質なAD/DAコンバーターやプリアンプを搭載しているため、ノイズが少なくクリアな音を扱えます。結果として、録音した音のクオリティが格段に上がります。

  レイテンシー（遅延）が少ない
  音楽制作では、演奏を録音したりモニタリング（自分の演奏をリアルタイムで聞くこと）をしたりします。内蔵サウンドカードは処理速度が遅く、音の遅延（レイテンシー）が大きくなりがちです。専用のオーディオインターフェースはレイテンシーを極力減らし、違和感のない演奏環境を作ります。

  楽器やマイクを直接接続できる
  オーディオインターフェースにはギターやベースを繋ぐための入力端子や、コンデンサーマイクなど高性能なマイク用のファンタム電源を供給できる機能があります。これにより、音作りの幅が大きく広がります。

  複数の入出力を扱える
  複数の楽器やマイクを同時に接続できるモデルも多く、バンドでの録音や複数トラックの同時録音も可能です。これにより制作効率が大幅にアップします。

  【初心者におすすめのオーディオインターフェースの選び方】

  入出力数：自分の環境に合わせて必要な数を選ぶ。初めは1～2入力モデルでも十分。

  接続方式：USB接続が一般的で使いやすい。MacならThunderboltもあり。

  対応OSとソフト：使うDAWと互換性があるか確認しよう。

  価格帯：初心者用は1万円～3万円台が多い。まずは予算に合ったものから。

  【オーディオインターフェースを使う上での注意点】

  ドライバのインストールが必要な場合が多い。公式サイトから最新ドライバを入手しよう。

  ノイズ対策として、ケーブルの品質や接続環境も見直すと良い。

  コンデンサーマイクを使うならファンタム電源対応モデルを選ぼう。

  【まとめ】

  オーディオインターフェースは、音楽制作の質を大きく左右する重要な機材です。最初はなくても作曲や編集はできますが、本格的に音を録ったり、リアルタイムでモニタリングしながら演奏したりしたいなら必須と言えます。少し投資をしてでも手に入れることで、制作の幅が広がり、より良いサウンドが作れるようになるでしょう。

  ぜひ、自分の制作スタイルに合ったオーディオインターフェースを選んで、音楽制作の楽しさをさらに深めてくださいね！
  TEXT
)

Post.create!(
  user: iru,
  title: "音楽理論苦手でも大丈夫！使えるスケール入門",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/post-image3.jpg"), filename: "post-image3.jpg"),
  is_visible: true,
  body: <<~TEXT
    音楽理論って、ちょっと難しそうで敬遠しがちですよね。でも、スケールを少し理解するだけで、曲作りや演奏がグッと楽になります。今回は「音楽理論苦手でも大丈夫！」をテーマに、初心者でも使いやすいスケールを紹介します。

    【スケールって何？】

    スケールとは、「音の集まり」のこと。たとえば「ドレミファソラシド」はCメジャースケールと呼ばれます。曲のメロディやコードは、このスケールの中の音から作られることが多いです。

    【よく使う基本スケール】

    1. メジャースケール（長調）  
    明るくてハッピーな感じ。  
    例）Cメジャースケール：C D E F G A B  

    2. マイナースケール（短調）  
    切なさや哀愁を感じる。  
    例）Aマイナースケール：A B C D E F G  

    【マイナーの種類】

    マイナースケールは3種類ありますが、初心者はまずナチュラルマイナー（上の例）だけ覚えればOKです。慣れてきたらメロディックマイナーやハーモニックマイナーにも挑戦しましょう。

    【スケールの使い方】

    スケールはメロディやソロの「使っていい音」の目安になります。これを意識して弾いたり打ち込んだりすると、違和感の少ない自然なフレーズが作れます。

    【おすすめの練習方法】

    1. スケールをゆっくり弾いてみる  
    まずはピアノやギターでCメジャースケールをゆっくり弾いて、音の流れを覚えましょう。  

    2. スケールの中で即興フレーズを作る  
    決まったリズムで、スケールの音だけを使って自由にメロディを作ってみます。  

    3. 曲のコードに合わせて弾く  
    簡単なコード進行（例：C - Am - F - G）に合わせて、スケール音を使ってフレーズを作る練習も効果的です。

    【スケールだけじゃない！コードトーンも覚えよう】

    曲の雰囲気を決める大事な音は、コードトーン（コードを構成する音：ルート、3度、5度など）です。これを意識すると、もっと感情が伝わるメロディになります。

    【難しく考えなくて大丈夫】

    音楽理論は深いですが、まずは「これだけ覚えれば曲作りが楽しくなる」というポイントから始めてみましょう。スケールを味方につけると、音遊びの幅が広がりますよ！

    【まとめ】

    ・スケールは音の集まりで、メロディやコードの基礎になる  
    ・まずはメジャーとナチュラルマイナーを覚えると使いやすい  
    ・スケールを使って自由にフレーズを作る練習が効果的  
    ・コードトーンも意識するとより感情豊かになる  
    ・難しく考えすぎず、音楽を楽しむことが一番！

    音楽理論が苦手でも、スケールを味方にすれば作曲や演奏がもっと楽しくなります。ぜひチャレンジしてみてくださいね！
  TEXT
)

Post.create!(
  user: souta,
  title: "リズムトラックの作り方：グルーヴ感を出すコツ",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/post-image4.jpg"), filename: "post-image4.jpg"),
  is_visible: true,
  body: <<~TEXT
    リズムトラックは曲の土台であり、グルーヴ感を作る大事なパートです。どんなにメロディが良くても、リズムがしっかりしていなければ曲は生きません。今回は、初心者でもわかりやすいリズムトラックの作り方と、グルーヴ感を出すコツを紹介します。

    【リズムトラックとは？】

    リズムトラックは、ドラムやパーカッション、ベースなど、曲のリズムとビートを支えるパートのこと。主にドラムパターンが中心になりますが、ベースもリズム感を支える重要な要素です。

    【基本のビートを理解しよう】

    最初に覚えたいのは「4つ打ち」や「8ビート」と呼ばれる基本リズム。例えば、ドラムのキックは1拍目と3拍目、スネアは2拍目と4拍目に入るパターンです。このリズムが土台となり、曲に安定感を与えます。

    【グルーヴ感を出すためのポイント】

    1. スイング感を加える  
    すべての音を均等にせず、リズムを少しずらして「ノリ」を作ります。これがスイング感で、ジャズやファンクでよく使われます。

    2. ベロシティ（音の強弱）を調整する  
    同じ音でも強弱をつけることで、生き生きとしたリズムになります。特にスネアやハイハットのベロシティにメリハリをつけると効果的です。

    3. 微妙なタイミングのズレを入れる  
    完全に機械的に打ち込むのではなく、ほんの少しだけタイミングを前後させると、人間味のあるグルーヴが生まれます。

    4. ハイハットのパターンを工夫する  
    ハイハットを16分音符で刻む場合も、すべて同じ音量ではなく、強弱やアクセントをつけるとリズムに奥行きが出ます。

    【ベースとの連携も重要】

    リズムトラックのグルーヴは、ドラムだけでなくベースとの連携で決まります。キックとベースの音がかみ合うことで、リズムが太く、しっかりとした印象になります。

    【実際に作るときの流れ】

    1. 基本のドラムパターンを作成する  
    まずは4つ打ちや8ビートのキック・スネア・ハイハットを配置しましょう。

    2. ベロシティやタイミングを微調整する  
    強弱をつけたり、リズムを少しズラしてスイング感を足します。

    3. ベースラインを加えてみる  
    キックのリズムに合わせてベースを動かすと、リズムトラックが一体化します。

    4. 追加のパーカッションで彩りを加える  
    シェイカーやクラップなどを部分的に入れると、リズムがより豊かになります。

    【まとめ】

    リズムトラックは曲の「ノリ」を決める大黒柱。基本のビートをしっかり押さえつつ、強弱や微妙なズレを加えることで生き生きとしたグルーヴが生まれます。ベースとの連携も意識して、全体のリズムをまとめることが大切です。

    機械的な打ち込みになりがちな初心者も、少し工夫するだけで、グルーヴ感のあるリズムトラックが作れます。ぜひチャレンジして、あなたの曲にリズムの命を吹き込んでみてください！
  TEXT
)

Post.create!(
  user: miya,
  title: "初心者向け!おすすめのコード進行パターン5選",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/post-image5.jpg"), filename: "post-image5.jpg"),
  is_visible: true,
  body: <<~TEXT
    作曲を始めたばかりの人にとって、コード進行は曲の基礎でありながら難しく感じる部分ですよね。そこで今回は、初心者でも使いやすく、さまざまなジャンルで活躍する「おすすめのコード進行パターン5選」を紹介します。これを覚えれば、自分の曲作りの幅がグッと広がりますよ！

    【1. I - V - vi - IV（アイ・ファイブ・シックスマイナー・フォー）】
    ポップスやロックで超定番のコード進行。例えばキーCなら、C - G - Am - Fとなります。明るくキャッチーで親しみやすい響きが特徴です。多くのヒット曲で使われています。

    【2. I - vi - IV - V（アイ・シックスマイナー・フォー・ファイブ）】
    こちらも王道の進行で、昔ながらのポップスやバラードでよく使われます。キーCなら、C - Am - F - G。感情の起伏があり、ドラマチックな印象を与えます。

    【3. ii - V - I（ツー・ファイブ・ワン）】
    ジャズやボサノバでよく使われる進行。キーCだとDm7 - G7 - Cmaj7。コードの動きが滑らかで、洗練された大人っぽい響きが特徴です。

    【4. I - IV - V（アイ・フォー・ファイブ）】
    ロックやブルースの基礎となるシンプルな進行。C - F - G。シンプルだけど力強く、エネルギッシュな曲にピッタリです。

    【5. vi - IV - I - V（シックスマイナー・フォー・アイ・ファイブ）】
    少し切なさや感情の深みを感じさせる進行。キーCなら、Am - F - C - G。ポップスやバラードに合いやすいのでおすすめです。

    【コード進行の活用ポイント】

    ・キーを変えてみる  
    自分の声や曲のイメージに合わせてキーを変えることで、よりフィットした曲になります。

    ・リズムやテンポを工夫する  
    同じコードでもリズムやテンポを変えるだけで、まったく違う雰囲気を作れます。

    ・ベースラインやメロディとの連携を意識する  
    コードだけでなく、ベースやメロディの動きも合わせて考えると、より一体感のある曲になります。

    【まとめ】

    初心者におすすめのコード進行はシンプルで使いやすく、さまざまなジャンルで応用が効くものばかり。まずは5つをしっかり覚えて、何度も弾いたり、実際に曲を作ってみることが上達への近道です。

    音楽理論が苦手でも、耳で聴いて好きな進行を真似るのも大切。気軽に楽しみながら、自分の曲作りに取り入れてみてくださいね！
  TEXT
)

Post.create!(
  user: sawara,
  title: "ベロシティで表現力アップ！打ち込みのコツ",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/post-image6.jpg"), filename: "post-image6.jpg"),
  is_visible: true,
  body: <<~TEXT
    打ち込み音楽で「なんだか味気ない」「表現が単調に感じる」と思ったことはありませんか？  
    そんなときにぜひ注目したいのが「ベロシティ」です。

    【ベロシティって何？】

    ベロシティとは、MIDI打ち込みでの音の強さや勢いを表すパラメーターのこと。  
    同じ音でも強弱をつけることで、グルーヴや感情がグッと豊かになります。

    【ベロシティでできること】

    ・強弱をつけて自然な演奏感に  
    人間が弾くときのように、音の強さに差をつけることで生き生きとした印象に。

    ・アクセントをつけてリズムを際立たせる  
    重要な音だけ強めにすることで、曲のノリやメリハリを演出。

    ・感情表現を豊かにする  
    優しい部分は弱く、盛り上がるところは強く、ストーリー性を感じさせる効果も。

    【ベロシティを活かすコツ】

    1. 曲の流れに合わせて強弱をつける  
    クライマックスやサビは強めに、落ち着いた部分は控えめに。

    2. リズムにアクセントをつける  
    例えばスネアやハイハットのベロシティを変えて、グルーヴ感を強調。

    3. 完全に均一なベロシティは避ける  
    一律の強さだと機械的で味気なくなるので、微妙に変化をつけるのがポイント。

    4. 実際の演奏を聴いて参考にする  
    好きな曲の演奏を聴いて、どんな強弱がついているか耳を傾けよう。

    【最後に】

    ベロシティは打ち込みの表現力を大きく左右する重要な要素。  
    最初は難しく感じるかもしれませんが、少しずつ強弱をつけてみるだけで、ぐっと生き生きとした演奏になります。

    音楽制作の楽しさを深めるために、ぜひベロシティを意識して打ち込みをしてみてくださいね！
  TEXT
)

Post.create!(
  user: yohira,
  title: "DAWソフトどれがいいのかな？",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/post-image7.jpg"), filename: "post-image7.jpg"),
  is_visible: true,
  body: <<~TEXT
    こんにちは、音楽作りを始めたばかりの初心者です。

    最近、作曲をやってみたくて「DAWソフト」っていうのを調べたんですが、種類が多すぎて正直どれがいいのかわかりませんでした…。

    私が最初に使ったのは、Micに最初から入ってた「LogBand」です。直感的に使えるし、音もきれいで「なんか本格的…！」って思えました。ピアノロールとかも分かりやすくて、初心者にぴったりでした！

    友達に聞いたら、Winwinだったら「walk」が無料で使えるみたいです。あと、「SOne」ってソフトも人気みたいで、無料版があるので試してみようかなって思ってます。

    いろんなDAWがあるけど、最初は「無料で使ってみて、自分に合うか試す」のが一番いいのかなと思いました。

    まだまだわからないことだらけだけど、ちょっとずつ曲を作れるようになるのが楽しいです！

    もし「どれにすればいいかわかんない…」って迷ってる人がいたら、「とりあえず無料のやつを触ってみよう！」って言いたいです。

    一緒に音楽作りがんばろう～！
  TEXT
)

Post.create!(
  user: yohira,
  title: "エフェクターの選び方、どうすればいい？",
  image:  nil,
  is_visible: true,
  body: <<~TEXT
    こんにちは、ギターもDTMも初心者のhajimeです！

    最近「エフェクターって必要なのかな？」と思って調べ始めました。でも、コンパクトとかマルチとか、種類が多くてびっくり！

    最初は「マルチエフェクター」がいいよって先輩に言われて、理由を聞いたら「1台でいろんな音が出せるから便利」とのこと。確かに1つずつ揃えるのは大変そう…。

    実際に試してみたら、歪み・リバーブ・ディレイとか、名前は知ってるけど何するやつか知らなかったエフェクトも、音を聞くと「おぉ～こうなるんだ！」って感動しました。

    僕みたいに「これから音作りしてみたい！」って人は、まずマルチを1つ買って、いろんな音を試してみるのがいいかも！

    迷ったら、まずは触ってみるのが一番だなって思いました◎
  TEXT
)

Post.create!(
  user: iru,
  title: "RUIRU「Holy**」コード進行解説と使用楽器まとめ",
  image: nil,
  is_visible: true,
  body: <<~TEXT
    RUIRUの楽曲「Holy**」、聴きましたか？  
    幻想的で切ない雰囲気が印象的な1曲ですが、今回はそのコード進行と使用楽器をシンプルに解説してみます！

    【使用コード進行】

    ▽イントロ／Aメロ  
    Em – C – G – D  
    → シンプルながらも哀愁漂う進行。Em始まりで一気に引き込まれます。

    ▽Bメロ  
    Am – Em – D – G  
    → じわっと上がってくる感じ。EmからDへ下がってまた持ち上げる構成が◎

    ▽サビ  
    C – G – Am – Em – D  
    → メジャーコードが多くて少し希望を感じさせつつ、EmとDで切なさを残すバランス感。

    【使用楽器】

    - エレキピアノ（ローズ系）：イントロで透明感のあるコードを演出  
    - エレキギター（クリーントーン＋空間系エフェクト）：リバーブたっぷりでアンビエントなバッキング  
    - シンセパッド：曲全体を包むような広がりを演出  
    - シンプルなドラム：タムとスネアのニュアンス中心、ローファイ寄りの音作り  
    - サブベース：Emの深みを支える重低音

    全体的にコードはそこまで複雑ではないけど、楽器の選び方と音の重ね方でRUIRUらしい空気感を作っているのがポイント。

    初心者でも弾ける進行なのに、印象は超エモい。  
    ぜひ耳コピやカバーの参考にしてみてください！
  TEXT
)

Post.create!(
  user: loppo,
  title: "曲の最初は“気分”でいい",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/post-image8.jpg"), filename: "post-image8.jpg"),
  is_visible: true,
  body: <<~TEXT
    「何から作ればいいかわからない…」って、作曲初心者あるあるだよね。

    でも大丈夫。  
    最初は“気分”でOKなんです。

    たとえば、  
    ・雨の日に聴きたくなるメロディ  
    ・夜の街を歩いてるときに流れてきそうなリズム  
    ・さみしい気持ちのときに響いたコード

    そんな“気分”からスタートしてみると、意外とスラスラ形になります。

    音楽って正解がないからこそ、感情を大事にしていいんだと思う。

    気分＝あなたの音楽の芯になるものかもしれません◎
  TEXT
)

Post.create!(
  user: loppo,
  title: "曲の見直しは丁寧に",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/post-image9.jpg"), filename: "post-image9.jpg"),
  is_visible: true,
  body: <<~TEXT
    「うわ…この曲、神じゃね？」  
    深夜2時、ノリノリで打ち込む自分。最高にイケてると思った。

    で、朝。

    なんかリズムずれてる。メロディ変。てか、サビ、どこ？

    そう、深夜テンション制作は**音楽界の魔物**。

    でも、それがダメってわけじゃないんだよね。むしろ素材としては金の卵。  
    ただ、そのまま世に出すと事故るから、**翌朝チェック**はマスト。

    まとめ：  
    ・深夜テンションで1曲完成させない  
    ・必ず寝てから聴く（冷静な耳、大事）  
    ・たまに本当に名曲生まれる（確率0.5%）

    そんな感じで、夜中の自分も大切にしてあげてね。
  TEXT
)

Post.create!(
  user: sawara,
  title: "ジャズ初心者あるある",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/post-image10.jpg"), filename: "post-image10.jpg"),
  is_visible: false,
  body: <<~TEXT

    「今日から俺もジャズやるぜ！」  
    ↓  
    「…で、何から始めればいいの？？？」

    まずYouTubeで“ジャズセッション”って検索してみた。  
    いきなり出てくるのが、  
    ・コード進行：Cm7 | F7 | Bbmaj7 | Ebmaj7...  
    ・「今日はii-V-Iをやります！」  
    ・「枯葉でやるといいよ！」  
      
    ？？？？（脳がエラー）

    でも大丈夫。焦らなくていい。  
    とりあえず**「枯葉」**弾いとこ。ジャズ勢みんなやってるから。

    【最低限知ってるとドヤれるジャズ用語】

    ・**“ブルーノート”** → 適当に入れるとジャズっぽくなる魔法の音。  
    ・**“2-5-1”** → ジャズ界の「とりあえず生で」。  
    ・**“スウィング感”** → 「ちゃんと休符感じてる？」って言うと玄人感出る。

    最後に一言：  
    「ジャズは迷ってナンボ。音も人生も。」

    （追記：セッションで迷子になっても誰かが拾ってくれるよ。たぶん。）
  TEXT
)

Post.create!(
  user: sawara,
  title: "ギター歴10年の俺が、いまだにFコードに震える理由",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/post-image11.jpg"), filename: "post-image11.jpg"),
  is_visible: true,
  body: <<~TEXT
    ジャズを始めて5年。ギター歴は10年。  
    でもいまだにFコードを見ると、指が「うっ…」ってなる。

    いやね、バレーコード？弾けるよ？  
    でもなぜか、セッション中に急にFmaj7が来ると、頭が真っ白になる。

    ちなみに最近一番焦ったのは、  
    「この曲、C△7 → F#13(b9) からの Bm7-5 にいきます〜」  
    って軽く言われた瞬間。

    いや、F#13(b9)って誰だよ。  
    しかもなぜコード名に“顔文字”みたいなの入ってんの？

    【ジャズギターの真実】

    ・“適当に弾いてるようで、実はめっちゃ考えてる”のがジャズ。  
    ・でも“考えてるようで、実は適当に弾いてる”日もある。  
    ・最終的に「音が気持ちよければヨシ！」

    【最近のマイブーム】

    ・3弦、2弦、1弦しか使わない“省エネボイシング”  
    ・コードトーンだけで乗り切るジャズブルース  
    ・指が届かないときは「それも味」という精神統一

    【まとめ】

    ジャズは「音の哲学」。でもあんまり深く考えすぎると寝る。  
    今日も俺は枯葉を弾く。10年経っても、毎回新しい発見があるから。

    P.S.  
    あとFコード、油断すると本当にミュートするからよろしく。
  TEXT
)

Post.create!(
  user: naoto,
  title: "やさしい音で、そっと包むように",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/post-image12.jpg"), filename: "post-image12.jpg"),
  is_visible: true,
  body: <<~TEXT
    朝、窓をあけたら鳥の声。  
    そのままパソコンを立ち上げて、今日の音をひとつ鳴らす。

    私の音楽は、派手じゃないし、目立たない。  
    でも、聞いた人の呼吸がふっとゆるむような、  
    そんな“そばにいる音”を作れたらいいなと思ってます。

    インストって、言葉がないぶん、自由です。  
    聴く人の心のままに、形を変えていけるから。

    最近のお気に入りは、  
    ・ローパスをうすくかけたエレピ  
    ・ゆっくりうねるパッド  
    ・遠くで鳴る風鈴のようなベル音

    リバーブは、部屋ひとつぶんの大きさで。  
    音の中に、小さな居場所をつくるような感覚です。

    今日も、小さな幸せに寄り添える曲が、ひとつでも作れたらいいな。

    ゆっくり、深呼吸して、また音を置いていこうと思います。
  TEXT
)

Post.create!(
  user: naoto,
  title: "静かな夜にぴったりのコード進行",
  image: ActiveStorage::Blob.create_and_upload!(io: File.open("#{Rails.root}/db/fixtures/post-image13.jpg"), filename: "post-image13.jpg"),
  is_visible: true,
  body: <<~TEXT
    夜の制作って、ちょっと特別ですよね。  
    まわりが静かで、自分の呼吸と音だけがそっと響く時間。

    そんなときによく使うのが、このコード進行です：

    Am7 - Dm7 - G7 - Cmaj7

    やさしくて、落ち着いてて、  
    どこか“今日もおつかれさま”って言ってくれる感じがします。

    Am7から始まると、ふんわり切なさがあって、  
    最後のCmaj7で、ちょっと安心できる。

    そこに、空気を含んだエレピや、低めのストリングスを重ねると、  
    眠る前のひとときを包んでくれるような音になります。

    コード進行って、気持ちに寄り添ってくれる存在なんだなって、  
    夜になるとよく思います。

    今日もいい夢が見られますように。
  TEXT
)

Post.create!(
  user: loppo,
  title: "深夜のピアノ即興メモ",
  is_visible: false,
  body: <<~TEXT
    BPM72  
    Key: Fmaj7 → Dm7 → Gm7 → C7  
    雨音を聴きながら即興。  
    最後にFmaj9で静かに着地。  
    ストリングスを重ねると切なさが増して良い。

    →この流れ、次の曲に使えそう。
  TEXT
)