# 配置参考：https://wechat-miniprogram.github.io/kbone/docs/config/

module.exports =
  origin: 'https://kbone-test.aceeca1.win'
  entry: '/'
  router: home: '*'
  redirect:
    notFound: 'home'
    accessDenied: 'home'
  generate: autoBuildNpm: 'yarn'
  app:
    backgroundTextStyle: 'dark'
    navigationBarTextStyle: 'white'
    navigationBarTitleText: '标题'
  global:
    share: true
    windowScroll: false
    backgroundColor: '#F7F7F7'
  pages: {}
  optimization:
    domSubTreeLevel: 10
    elementMultiplexing: true
    textMultiplexing: true
    commentMultiplexing: true
    domExtendMultiplexing: true
    styleValueReduce: 5000
    attrValueReduce: 5000
  projectConfig:
    projectname: 'kbone-test'
    appid: 'wx84c4bfea9ed06029'
