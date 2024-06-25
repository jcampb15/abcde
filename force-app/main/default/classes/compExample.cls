public with sharing class compExample {
    public compExample() {

    }

    @AuraEnabled(cacheable=true)
    public static List<Account> findAccounts(String accName){
        try {
            String sanitizedAcc = String.escapeSingleQuotes(accName);
            String accQ = '%' + accName +  '%';
            return [SELECT Name FROM Account WHERE Name LIKE :accq];
        } catch (Exception e) {
            throw new AuraHandledException(e.getMessage());
        }
    }
}