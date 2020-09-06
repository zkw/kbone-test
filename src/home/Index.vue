<template lang="pug">
div
  v-chip.ma-2(color="primary" text-color="white") 计数器: {{ count }}
  v-btn.ma-2(color="error" @click="addCount") 点击增加计数
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
