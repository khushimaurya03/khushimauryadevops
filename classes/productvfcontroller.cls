public class productvfcontroller {
     public Productions__c product{set;get;}
   
    public productvfcontroller(){
        
        product= new Productions__c();
        
           
    }
    
    
        
    public void SaveProduct()
    {
        Database.upsertResult rs= Database.upsert(product,false);
        if(rs.isSuccess())
        {
            ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.INFO,'Product details inserted'));
            product= new Productions__c();
            
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
    
    public pagereference CancelProduct()
    {
       product= new productions__c();
        pagereference p = new pagereference('/apex/mainpagevf');
       return p;
       
    }
    

}