public with sharing class BatchableExample implements Database.Batchable<SObject> {
    public BatchableExample() {

    }

    public Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator('SELECT AccountId FROM Opportunity WHERE isClosed = false AND LastModifiedDate < LAST_N_MONTHS:6');
     }
  
     public void execute(Database.BatchableContext BC, List<sObject> opps){

        List<Account> accList = new List<Account>();
        for(Sobject o : opps){
            Opportunity opp = (Opportunity) o;
            Account a =  new Account();
            a.Id = opp.AccountId;
            accList.add(a);
        }      
        
        delete accList;
     }
  
     public void finish(Database.BatchableContext BC){}
}