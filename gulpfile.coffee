gulp = require 'gulp'
browserify = require 'browserify'
coffeeify = require 'coffeeify'
source = require 'vinyl-source-stream'
rename = require 'gulp-rename'
sourcemaps = require 'gulp-sourcemaps'
uglify = require 'gulp-uglify'
gutil = require 'gulp-util'
buffer = require 'vinyl-buffer'

gulp.task 'default', ->
  entry = './index'
  b = browserify
    entries: entry
    extensions: ['.js']
    debug: true
    transform: coffeeify,
      bare: false
      header: true
  b.bundle()
    .pipe(source(entry))
    .pipe(rename(extname: '.min.js',dirname: '',basename: 'websocket-rails'))
    .pipe(buffer())
    .pipe(sourcemaps.init({loadMaps: true}))
    .pipe(uglify())
    .on('error', gutil.log)
    .pipe(gulp.dest('./dist'))