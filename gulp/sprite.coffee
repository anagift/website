'use strict'

gulp = require 'gulp'

spritesmith = require 'gulp.spritesmith'

gulp.task 'sprite', ->

  spriteOption =
    imgName: 'sprite.png'
    cssName: '_sprite.sass'
    imgPath: '/assets/images/sprite.png'
    cssFormat: 'sass'
    cssSpritesheetName: 'icon'

    # ###*
    #   cssVarMapを有効にするとエラーがでるため,
    #    ./sass.template.mustacheを直に変更
    # ###
    # 
    # cssVarMap: (sprite) ->
    #   sprite.name = 'sprite-' + sprite.name

    cssTemplate: './app/sass/sass.template.mustache'

  spriteData =
    gulp.src './app/assets/images/sprites/**/*.*'
    .pipe spritesmith(spriteOption)

  spriteData.img.pipe gulp.dest('./app/assets/images/')
  spriteData.css.pipe gulp.dest('./app/sass/')
