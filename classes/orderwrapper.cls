public class orderwrapper{
	public Orderings__c orderwrap{get;set;}
	public boolean isSelected{get;set;}



	public orderwrapper(Orderings__c orderwrap)
    {
		this.orderwrap= orderwrap;
		isSelected=false;
}
}