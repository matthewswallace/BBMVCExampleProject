package com.mwallace.sampleproject.models
{
	import org.bbmvc.models.BBModel;

	/**
	 * @author Matthew Wallace - http://mattwallace.me
	 */
	public class MainDM extends BBModel
	{
		public static const HELLO_MAIN_CHANGE : String = "helloMainChange";
		public static const HELLO_PANEL_CHANGE : String = "helloPanelChange";
		
		private var _mainHelloString : String;
		private var _panelHelloString:String;

		public function get mainHelloString() : String
		{
			return _mainHelloString;
		}

		public function set mainHelloString( mainHelloString : String ) : void
		{
			_mainHelloString = mainHelloString;
			update( HELLO_MAIN_CHANGE, _mainHelloString );
		}

		public function get panelHelloString() : String
		{
			return _panelHelloString;
		}

		public function set panelHelloString( panelHelloString : String ) : void
		{
			_panelHelloString = panelHelloString;
			update( HELLO_PANEL_CHANGE, _panelHelloString );
		}
	}
}
