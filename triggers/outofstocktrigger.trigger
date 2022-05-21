trigger outofstocktrigger on Orderings__c (before insert) {
    
    List<id> pid = new List<id>();
    for (orderings__c o: trigger.new)
    {
        pid.add(o.product__c);
    }
    List<Productions__c> prd = [select id, Units_available__c from Productions__c where id in :pid];
    for(productions__c pp: prd){
        if(pp.units_available__c ==0){
            pp.addError('Product is out of stock');
        }
    }

}