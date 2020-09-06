path = require('path')
webpack = require('webpack')
VueLoaderPlugin = require('vue-loader').VueLoaderPlugin
HtmlWebpackPlugin = require('html-webpack-plugin')

loaderVue = 
  test: /\.vue$/
  loader: 'vue-loader'

loaderStylus = 
  test: /\.styl(us)?$/
  loader: 'vue-style-loader!css-loader!stylus-loader'

module.exports = {
  context: path.resolve(__dirname, '../')
  entry: home: path.resolve(__dirname, '../src/main.js')
  output:
    path: path.resolve(__dirname, '../dist/web')
    filename: '[name].js'
    publicPath: '/'
  target: 'web'
  module: rules: [ loaderVue, loaderStylus ]
  plugins: [
    new VueLoaderPlugin
    new HtmlWebpackPlugin(
      filename: 'index.html'
      inject: true
    )
  ]
}
