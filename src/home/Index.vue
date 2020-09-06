<template lang="pug">
div
  p 计数器: {{ count }}
  button(@click="addCount") 点击增加计数
</template>

<script lang="coffee">
export default {
  data: ->
    count: 0
  methods: 
    addCount: -> @count += 1
}
</script>

<style lang="stylus"></style>
