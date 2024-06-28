trigger conTrigger on Contact (before insert) {
    //not best practice, but I thought there would only be one
    //method for contact until I read challange 4
    if(trigger.isBefore && trigger.isInsert){
        List<Contact> conList = new List<Contact>();
        for(Contact con : trigger.new){
            //not sure how to check for as blank email, but you get the idea
            if(con.Email == '' || con.Email == null){
                con.Email = 'defaultemails678890@defaultemails.com';
                conList.add(con);
            }
        }

        insert conList;
    }

    //the idea here is that the contact we are using already has access to its related
    //account, so we just go into said account and set its phone to the contact's phone
    if(trigger.isBefore && trigger.isUpdate){
        List<Contact> conList = trigger.new;
        for(Contact c : conList){
            c.Phone = c.Account.Phone;
        }
        update conList;
    }


}