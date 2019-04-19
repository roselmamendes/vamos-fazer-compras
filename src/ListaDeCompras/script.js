import bus from '../bus';
import Vue from 'vue';

export default {
  name: 'ListaDeCompras',
  data() {
    return {
      novoItem: null,
      listaDeCompras: []
    }
  },
   created() {
    bus.$on('novo-item', this.onNovoItem)
  },
  methods: {
  novoItem(item) {
    this.novoItem = item
  }
	},
}