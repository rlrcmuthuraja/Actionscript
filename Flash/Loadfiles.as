package com.uio{
	import flash.display.MovieClip;
	
/*....
* @ Project : RBWB
* @ Author: Muthuraja
* @ File Type : Loading images and Components
*/

	import flash.display.DisplayObject;
	import flash.display.Loader;
	import flash.display.MovieClip;
	import flash.net.URLRequest;
public class Loadfiles extends MovieClip
{

	public function getImage(str:String):Loader
		{
			
			var url:String = str;
			
			var urlReq:URLRequest
			var ldr:Loader;
			urlReq = new URLRequest(url);
			ldr = new Loader();
			ldr.load(urlReq);
			return ldr;
		}
}	
}