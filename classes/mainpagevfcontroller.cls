//i am a comment too
public class mainpagevfcontroller {
    
    public List<Productions__c> product{set;get;}
    public List<orderings__c> order{set;get;}
   
    public mainpagevfcontroller()
    {
        product=  [Select Name, list_of_Category__c, list_of_Brands__c, Cost__c, Units_Available__c from Productions__c];
        order = [select Name, Customer_Name__c, email__c,address__c, phone__c, Product__c, Order_date__c, quantity__c, gst_number__c, status__c from orderings__c ];
    }
   
    public pagereference addProductLink()
    {
       
        pagereference p = new pagereference('/apex/productvf');
       return p;
       
    }
   
   
     public pagereference EditOrDeleteproductLink()
    {
       
        pagereference p = new pagereference('/apex/Editproductvf');
       return p;
       
    }
    public pagereference addOrderLink()
    {
       
        pagereference p = new pagereference('/apex/Ordervf');
       return p;
       
    }
   
   
     public pagereference EditOrDeleteOrderLink()
    {
       
        pagereference p = new pagereference('/apex/EditOrdervf');
       return p;
       
    }

}