package org.apache.flex.packageflexsdk.model
{
	[Bindable]
	public class OptionalComponentVO
	{
		public var label:String;
		public var message:String;
		public var required:Boolean;
		public var selected:Boolean;
		public var installed:Boolean=false;
		public var aborted:Boolean=false;
		public var answered:Boolean = false;
		
		public function OptionalComponentVO(label:String,message:String,required:Boolean,selected:Boolean=false,installed:Boolean=false,aborted:Boolean=false,answered:Boolean=false)
		{
			this.label = label;
			this.message = message;
			this.required = required;
			this.selected = selected;
			this.installed = installed;
			this.aborted = aborted;
			this.answered = answered;
		}
	}
}