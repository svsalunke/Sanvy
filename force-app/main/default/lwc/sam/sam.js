import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {
  greeting = 'Salunke';
  changeHandler(event) {
    this.greeting = event.target.value;
  }
}