package org.suite.cases 
{
	
    import CustomComponents.bregmamap.Bregma;   
    import org.hamcrest.mxml.AbstractMXMLMatcherTestCase;
    import org.hamcrest.mxml.number.Between;

    /*
       <Between min="{ 3 }" max="{ 7 }" />
     */
    public class TestBregma extends AbstractMXMLMatcherTestCase
    {
        private var matcher:Between;
         private var bregval:Bregma;
		
        [Before]
        public function createMatcher():void
        {
        	bregval=new Bregma();
        	bregval.initialize();
            matcher = new Between();
            matcher.min = 3;
            matcher.max = 7;
        }

        [Test]
        public function hasDescription():void
        {
            assertDescription("a Number between <3> and <7>", matcher);
        }

        [Test]
        public function matchedIsTrueIfTargetMatches():void
        {
        	bregval.setBregma(4);
            matcher.target = bregval.getBregma();
            assertMatched("matched if target matches", matcher);
        }

        [Test]
        public function matchedIsFalseIfTargetDoesNotMatch():void
        {
        	bregval.setBregma(8);
            matcher.target = bregval.getBregma();

            assertNotMatched("not matched if target does not match", matcher);
        }

        [Test]
        public function mismatchDescriptionIsNullIfTargetMatches():void
        {
        	bregval.setBregma(3);
            matcher.target = bregval.getBregma();

            assertMatchedMismatchDescription(matcher);
        }

        [Test]
        public function mismatchDescriptionIsSetIfTargetDoesNotMatch():void
        {
        	bregval.setBregma(8);
            matcher.target = bregval.getBregma();
            assertMismatchDescription("was <8>", matcher);
        }
    }
}