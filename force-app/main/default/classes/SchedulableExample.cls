global with sharing class SchedulableExample implements Schedulable {
    global void execute(SchedulableContext sc) {
        BatchableExample b = new BatchableExample(); 
        Database.executeBatch(b);
     }
}