<template>
    <div id="post">
        <section class="content">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Post List</h3>
                            <div class="card-tools">
                                <button>
                                    <router-link to="/add-post" class="btn btn-success">New</router-link>
                                </button>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-12">
                                    <table id="example2" class="table table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <th>Sl</th>
                                                <th>Uaser</th>
                                                <th>Category name</th>
                                                <th>Title</th>
                                                <th>Description</th>
                                                <th>Image</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr v-for="(post,index) in getallPost" :key="post.id">
                                                <td>{{ index+1 }}</td>
                                                <td v-if="post.user">{{post.user.name}}</td>
                                                <td v-if="post.category">{{post.category.cat_name}}</td>
                                                <td>{{ post.title | sortlength(20,"....") }}</td>
                                                <td>{{ post.description | sortlength(40,"....") }}</td>
                                                <td>
                                                    <img :src="ourImage(post.photo)" alt="" width="40" height="50">
                                                </td>
                                                <td>
                                                    <router-link :to="`edit-post/${post.id}`">Edit</router-link> ||
                                                    <a href="#" @click.prevent = "deletePost(post.id)">Delete</a>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</template>
<script>
export default {
    name: 'post',
   
    mounted() {
        this.$store.dispatch("getAllPost")
    },
    computed:{
        getallPost(){
            return this.$store.getters.getPost
        }
    },
    methods:{
        ourImage(img){
            return "uploadimage/"+img;
        },
        deletePost(id){
            // console.log(id)
            axios.get('/delete-post/' + id)
            .then((response)=>{
                this.$store.dispatch("getAllPost")
                toast.fire({
                    type: 'success',
                    title: 'Post deleted successfully'
                })
            })
            .catch(()=>{

            })
        }
    }
}
</script>
