import bus from '../bus';
import Vue from 'vue';

export default {
  name: 'ListaDeCompras',
  data() {
    return {
      novoItem: null,
      listaDeCompras: [{"nome": "pão"}, {"nome": "detergente"}, {"nome": "absorvente"}]
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