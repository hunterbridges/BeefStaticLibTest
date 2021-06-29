using System;

namespace BeefLibrary
{
	class TestClass
	{
		public int32 testVal;

		public int32 InstanceTestFunc()
		{
			return testVal;
		}

		[Export, LinkName("LinkTestFunc")]
		static public int32 LinkTestFunc()
		{
			var test = scope TestClass();
			test.testVal = 3;
			return test.InstanceTestFunc();
		}
	}
}
