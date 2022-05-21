public class ordervfcontroller{
     public orderings__c order{get;set;}
     public ordervfcontroller()
     {
        order= new orderings__c();
           
    }
    public void SaveOrder()
    {
        Database.saveResult rs= Database.insert(order,false);
        if(rs.isSuccess())
        {
            ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.INFO,'Order details inserted'));
             order= new orderings__c();
            
        }
        
        else
        {
            List<Database.Error> errs= rs.getErrors();
            for (Database.Error err:errs)
            {
                ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.FATAL, err.getMessage()));
            }
        }
       
       
       
    }
    
    public pagereference CancelOrder()
    {
       order= new orderings__c();
        pagereference p = new pagereference('/apex/mainpagevf');
       return p;
       
    }
    

}