require('./bootstrap');
window.Vue = require('vue');

// Support editor
import 'v-markdown-editor/dist/index.css';
import Editor from 'v-markdown-editor'
// global register
Vue.use(Editor);
// Support editor

// Support vuex
import Vuex from 'vuex'
Vue.use(Vuex)

import storeData from "./store/index"
const store = new Vuex.Store(
    storeData
)
//Vuex

import VueRouter from 'vue-router'
Vue.use(VueRouter)
import {routes} from './routes';

// Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('admin-main', require('./components/admin/adminMaster.vue').default);
Vue.component('home-main', require('./components/public/PublicMaster.vue').default);


//support moment js
import {filter} from './filter'

//form 
import { Form, HasError, AlertError } from 'vform'
window.Form = Form;
Vue.component(HasError.name, HasError)
Vue.component(AlertError.name, AlertError)

//form

// ES6 Modules or TypeScript
import swal from 'sweetalert2'
window.swal = swal;

const toast = swal.mixin({
  toast: true,
  position: 'top-end',
  showConfirmButton: false,
  timer: 3000
});

window.toast = toast;

const router = new VueRouter({
  routes, // short for `routes: routes`
  // mode: 'history'
  mode: 'hash'
})

const app = new Vue({
    el: '#app',
    router,
    store,
});
