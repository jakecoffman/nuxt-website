<template>
  <div id="app">
    <header>
      <a class="jakecoffman" href="https://jakecoffman.com">jakecoffman.com</a>
      <div class="grow" />
      <my-nav :mini="true" />
    </header>

    <nav class="hide-small">
      <div class="nav-inners">
        <div class="face">
          <img alt="Jake Coffman" src="../assets/logo.png" class="logo">
          <div class="facetext">
            <em>Software Developer</em>
            <span>Web, Android, Games</span>
          </div>
        </div>

        <my-nav />
      </div>
    </nav>

    <main class="backdrop-paper">
      <transition name="page" mode="out-in">
        <nuxt />
      </transition>
    </main>

    <aside />
  </div>
</template>
<script>
import MyNav from '@/components/MyNav'

export default {
  components: {
    MyNav
  }
}
</script>
<style lang="scss">
  @import '../scss/_variables';

  html, body {
    margin: 0;
    font-family: Roboto,sans-serif;
  }

  a, a :hover, a :visited {
    color: black;
    text-decoration: none;
  }

  a :hover {
    color: $accent;
  }

  #app {
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;

    display: grid;
    grid-template-rows: 2rem 1fr 2rem;
    grid-template-columns: 262px 1fr;
    height: 100vh;
  }

  header {
    grid-column-start: 1;
    grid-column-end: 3;

    display: flex;
    align-items: center;
    ul {
      display: flex;
      list-style: none;
      margin: 0;
      padding: 0;
      li {
        margin-left: 0.5rem;
      }
    }

    background: $primary;
    color: white;
    padding: 0.5rem;
    height: 1.5rem;
    z-index: 3;

    a, a :hover, a :visited {
      text-decoration: none;
      color: white;
    }

    .router-link-exact-active {
      color: $accent;
    }
  }

  nav {
    padding-top: 2rem;
    background: #eeeeee;
    ul {
      list-style: none;
      li {
        padding-bottom: 1rem;
      }
    }
    height: 100%;
    transition: 1s;
  }

  @media (max-width: $breakpoint) {
    #app {
      grid-template-columns: 1fr;
    }
    .hide-small {
      display: none;
    }
  }

  main {
    padding: 1rem;
    font-size: large;
    height: 100%;
  }

  .face {
    display: flex;
    padding: 1rem;
    font-size: smaller;
  }

  .facetext {
    padding-left: 1rem;
    display: flex;
    flex-direction: column;
    justify-content: center;
    em {
      font-style: normal;
      font-weight: bolder;
    }
  }

  .logo {
    display: block;
    width: 64px;
    height: 64px;
    border-radius: 100%;
  }

  .backdrop-paper {
    box-shadow: 0 1.5px 3px rgba(0, 0, 0, .24), 0 3px 8px rgba(0, 0, 0, .05)
  }

  h1 {
    color: $accent;
  }

  h2 {
    color: $primary;
  }

  h3 {
    color: $primary;
  }

  .router-link-exact-active {
    color: $primary;
  }

  .nav-inners {
    position: fixed;
  }

  .grow {
    flex-grow: 1;
  }

  .page-enter-active, .page-leave-active {
    transition-duration: 0.1s;
    transition-property: opacity;
    transition-timing-function: ease;
  }

  .page-enter, .page-leave-active {
    opacity: 0
  }

  .jakecoffman {
    margin-left: 1rem;
  }

</style>
