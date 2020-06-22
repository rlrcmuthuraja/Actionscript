package CustomEvents
{
	import flash.events.Event;
	
	
	public class MyEvent extends Event
	{
		public static var LIST_CLICK:String="ListClick";
		public static var TREE_CLICK:String="TreeClick";
		public static var BREGMA_CLICK:String="BregmaClick";
		
		public static var LIST_BG_CHANGE:String="ListBGChange";
		public static var LIST_INDEX_CHANGE:String="ListIndexChange";
		
		public static var PARALLEL_ZOOM:String="ParallelZoom";
		
		
		
		
				
			
		public var obj:Object;			
		public function MyEvent(type:String,bubbles:Boolean=false,cancelable:Boolean=false,obj:Object=null)
		{
			super(type,bubbles,cancelable);			
			this.obj=obj;	
			
		}
		override public function clone():Event
		{
			return new MyEvent(type, bubbles, cancelable,this.obj);
		}

	}
}


