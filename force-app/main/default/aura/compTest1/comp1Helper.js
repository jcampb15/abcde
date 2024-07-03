({
    parentHelper : function(component, event) {
        var message = event.getParam("inputData");
        component.set("v.inputMessage", message); 
    }
})
