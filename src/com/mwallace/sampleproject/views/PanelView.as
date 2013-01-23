package com.mwallace.sampleproject.views
{
	import flash.events.Event;
	import com.mwallace.sampleproject.models.MainDM;
	import flash.display.Sprite;
	import org.bbmvc.views.IBBView;


	/**
	 * @author Matthew Wallace - http://mattwallace.me
	 */
	public class PanelView extends Sprite implements IBBView
	{
		private var dm : MainDM;
		private var pm : PanelViewPM;
		public function PanelView( dm : MainDM, name:String )
		{
			this.dm = dm;
			this.name = name;
			pm = new PanelViewPM(dm);
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			dm.registerView(this);
			
			pm.getData();
		}
		
		public function update( updateType : String = undefined, data : * = undefined ) : void
		{
			switch(updateType){
				case MainDM.HELLO_PANEL_CHANGE:
					trace("message from Main PM : " + String(data));
					break;
				default:
			}
		}

		public function destroy() : void
		{
		}
	}
}
