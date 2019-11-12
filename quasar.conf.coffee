module.exports = (ctx) ->
	boot: [ 'axios' ]
	css: [ 'app.sass' ]
	extras: [
		'roboto-font'
		'material-icons'
	]
	framework:
		all: 'auto'
	components: []
	directives: []
	plugins: []
	supportIE: false
	build:
		scopeHoisting: true
		extendWebpack: (cfg) ->
			cfg.resolve.extensions.unshift '.coffee'
		chainWebpack: (chain) ->
			chain.module.rule 'pug'
				.test /\.pug$/
				.use 'pug-plain-loader'
				.loader 'pug-plain-loader'
			chain.module.rule 'coffee'
				.test /\.coffee$/
				.use 'coffee-loader'
				.loader 'coffee-loader'
	devServer: open: true
	animations: []
	ssr: pwa: false
	pwa: manifest:
		display: 'standalone'
		orientation: 'portrait'
		background_color: '#ffffff'
		theme_color: '#027be3'
		icons: [
			'src': 'statics/icons/icon-128x128.png'
			'sizes': '128x128'
			'type': 'image/png'
		,
			'src': 'statics/icons/icon-192x192.png'
			'sizes': '192x192'
			'type': 'image/png'
		,
			'src': 'statics/icons/icon-256x256.png'
			'sizes': '256x256'
			'type': 'image/png'
		,
			'src': 'statics/icons/icon-384x384.png'
			'sizes': '384x384'
			'type': 'image/png'
		,
			'src': 'statics/icons/icon-512x512.png'
			'sizes': '512x512'
			'type': 'image/png'
		]
	cordova: {}
	electron:
		extendWebpack: (cfg) ->
		packager: {}
		builder: {}