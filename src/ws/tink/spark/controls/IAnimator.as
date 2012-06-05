package ws.tink.spark.controls
{
	
	/**
	 *  The IAnimator interface defines the methods
	 *  for controls that are able to animate.
	 *  
	 *  @langversion 3.0
	 *  @playerversion Flash 10
	 *  @playerversion AIR 1.5
	 *  @productversion Flex 4.5
	 */
	public interface IAnimator
	{
		/**
		 *  Plays the animation.
		 *
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion Flex 4
		 */
		function play():void
			
		/**
		 *  Stops the animation.
		 *
		 *  @langversion 3.0
		 *  @playerversion Flash 10
		 *  @playerversion AIR 1.5
		 *  @productversion Flex 4
		 */
		function stop():void
	}
}