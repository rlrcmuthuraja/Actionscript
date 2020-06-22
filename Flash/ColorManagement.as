package com.uio {

	import flash.geom.ColorTransform;
	import flash.display.*;
	import flash.display.DisplayObject;
	public class ColorManagement extends MovieClip
	{
		
		public function ColorManagement():void 
		{
		//trace("colors");
		}
		
		public function colorize(obj:Object,colorval:String):void
		{
			//trace("colors");
				
		var myColor:ColorTransform = new ColorTransform();
			myColor.color =  uint("0x"+colorval);
			obj.transform.colorTransform = myColor;	
		
		} 
		
		
}

}