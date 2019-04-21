<template>
<ul id="example-1">
  <li v-for="item in listaDeCompras">
    <input type="checkbox">{{ item.nome }}</input>
  </li>
</ul>
</template>

<script src="./script.js"></script>
<style scoped src="./style.css"></style>