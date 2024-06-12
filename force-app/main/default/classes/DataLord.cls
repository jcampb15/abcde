public with sharing class DataLord {
    public DataLord() {

    }

    public Integer numAccounts(){
        return [SELECT COUNT() FROM Account];
    }

    public Integer NumHot(){
        return [SELECT COUNT() FROM Account WHERE Rating = 'Hot'];
    }

    public Integer NumComplex(){
        return [SELECT COUNT() FROM Account WHERE Name Like '%&%'];
    }

    public List<Account> BigFive(){
        return [SELECT AnnualRevenue FROM Account ORDER BY AnnualRevenue DESC LIMIT 5];
    }

    public Opportunity LastBigOpportunity(){
        return [SELECT CloseDate, Amount FROM Opportunity WHERE Amount > 100000 ORDER BY CloseDate DESC LIMIT 1];
    }

    public List<Contact> MajorPlayers(){
        return [SELECT Account.Rating FROM Contact WHERE Rating = 'Hot'];
    }


    //NOTE TO ETHAN, SKIPPING CHALLANGE VII AND ELITE CHALLANGES
    
    
    // public Account MostPopularAccount(){
    //     return [SELECT Name FROM Account ORDER BY (SELECT Name FROM Contacts)]
    // }


    public List<List<SObject>> query1(){
        return [FIND 'Tom' IN ALL FIELDS RETURNING Contact, Lead];
    }


    public List<List<SObject>> query2(){
        return [FIND '*a*o*' IN ALL FIELDS RETURNING Account];
    }

    //NOTE TO ETHAN, SKIPPING ELITE CHALLANGES

    public void spawnContact(){
        List<Contact> conList = new List<Contact>();
        for(int i = 0; i < 200; i++){
            Contact c = new Contact(Name = 'Contact Number ' + i);
            conList.add(c);
        }

        insert c;
    }

    public void createHomes(){
        List<Account> accList = new List<Account>();
        for(int i = 0; i < 3; i++){
            Account a = new Account(Name = 'Account Number ' + i);
            accList.add(a);
        }

        insert a;
    }

    //NOTE TO ETHAN, SKIPPING CHALLANGES III AND IV AND ELITE CHALLANGES AND MASTER CHALLANGE

}
