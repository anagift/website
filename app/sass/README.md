# HTMLコーディング

## コーディングスタイル
### インデント
スペースは半角2文字。タブは使用不可

## XML記法
使用不可
`<br />`  
ではなく  
`<br>`
`<img alt="noxml" src="noxml.png" />`  
ではなく  
`<img alt="noxml" src="noxml.png">`

## HTML5
DOCTYPE順序のタグを利用
`<!DOCTYPE html>`

## Menu Tag
menuタグは使わずnavで統一


# CSSコーディング

## コーディングスタイル
### インデント
スペースは半角2文字。タブは使用不可  
プロパティの後には1文字のスペースを挿入  
ただし__scss__ではなく__sass__の記法であるためインデントは必須  
文末のセミコロンを使用しない

## SASS
コーディングにはSASSを利用。CSSは直接触らない

## Compass
libsas利用のため[Compass][l-01]は使用しない  
mixinライブラリは[bourbon][l-02]を利用  
gridフレームワークは[neat][l-03]を利用

## ベンダープレフィックス
[autoprefixer][l-06]を通してチェックをしている

## ブラウザ デフォルトCSS
各ブラウザデフォルトCSSは[reset.css][l-04]
ではなく[normailze.css][l-05]を利用

## ディレクトリ構成
sassディレクトリの構成は以下  
layout/とmodule/は適宜ファイルを増やして問題ないが、  
indexへimportさせること
``` app/sass
app/sass
├─ README.md        // このファイル
├─ base.sass        // 要素直接に影響を与えるスタイルを定義
├─ config.sass      // グローバル変数を定義
├─ functions.sass   // functionを集約 汎用性を意識
├─ layout           // layoutの定義を集約
│ ├─ header.sass   // ヘッダに関する定義
│ └─ index.sass    // layout内のimportするものを定義
├─ mixins.sass      // mixinを集約 汎用性を意識
├─ module           // moduleの定義を集約
│ ├─ index.sass    // module内のimportするものを定義
│ └─ search.sass   // searchに関する定義
├─ motions.sass     // motionを集約
├─ normalize.sass   // normalize.cssをsassに変換したもの
├─ state.sass       // 状態に関するクラスを定義
├─ style.sass       // おおもととなるファイル
└─ theme.sass       // 色、文字等を定義
```
## 命名規則
* layoutは`l-`を先頭に付与する
* state(状態)は`is-`か`has-`を先頭に付与する
* idは使用不可
* moduleは[BEM][l-07]の記述とあわせキャメルケースで記述する

## sprite画像
[gulp.spritesmith][l-08]を利用して生成  
画像はapp/sass/spritesにxxxhdpi、4dpxで作成(通常の4倍)  
mixinはsprite.sassに出力される  
ひな形はapp/sass/sass.template.mustashe  
[spritesheet-templates][l-09]でmustashe記法  



[l-01]: http://compass-style.org/
[l-02]: http://bourbon.io/
[l-03]: http://neat.bourbon.io/
[l-04]: http://yuilibrary.com/yui/docs/cssreset/
[l-05]: http://necolas.github.io/normalize.css/
[l-06]: https://github.com/postcss/autoprefixer
[l-07]: https://en.bem.info/
[l-08]: https://github.com/twolfson/gulp.spritesmith
[l-09]: https://github.com/twolfson/spritesheet-templates
