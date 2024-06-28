public with sharing class AccTriggerHelper {
    public AccTriggerHelper() {

    }

    public static void deleteHelper(List<Account> accList){
        for (Account acc : accList){
            if(acc.Contacts.size() >0){
                acc.addError('Contains contacts, cannot Delete');
            }
        }
    }

    public static void insertHelper(List<Account> accList){
        List<Contact> conList = new List<Contact>();
        Integer count = 1;
        for(Account acc : accList){
            Contact c = new Contact(LastName = 'contact ' + count, AccountId = acc.Id);
            conList.add(c);
            count++;
        }

        insert conList;
    }
}