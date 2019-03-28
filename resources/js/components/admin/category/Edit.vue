<template>
    <div id="catNew">
        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">Edit Category</h3>
                            <div class="card-tools">
                                <button>
                                    <router-link to="/category-list" class="btn btn-success">Category list</router-link>
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
                                <form role="form" @submit.prevent="updateCategory()">
                                    <div class="card-body">
                                        <div class="form-group">
                                            <label for="categoryId">Category name</label>
                                            <input type="text" class="form-control" id="categoryId" placeholder="Add New Category" v-model="form.cat_name" name="cat_name" :class="{ 'is-invalid': form.errors.has('cat_name') }">
                                            <has-error :form="form" field="cat_name"></has-error>
                                        </div>

                                    </div>
                                    <!-- /.card-body -->
                                    <div class="card-footer">
                                        <button type="submit" class="btn btn-primary">Update</button>
                                    </div>
                                </form>
                            </div>
                            <!-- /.card -->
                        </div>
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </section>
        <!-- /.content -->
    </div>
</template>

<script>
export default {
    name: 'catNew',
    mounted() {
        axios.get(`/editcategory/${this.$route.params.categoryid}`)
        .then((response)=>{
            this.form.fill(response.data.category)
        })
    },
    data(){
        return {
            form: new Form({
                cat_name:''
            })
        }
    },
    methods: {
        updateCategory(){
             this.form.post(`/update-category/${this.$route.params.categoryid}`)
            .then((response)=>{
                this.$router.push('/category-list')
                toast.fire({
                    type: 'success',
                    title: 'Category Updated successfully'
                })
            })
            .catch(()=>{

            })
        }
    }


}
</script>