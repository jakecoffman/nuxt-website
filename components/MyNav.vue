<template>
  <div class="nav">
    <ul>
      <li>
        <nuxt-link to="/">
          Intro
        </nuxt-link>
      </li>
      <li>
        <nuxt-link to="/projects">
          Projects
        </nuxt-link>
      </li>
      <li>
        <nuxt-link to="/qa">
          Q&A
        </nuxt-link>
      </li>
      <li>
        <a href="https://www.jakecoffman.com/blog">
          Blog
        </a>
      </li>
      <li v-if="!mini">
        <a href="https://twitter.com/nill" target="_blank">
          @nill on Twitter
        </a>
      </li>
      <li v-if="!mini">
        <a href="https://github.com/jakecoffman" target="_blank">
          jakecoffman on Github
        </a>
      </li>
    </ul>
  </div>
</template>
<script>
export default {
  props: {
    mini: Boolean
  }
}
</script>
<style lang="scss" scoped>
  @import '../scss/_variables';

  .nuxt-link-exact-active {
    color: $accent;
  }
</style>
