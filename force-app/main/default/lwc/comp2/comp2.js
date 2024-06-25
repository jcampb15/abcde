import { LightningElement, wire } from 'lwc';
import findAccounts from '@salesforce/apex/compExample.findAccounts';
export default class Comp2 extends LightningElement {

    accName;
    accounts;

    columns = [
        {label: 'Accounts', fieldName: 'Accounts', type: 'text'}
    
    ];
    findAccounts(){
        let accName = this.template.querySelector('.accName').value;
        findAccounts({accName : this.accName})
        .then((res) => {
            this.accounts = res;
        })

    }
}