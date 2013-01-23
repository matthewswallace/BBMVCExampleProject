package 
{
	import org.bbmvc.views.IBBView;
	import com.mwallace.sampleproject.views.PanelView;
	import com.mwallace.sampleproject.models.MainDM;
	import flash.events.Event;
	import flash.display.Sprite;

	public class Main extends Sprite implements IBBView
	{
		private var dm : MainDM;
		private var pm : MainPM;
		private var panel : PanelView;
		public function Main()
		{
			addEventListener(Event.ADDED_TO_STAGE, init);
		}
		
		private function init(e:Event):void
		{
			dm = new MainDM();
			pm = new MainPM(dm);
			
			dm.registerView(this);
			
			panel = new PanelView( dm, "my panel");
			addChild(panel);
			
			pm.saySomethingToThePanel();
		}
		
		public function update( updateType : String = undefined, data : * = undefined ) : void
		{
			switch(updateType){
				case MainDM.HELLO_MAIN_CHANGE:
					trace("message from panel controller : " + String(data));
					break;
				default:
			}
		}

		public function destroy() : void
		{
		}
	}
}
