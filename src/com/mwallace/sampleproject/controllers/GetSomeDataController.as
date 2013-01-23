package com.mwallace.sampleproject.controllers
{
	import com.mwallace.sampleproject.models.MainDM;
	/**
	 * @author Matthew Wallace - http://mattwallace.me
	 */
	public class GetSomeDataController
	{
		private var dm : MainDM;
		public function GetSomeDataController( dm : MainDM )
		{
			this.dm = dm;
		}

		//this is where you would make some sort of call to a server for data
		public function execute() : void
		{
			dm.mainHelloString = "Hello from GetSomeDataController";
		}
	}
}
