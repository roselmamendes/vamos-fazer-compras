import bus from '../bus';

export default {
  name: 'CampoParaInformarItem',
  data() {
    return {
      item: '',
    }
  },
  methods: {
    onSubmit(event) {
      if (this.item && this.item !== '') {
      	bus.$emit('novo-item', this.item);
      }
    }
  }
}