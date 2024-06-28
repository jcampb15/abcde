trigger AccTrigger on Account (before delete, before insert) {

    switch on Trigger.OperationType {
        when BEFORE_DELETE  {
            AccTriggerHelper.deleteHelper(Trigger.old);
        }

        when BEFORE_INSERT{
            AccTriggerHelper.insertHelper(Trigger.new);
        }
        when else {
            
        }
    }
}