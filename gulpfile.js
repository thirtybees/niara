var gulp = require('gulp');
var del = require('del');
var mkdirp = require('mkdirp');
var glob = require('glob-all');
var fs = require('fs');
var eslint = require('gulp-eslint');
var sass = require('gulp-sass');
var autoprefixer = require('gulp-autoprefixer');
var sourcemaps = require('gulp-sourcemaps');
var notify = require('gulp-notify');
var gulpif = require('gulp-if');
var options = require('./package.json').options;

var createFolders = [
	'./cache/',
	'./pdf/',
	'.pdf/lang/'
];

var copyIndexIgnore = [];

var cleanUp = [
	'..sass-cache/',
	'.cache/*',
	'.css/**/*.css.map'
];

var compileSass = [
	'./sass/**/*.scss',
	'!./sass/vendor/*/*.scss'
];

gulp.task('create-folders', function(callback) {
	var total = createFolders.length;
	var done  = 0;

	if (total < 1 && callback) {
		callback();
	}

	createFolders.forEach(function(path) {
		mkdirp(path, function(err) {
			if (err) {
				console.error(err);
			} else {
				console.log('Created folder : ' + path);
			}

			done++;
			if (done == total && callback) {
				callback();
			}
		});
	});
});

function displayNotification(msg) {
	return notify(msg);
}

gulp.task('compile-css', function() {
	return gulp.src(compileSass)
		.pipe(gulpif(options.sourcemaps, sourcemaps.init()))
		.pipe(
			sass({
				outputStyle: 'expanded',
				precision: 8
			}).on('error', sass.logError)
		)
		.pipe(autoprefixer())
		.pipe(gulpif(options.sourcemaps, sourcemaps.write('./')))
		.pipe(gulp.dest('./css/'))
		.pipe(displayNotification({
			message: 'Theme CSS compilation successful for ' + options.themeName,
			onLast: true
		}));
});


gulp.task('watch-sass', function() {
	gulp.watch(compileSass, gulp.series('compile-css'));
});

gulp.task('clean-up', function() {
	return del(cleanUp).then(function() {
		console.log('Deleted files and folders:\n', cleanUp.join('\n'));
	});
});

gulp.task('copy-index', function(callback) {
	var total;
	var done  = 0;
	glob(['**/'], {ignore: copyIndexIgnore}, function(err, folders) {
		total = folders.length;
		if (total < 1 && callback) {
			callback();
		}

		// console.log('Copy to folders: \n', folders.join('\n'));
		folders.forEach(function(folder) {
			fs.copy('index.php.copy', folder + '/index.php', function(err) {
				if (err) {
					return console.error(err);
				}

				done++;
				if (done == total && callback) {
					callback();
				}
			});
		});
	});
});

gulp.task('lint-js', function() {

	return gulp.src([
		'./gulpfile.js',
		'./js/**/*.js',
		'!./js/**/*.min.js',
		'!./js/autoload/**/*.js',
		'!./js/debug/**/*.js'
	])
		.pipe(eslint())
		.pipe(eslint.format());
});


gulp.task('scan-translations', function(cb) {
	glob(['**/*.tpl'], [], function(er, files) {

		var brokenTranslations = [];
		var totalFiles = files.length;
		var scannedFiles = 0;

		files.forEach(function(file) {
			var translationContext = getTemplateContext(file);

			fs.readFile(file, 'utf-8', function(err, contents) {

				var brokenTranslationsInFile = listBrokenTranslationStrings(contents, translationContext);
				if (brokenTranslationsInFile.length) {
					brokenTranslationsInFile.unshift(file);
					brokenTranslations.push(brokenTranslationsInFile);
				}

				if (++scannedFiles == totalFiles) {
					console.log('Broken Smarty translation strings in theme templates:');
					console.log(brokenTranslations);
					cb && cb();
				}
			});
		});

	});
});

function getTemplateContext(templateFilePath) {
	var bits = templateFilePath.split('/');

	// modules/mymodule/views/templates/hook/block.tpl
	if (typeof bits[0] == 'string' && bits[0] == 'modules') {
		return bits[1];
	}

	// 'themes/themename/modules/blockwishlist/my-account.tpl',
	if (bits[0] == 'themes' && typeof bits[3] == 'string') {
		return bits[3];
	}

	// 'themes/themename/product.tpl
	return '';
}

function listBrokenTranslationStrings(smartyTplCode, translationContext) {
	var translations = smartyTplCode.match(/\{l\s+s=['"].+?}/g);

	if (!translations) {
		return [];
	}

	return translations.filter(function(t) {
		if (translationContext.length) {
			// Doesn't have correct context
			return !((new RegExp('mod=[\'"]' + translationContext + '[\'"]')).test(t));
		} else {
			// Has context even though it shouldn't
			return !!/mod=['"]/.test(t);
		}
	});
}

gulp.task('default', gulp.series('compile-css', 'watch-sass'));
