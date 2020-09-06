import Vue from 'vue'
import { sync } from 'vuex-router-sync'
import App from './App.vue'
import router from './router'
import store from './store'

export default function createApp() {
  const container = document.createElement('div')
  container.id = 'app'
  document.body.appendChild(container)

  sync(store, router)

  return new Vue({
    el: '#app',
    router,
    store,
    render: (h) => h(App)
  })
}
