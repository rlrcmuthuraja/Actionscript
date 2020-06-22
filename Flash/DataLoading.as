/*....
* @ Project : RBWB
* @ Author: Muthuraja
* @ File Type : Loading XML data
*/

package com.uio{

	import flash.display.*;
	import flash.events.Event;
	import flash.events.EventDispatcher;
	import flash.net.URLRequest;
	import flash.net.*;
	import flash.xml.*;
	import flash.xml.XMLDocument;
	

	public class DataLoading extends EventDispatcher{
		public static const XML_LOADED:String = "xmlLoaded";
		private var xmlLoader:URLLoader = new URLLoader();
		public var xmlData:XMLDocument = new XMLDocument();
		public function DataLoading():void {
		xmlLoader.load(new URLRequest("data.xml"));
		xmlLoader.addEventListener(Event.COMPLETE, xmlLoaded);		
		}
		
		private function xmlLoaded(e:Event):void {
			
				xmlData.ignoreWhite = true;
				var rbwbxml:XML = XML(xmlLoader.data);
				xmlData.parseXML(rbwbxml.toXMLString());
				//trace(configxmlData.firstChild.childNodes[0].childNodes[0].childNodes[0].childNodes);	
				//trace(configxmlData.firstChild.childNodes[0].childNodes.length);	
				dispatchEvent(new Event(XML_LOADED));	
			
		} 

	
	}
}