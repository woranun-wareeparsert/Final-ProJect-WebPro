<template>
  <div :style="myStyle" id="wrapper">
    <nav 
      class="navbar has-background-white-ter"
      role="navigation"
      aria-label="main navigation"
    >
      <div class="navbar-brand" v-if="user">
        <a class="navbar-item" href="/">
          <img
            src="https://media.discordapp.net/attachments/953696113448337498/968576596250357790/logo.png"
            width="30"
            height="100"
          />
        </a>
        <a
          role="button"
          class="navbar-burger"
          aria-label="menu"
          aria-expanded="false"
          data-target="navbarBasicExample"
        >
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>
          <span aria-hidden="true"></span>
        </a>
      </div>
      <div id="navbarBasicExample" class="navbar-menu" v-if="user">
        <div class="navbar-start m-1">
          <router-link to="/"
            ><a class="navbar-item is-size-4 ml-5 has-background-white-ter has-text-danger">
              <strong>Home</strong>
            </a></router-link>
          <router-link to="/movies"
            ><a class="navbar-item is-size-4 ml-5 has-background-white-ter has-text-danger">
              <strong>Movie</strong>
            </a></router-link>
          <router-link v-if="isCusto()" :to="`/profile/${user.cid}`"
            ><a class="navbar-item is-size-4 ml-5 has-background-white-ter has-text-danger">
              <strong>Profile</strong>
            </a></router-link>
          <router-link v-if="isCusto()" :to="`/profile/myorder/${user.cid}`"
            ><a class="navbar-item is-size-4 ml-5 has-background-white-ter has-text-danger">
              <strong>My Order</strong>
            </a></router-link>
          <router-link v-if="isAdmin()" :to="`/add/movies`"
            ><a class="navbar-item is-size-4 ml-5 has-background-white-ter has-text-danger">
              <strong>Add Movie</strong>
            </a></router-link>
          <router-link v-if="isAdmin()" :to="`/AddShow/1`"
            ><a class="navbar-item is-size-4 ml-5 has-background-white-ter has-text-danger">
              <strong>Add Show</strong>
            </a></router-link>
           <router-link v-if="isAdmin()" :to="`/customer`"
            ><a class="navbar-item is-size-4 ml-5 has-background-white-ter has-text-danger">
              <strong>Customer</strong>
            </a></router-link>
        </div>
        <div class="navbar-end has-background-white-ter">
                   <div v-if="user" class="navbar-item has-dropdown is-hoverable has-background-white-ter">
            <a class="navbar-link has-background-white-ter">
              <figure class="image is-24x24 my-auto">
                <img
                  class="is-rounded"
                  src="https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Circle-icons-profile.svg/2048px-Circle-icons-profile.svg.png"
                />
              </figure>
              <span class="pl-3 has-text-danger has-background-white-ter"
                >{{ user.email_id }}</span
              >
            </a>
            <div class="navbar-dropdown has-background-white-ter">
              <router-link v-if="isCusto()" :to='`/profile/${user.cid}`'><a class="navbar-item has-background-white-ter has-text-danger">Profile</a></router-link>
              <router-link v-if="isCusto()" :to='`/profile/myorder/${user.cid}`'><a class="navbar-item has-background-white-ter has-text-danger">My Order ({{orderLength}})</a></router-link>
              <a @click="logout()" class="navbar-item has-background-white-ter has-text-danger">Log out</a>
            </div>
          </div>
        </div>
      </div>
    </nav>
    <div id="app">
      <router-view :key="$route.fullPath" @auth-change="onAuthChange" :user="user"/>
    </div>
  </div>
</template>

<script>
import axios from '@/plugins/axios'
export default {
  data() {
    return {
      user: null,
      order: null,
      orderLength: '',
      myStyle: {
      },
    };
  },
   mounted() {
    this.onAuthChange();
  },
  methods: {
    getOrderAndTicket(id){
      axios.get(`/order/ticket/${id}`)
        .then((res) => {
          this.order = res.data.order;
          var getOrder = res.data.order
          this.orderLength = getOrder.length
        });
    },
    onAuthChange() {
      const token = localStorage.getItem("token");
      if (token) {
        this.getUser();
      }
    },
    getUser() {
      axios.get("/user/me")
        .then((res) => {
          this.user = res.data;
          this.getOrderAndTicket(this.user.cid)
          console.log(this.user.role)
        });
    },
    logout(){
      this.user = null,
      localStorage.removeItem("token");
      this.$router.push({path: '/user/login'})
    },
    isAdmin(){
      if (!this.user) return false
      return this.user.role == 'admin'
    },
    isCusto(){
      if (!this.user) return false
      return this.user.role == 'customer'
    }
  },
};
</script>

<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+Thai:wght@300&family=Prompt:wght@200;300;500&display=swap');
#app {
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
  font-family: 'Noto Sans Thai', sans-serif;
  font-family: 'Prompt', sans-serif;
}
#wrapper {
  width: auto;
  height: 100%;
  background-color: black;
  background-image: linear-gradient(rgb(0, 0, 0), rgb(1, 35, 37), rgb(0, 0, 0));
  height: 100%;
}
*{
  font-family: 'Noto Sans Thai', sans-serif;
  font-family: 'Prompt', sans-serif;
}
.listmovie:hover{
  transform: scale(1.03);
  transition: 0.3s;
}
</style>
