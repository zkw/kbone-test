import Vue from 'vue'
import App from './App.vue'
import router from './router.coffee'

export default ->
  container = document.createElement('div')
  container.id = 'app'
  document.body.appendChild(container)
  new Vue(
    el: '#app',
    router: router,
    render: (h) -> h(App)
  )
