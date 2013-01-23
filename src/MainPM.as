package
{
	import com.mwallace.sampleproject.models.MainDM;
	/**
	 * @author Matthew Wallace - http://mattwallace.me
	 */
	public class MainPM
	{
		private var dm : MainDM;
		public function MainPM( dm : MainDM )
		{
			this.dm = dm;
		}

		public function saySomethingToThePanel() : void
		{
			dm.panelHelloString = "This is from the MainPM";
		}
	}
}
