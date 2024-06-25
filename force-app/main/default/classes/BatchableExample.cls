public with sharing class BatchableExample implements Database.Batchable<SObject> {
    public BatchableExample() {

    }

    public Database.QueryLocator start(Database.BatchableContext BC){
        return Database.getQueryLocator('SELECT AccountId, StageName FROM Opportunity WHERE LastModifiedDate > LAST_N_MONTHS:6');
     }
  
     public void execute(Database.BatchableContext BC, List<sObject> opps){

        List<Account> accList = new List<Account>();
        for(Sobject o : opps){

            Opportunity opp = (Opportunity) o;

            if (opp.StageName != 'Closed Won' || opp.StageName != 'Closed Lost'){
                o.addError('cannot delete');
            }
            Account a =  new Account();
            a.Id = opp.AccountId;
            accList.add(a);
        }      
        
        delete accList;
     }
  
     public void finish(Database.BatchableContext BC){}
}