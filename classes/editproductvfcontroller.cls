public class editproductvfcontroller {
   
    public Productions__c product{get;set;}
	public List<Productions__c> prod{get;set;}
	public List<productwrapper> lstWrap{get;set;}
	public string recordId{get;set;}
	
	
   
public Editproductvfcontroller(){
product = new Productions__c();
lstWrap=new List<Productwrapper>();
loadProd();
}
   
public void loadProd(){
prod = [select name, Product_Approval_Status__c,list_of_category__c, Cost__c,list_of_Brands__c from Productions__c];
lstWrap.clear();
for(Productions__c p : prod){
productwrapper w = new productwrapper(p);
lstWrap.add(w);
}
}
   
public void doEdit(){
product = [select name,product_Approval_Status__c,Cost__c,list_of_Brands__c,list_of_category__c from Productions__c where id=:recordId];

}
  public pagereference doDelete(){
List<Productions__c> ProductToBeDeleted =new List<Productions__c>();
for(productwrapper pw : lstWrap){
if(pw.isSelected){
ProductToBeDeleted.add(pw.productwrap);
}
}
  Delete ProductToBeDeleted;
      pagereference p = new pagereference('/apex/mainpagevf');
       return p;
}



}