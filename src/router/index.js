import Vue from 'vue'
import Router from 'vue-router'

import Home from '../home/Index.vue'

Vue.use(Router)

export default new Router({
  mode: 'history',
  routes: [{
    path: '/(home|index)?',
    name: 'Home',
    component: Home,
  }, {
    path: '/index.html',
    name: 'HomeHtml',
    component: Home,
  }, {
    path: '/test/(home|index)',
    name: 'HomeTest',
    component: Home,
  }],
})
