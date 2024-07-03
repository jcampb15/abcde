({
    helperLogic : function(component, evet) {
        var inputEvt = component.getEvent("inputEvent");
        inputEvt.setParams({inputData : component.get("v.textInput")});
        inputEvt.fire();
    }
})
