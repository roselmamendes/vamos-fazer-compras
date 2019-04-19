<template>
	<form v-on:submit.prevent="onSubmit">
	  <input type="text" v-model="item" placeholder="Precisa comprar" />
	  <button type="submit">Adicionar!</button>
	</form>
</template>

<script src="./script.js"></script>
<style scoped src="./style.css"></style>