public class productwrapper{
    public Productions__c productwrap{get;set;}
	public boolean isSelected{get;set;}



	public productwrapper(Productions__c productwrap)
	{
		this.productwrap= productwrap;
		isSelected=false;
	}
}