import Vue from 'vue'
import Vuetify from 'vuetify/lib'
import App from './App.vue'
import router from './router.coffee'

Vue.use(Vuetify)

export default ->
  container = document.createElement('div')
  container.id = 'app'
  document.body.appendChild(container)
  new Vue(
    el: '#app',
    router: router,
    render: (h) -> h(App)
    vuetify: new Vuetify
  )
