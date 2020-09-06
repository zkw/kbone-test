path = require('path')
webpack = require('webpack')
VueLoaderPlugin = require('vue-loader/lib/plugin')
VuetifyLoaderPlugin = require('vuetify-loader/lib/plugin')
HtmlWebpackPlugin = require('html-webpack-plugin')

loaderPug =
  test: /\.pug$/
  loader: 'pug-plain-loader'

loaderCoffee =
  test: /\.coffee$/
  loader: 'coffee-loader'

loaderSass =
  test: /\.s?(c|a)ss$/,
  use: [
    'style-loader'
    'css-loader'
    {
      loader: 'sass-loader'
      options: {
        implementation: require('sass')
        sassOptions: {
          fiber: require('fibers')
        }
      }
    }
  ]

loaderStylus =
  test: /\.styl(us)?$/
  use: [
    'style-loader'
    'css-loader'
    'stylus-loader'
  ]

loaderVue =
  test: /\.vue$/
  loader: 'vue-loader'

module.exports = {
  context: path.resolve(__dirname, '../')
  entry: home: path.resolve(__dirname, '../src/main.coffee')
  output:
    path: path.resolve(__dirname, '../dist/web')
    filename: '[name].js'
    publicPath: '/'
  target: 'web'
  module: rules: [
    loaderPug
    loaderCoffee
    loaderSass
    loaderStylus
    loaderVue
  ]
  plugins: [
    new VueLoaderPlugin
    new VuetifyLoaderPlugin
    new HtmlWebpackPlugin(
      filename: 'index.html'
      title: '标题'
      inject: true
    )
  ]
}
