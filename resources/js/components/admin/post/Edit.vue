<template>
    <div id="editPost">
        <section class="content">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Update Post</h3>
                            <div class="card-tools">
                                <button>
                                    <router-link to="/post-list" class="btn btn-success">Post list</router-link>
                                </button>
                            </div>
                        </div>
                        <!-- /.card-header -->
                        <div class="col-md-8 align-self-center">
                            <!-- general form elements -->
                            <div class="card card-success">
                                <div class="card-header"></div>
                                <!-- /.card-header -->
                                <!-- form start -->
                                <form role="form" enctype="multipart/form-data" @submit.prevent="updatePost()">
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="postId">Post title</label>
                                            <input type="text" class="form-control" id="postId" placeholder="Enter your title" v-model="form.title" name="title" :class="{ 'is-invalid': form.errors.has('title') }">
                                            <has-error :form="form" field="title"></has-error>
                                        </div>
                                        <div class="form-group">
                                            <label>Category name</label>
                                            <select class="form-control" :class="{ 'is-invalid': form.errors.has('cat_id') }" v-model="form.cat_id">
                                                <option disabled value="">Select Category</option>
                                                <option :value="category.id" v-for="category in getallCategory">{{category.cat_name}}</option>
                                            </select>
                                            <has-error :form="form" field="cat_id"></has-error>
                                        </div>
                                        <div class="form-group">
                                            <label for="descriptionId">Post description</label>
                                            <markdown-editor v-model="form.description"></markdown-editor>
                                            <has-error :form="form" field="description"></has-error>
                                        </div>
                                        <div class="form-group">
                                            <label>Image</label><br>
                                            <input @change = "changePhoto($event)" name="photo" type="file" :class="{ 'is-invalid': form.errors.has('photo') }">
                                            <img :src="updateImage()" alt="" width="80" height="80">
                                            <has-error :form="form" field="photo"></has-error>
                                        </div>
                                    </div>
                                    <!-- /.card-body -->
                                    <div class="card-footer">
                                        <button type="submit" class="btn btn-primary">Save</button>
                                    </div>
                                </form>
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
        name: 'editPost',
        data(){
            return {
                form: new Form({
                    title:'',
                    cat_id:'',
                    description:'',
                    photo:'',
                })
            }
        },
        created(){
            axios.get(`/edit-post/${this.$route.params.postid}`)
            .then((response)=>{
                this.form.fill(response.data.post)
            })
        },
        mounted(){
            this.$store.dispatch("allCategory")
        },
        computed:{
            getallCategory(){
                return this.$store.getters.getCategory
            }
        },
        methods: {
            changePhoto(event){
                let file = event.target.files[0];
                if(file.size>1048576){
                    swal({
                        type: 'error',
                        title: 'Oops...',
                        text: 'Something went wrong!',
                        footer: '<a href>Why do I have this issue?</a>'
                    })
                }else{
                    let reader = new FileReader();
                    reader.onload = event => {
                        this.form.photo = event.target.result
                        console.log(event.target.result)
                    };
                    reader.readAsDataURL(file);
                }
            },
            updatePost(){
                this.form.post(`/update-post/${this.$route.params.postid}`)
                .then(()=>{
                    this.$router.push('/post-list')
                    toast.fire({
                        type: 'success',
                        title: 'Post updated successfully'
                    })
                })
                .catch(()=>{

                })
            },
            updateImage(){
                let img = this.form.photo;
                if(img.length>100){
                    return  this.form.photo
                }else{
                    return `uploadimage/${this.form.photo}`
                }
            }
        }
    }
</script>
