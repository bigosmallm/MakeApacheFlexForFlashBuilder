package ws.tink.spark.controls
{
	import flash.events.EventDispatcher;

	[Bindable]
	public class StepItem extends EventDispatcher
	{
		
		public static const NORMAL:String = "normal";
		public static const ACTIVE:String = "active";
		public static const COMPLETE:String = "complete";
		public static const ERROR:String = "error";
		
		public function StepItem()
		{
		}
		
		private var _label:String = "";
		public function get label():String { return _label; }
		
		public function set label(value:String):void
		{
			if (_label == value)
				return;
			_label = value;
		}
		
		private var _status:String = NORMAL;
		public function get status():String { return _status; }
		
		public function set status(value:String):void
		{
			if (_status == value)
				return;
			_status = value;
		}
		
		
	}
}