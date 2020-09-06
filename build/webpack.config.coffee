path = require('path')
webpack = require('webpack')
VueLoaderPlugin = require('vue-loader').VueLoaderPlugin
HtmlWebpackPlugin = require('html-webpack-plugin')

loaderVue = 
  test: /\.vue$/
  loader: 'vue-loader'

loaderPug = 
  test: /\.pug$/
  loader: 'pug-plain-loader'

loaderCoffee = 
  test: /\.coffee$/
  loader: 'coffee-loader'

loaderStylus = 
  test: /\.styl(us)?$/
  loader: 'vue-style-loader!css-loader!stylus-loader'

module.exports = {
  context: path.resolve(__dirname, '../')
  entry: home: path.resolve(__dirname, '../src/main.coffee')
  output:
    path: path.resolve(__dirname, '../dist/web')
    filename: '[name].js'
    publicPath: '/'
  target: 'web'
  module: rules: [ loaderVue, loaderPug, loaderCoffee, loaderStylus ]
  plugins: [
    new VueLoaderPlugin
    new HtmlWebpackPlugin(
      filename: 'index.html'
      title: '标题'
      inject: true
    )
  ]
}
