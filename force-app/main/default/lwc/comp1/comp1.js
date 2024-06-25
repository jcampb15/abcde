import { LightningElement, wire } from 'lwc';
import findAccounts from '@salesforce/apex/compExample.findAccounts';
export default class Comp1 extends LightningElement {
    
   accName;

   columns = [
    {label: 'Accounts', fieldName: 'Accounts', type: 'text'}

];
    setAccName(){
        let accName = this.template.querySelector('.accName').value;
        this.displayAccounts;
    }

    @wire(findAccounts,{accName: '$accName'})
    displayAccounts;

}