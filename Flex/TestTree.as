
package org.suite.cases
{

	import CustomComponents.treeview.Structure;
	
	import org.hamcrest.*;
	import org.hamcrest.core.*;
	import org.hamcrest.text.containsString;

	public class TestTree extends AbstractMatcherTestCase
	{

		private static const EXCERPT:String="BoxDivider";

		private var stringContains:Matcher;
		private var treeviw:Structure;
		private var treeXML:XMLList=
			<>
				<node label="Containers" col="0xcc0000" bregma="1">
					<node label="DividedBoxClasses" col="0x009dff" bregma="1">
						<node label="BoxDivider" data="BoxDivider" col="0xff0000" bregma="2"/>
					</node>
					<node label="GridClasses" col="0xff0000" bregma="1">
						<node label="GridRow" data="GridRow" col="0xff0000" bregma="1" />
						<node label="GridItem" data="GridItem" col="0xff0000" bregma="1" />
						<node label="Other File" data="Other" col="0xff0000" bregma="1" />
					</node>
				</node>
				<node label="Data" col="0xcccccc" bregma="1">
					<node label="Messages" col="0xff0000" bregma="1" >
						<node label="DataMessage" 
							data="DataMessage" col="0xff0000" bregma="1" />
						<node label="SequenceMessage" 
							data="SequenceMessage" col="0xff0000" bregma="1" />
					</node>
					<node label="Events" col="0xff0000" bregma="1" >
						<node label="ConflictEvents" 
							data="ConflictEvent" col="0xff0000" bregma="1" />
						<node label="CommitFaultEvent" 
							data="CommitFaultEvent" col="0xff0000" bregma="9" />
					</node>
				</node>
			</>;

		[Before]
		public function setUp():void
		{
			stringContains=containsString(EXCERPT);
			treeviw=new Structure();
			treeviw.initialize();
			treeviw.treeXML=treeXML;
			treeviw.myTree.dataProvider=treeXML;

		}

		[Test]
		public function evaluatesToTrueIfArgumentIsEqualToSubstring():void
		{
			treeviw.findbyName("BoxDivider");
			var selectedNode:XML;
			selectedNode=treeviw.getSelectedNodeName();
			assertMatches("should be true if excerpt is entire string", stringContains, String(selectedNode.@label));
		}
	}
}

