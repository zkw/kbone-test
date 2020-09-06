path = require('path')
webpack = require('webpack')
MpPlugin = require('mp-webpack-plugin')
MpPluginConfig = require('./miniprogram.config.coffee')
base = require('./webpack.config.coffee')

base.entry.home = path.resolve(__dirname, '../src/main.mp.coffee')
base.output = 
    path: path.resolve(__dirname, '../dist/mp/common')
    filename: '[name].js'
    library: 'createApp'
    libraryExport: 'default'
    libraryTarget: 'window'
base.plugins.push(new (webpack.DefinePlugin)('process.env.isMiniprogram': process.env.isMiniprogram))
base.plugins.push(new MpPlugin(MpPluginConfig))

module.exports = base
