package ws.tink.spark.controls
{
	import flash.events.Event;
	
	import mx.events.PropertyChangeEvent;
	
	import spark.components.DataRenderer;
	import spark.components.IItemRenderer;
	
	public class StepRendererBase extends DataRenderer implements IItemRenderer
	{
		public function StepRendererBase()
		{
			super();
		}
		
		private var _itemIndex:int;
		[Bindable("itemIndexChanged")]
		public function get itemIndex():int
		{
			return _itemIndex;
		}
		
		public function set itemIndex(value:int):void
		{
			if( _itemIndex == value ) return;
			_itemIndex = value;
			dispatchEvent(new Event("itemIndexChanged"));
		}
		
		private var _stateColor:Number;
		[Bindable(type="currentStateChange")]
		public function get stateColor():Number { return _stateColor; }
		
		
		
		override public function set data(value:Object):void
		{
			super.data = value;
			
			invalidateProperties();
		}
		
		override public function setCurrentState(stateName:String, playTransition:Boolean=true):void
		{
			_stateColor = stateName == "normal" ? getStyle( "color" ) : getStyle( stateName + "Color" );
			super.setCurrentState(stateName, playTransition);
		}
		
		override protected function commitProperties():void
		{
			if (data && data is StepItem && hasState( StepItem( data ).status ))
			{
				setCurrentState( StepItem( data ).status );
			}
			else
			{
				setCurrentState( "normal" );
			}
			
			toolTip = (data && data is StepItem )? StepItem( data ).label : "";
			
			super.commitProperties();
		}
		
		public function get label():String
		{
			return "";
		}
		
		public function set label(value:String):void
		{
		}
		public function get selected():Boolean
		{
			return false;
		}
		
		public function set selected(value:Boolean):void
		{
		}
		
		public function get showsCaret():Boolean
		{
			return false;
		}
		
		public function set showsCaret(value:Boolean):void
		{
		}
		
		public function get dragging():Boolean
		{
			return false;
		}
		
		public function set dragging(value:Boolean):void
		{
		}
		
	}
}