package com.mwallace.sampleproject.views
{
	import com.mwallace.sampleproject.controllers.GetSomeDataController;
	import com.mwallace.sampleproject.models.MainDM;
	/**
	 * @author Matthew Wallace - http://mattwallace.me
	 */
	public class PanelViewPM
	{
		private var getSomeDataController : GetSomeDataController;
		public function PanelViewPM( dm : MainDM )
		{
			getSomeDataController = new GetSomeDataController( dm );
		}

		public function getData() : void
		{
			getSomeDataController.execute();
		}
	}
}
