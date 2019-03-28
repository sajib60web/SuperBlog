// BackEnd Component
import adminHome from './components/admin/adminHome.vue'
import CategoryList from './components/admin/category/List.vue'
import catNew from './components/admin/category/New.vue'
import catEdit from './components/admin/category/Edit.vue'
import Post from './components/admin/post/List.vue'
import addPost from './components/admin/post/New.vue'
import editPost from './components/admin/post/Edit.vue'

// FrontEnd Component
import PublicHome from './components/public/PublicHome.vue'
import BlogPost from './components/public/blog/BlogPost.vue'
import SinglePost from './components/public/blog/Singleblog.vue'

export const routes = [
  	{
  	  path: '/home',
  	  name: 'adminHome',
  	  component: adminHome
	},

  // Category
  
	{
  	  path: '/category-list',
  	  name: 'CategoryList',
  	  component: CategoryList
	},

	{
  	  path: '/add-category',
  	  name: 'catNew',
  	  component: catNew
	},

  {
      path: '/edit-category/:categoryid',
      name: 'catEdit',
      component: catEdit
  },

  // Post

	{
  	    path: '/post-list',
  	    name: 'post',
  	    component: Post
	},

    {
        path: '/add-post',
        name: 'addPost',
        component: addPost
    },

    {
        path: '/edit-post/:postid',
        name: 'editPost',
        component: editPost
    },

	// {
 //  	  path: '/logout',
 //  	  name: 'logout',
 //  	  component: logout
	// },

    // Frontend Route
    {
        path:'/',
        name: 'PublicHome',
        component:PublicHome
    },

    {
        path:'/blog',
        name: 'BlogPost',
        component:BlogPost
    },

    {
        path: '/blog-details/:id',
        name: 'SinglePost',
        component: SinglePost
    },

    {
        path: '/categories/:id',
        name: 'BlogPost',
        component: BlogPost
    },

];
