<template>
  <section class="section" id="app">
    <div class="content">
      <div class="columns">
        <div class="column">
          <img
            style="
              width: 432px;
              height: 587px;
              margin-left: 15%;
              margin-right: 15%;
            "
            :src="image(movie.img_movie)"
          />
        </div>
        <div class="column is-6 level-right">
          <div class="title">
            <p class="title has-text-white">{{ movie.m_name }}</p>
          </div>
          <hr />
          <div class="detail">
            <p class="has-text-white has-text-justified">
              {{ movie.plot }}
            </p>
            <table
              class="table is-bordered has-background-black has-text-white"
            >
              <tr>
                <td>Release Date</td>
                <td>{{ movie.release_date }}</td>
              </tr>
              <tr>
                <td>Director</td>
                <td>{{ movie.director }}</td>
              </tr>
              <tr>
                <td>Cast</td>
                <td>
                  {{ movie.actors }}
                </td>
              </tr>
            </table>
          </div>
        </div>
      </div>
      <div class="column m-5">
        <p class="title has-text-white">รอบฉาย</p>
        <div class="field level-right">
          <div class="control">
          <router-link :to="`/AddShow/${movie.m_id}`" v-if="isAdmin()">
            <button class="button is-warning">
              <strong>Add Show</strong>
            </button>
            </router-link>
            <span v-if="editShow == false && isAdmin()" >
            <button class="button is-danger ml-5" @click="checkEditShow()"><strong>Edit Show</strong></button>
            </span>
            <span v-else-if="editShow == true && isAdmin()">
            <button class="button is-info ml-5" @click="CancelEditShow()"><strong>Cancel</strong></button>
            </span>
          </div>
        </div>
        <table class="table is-bordered has-background-danger-dark has-text-white">
          <tr>
            <td>Theatre</td>
            <td>Date</td>
            <td>Start</td>
            <td>End</td>
            <td>Language</td>
            <td>Link</td>
          </tr>
          <tr v-for="show in show" :key="show.show_id " class="has-background-danger-light has-text-black">
            <td>{{ show.tname }}</td>
            <td>{{ show.show_date }}</td>
            <td>{{ show.st_time }}</td>
            <td>{{ show.end_time }}</td>
            <td>{{ show.language }}</td>
            <td>
            <div v-if="editShow == false">
              <router-link :to="`/show/${show.show_id}`"
                ><button class="button is-success">
                  <span>Click</span>
                </button></router-link>
              </div>
              <span v-else>
                <router-link :to="`/edit/show/${show.show_id}`" >
                  <button class="button is-warning ml-2" @click="EditShow(show.show_id)"><span>Edit</span></button>
                </router-link>
                <button class="button is-danger ml-2" @click="DeleteShow(show.show_id)"><span>Delete</span></button>
              </span>
            </td>
          </tr>
          <tr v-if="show.length == 0" class="has-background-danger-light has-text-black">
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
            <td>-</td>
          </tr>
        </table>
      </div>
    </div>
  </section>
</template>
<script>
import axios from "@/plugins/axios";
export default {
  name: "app",
  props: ["user"],
  data() {
    return {
      movie: [],
      show: [],
      editShow: false,
    };
  },
  mounted() {
    window.scrollTo(0, 0)
    this.getMovieDetail(this.$route.params.id);
  },
  methods: {
    getMovieDetail(id) {
      axios
        .get(`http://localhost:3000/movies/detail/${id}`)
        .then((response) => {
          this.movie = response.data.moviedetail[0];
          this.show = response.data.show;
          this.movie.release_date = new Date(this.movie.release_date).toDateString()
  
          for (var i = 0; i < this.show.length; i++) {
            this.show[i].show_date = new Date(this.show[i].show_date).toDateString()
          }
        })
        .catch((err) => {
          console.log(err);
        });
    },
    image(file_path){
        if (file_path) {
        return "http://localhost:3000/" + file_path;
      } else {
        return "https://bulma.io/images/placeholders/640x360.png";
      }
    },
    isAdmin(){
      if (!this.user) return false
      return this.user.role == 'admin'
    },
    isCusto(){
      if (!this.user) return false
      return this.user.role == 'customer'
    },
    checkEditShow() {
      this.editShow = true
    },
    CancelEditShow() {
      this.editShow = false
    },
    DeleteShow(id) {
      const result = confirm('Are you sure you want to delete this show ?');
      if (result){
        axios
        .delete(`http://localhost:3000/show/delete/${id}`)
        .then((response) => {
          this.getMovieDetail(this.$route.params.id);
          this.editShow = false
          console.log(response)
        })
        .catch((error) => {
          alert(error.response.data.message)
        });
      }
    }
  },
};
</script>