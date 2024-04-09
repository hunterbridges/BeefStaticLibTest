using System;

namespace BeefLibrary
{
	class TestClass
	{
		[Reflect(.All)]
		enum Direction
		{
			NORTH,
			WEST,
			SOUTH,
			EAST
		}

		public int32 testVal;

		public int32 InstanceTestFunc()
		{
			return testVal;
		}

		[Export, LinkName("LinkTestFunc_Instance")]
		static public int32 LinkTestFunc_Instance()
		{
			var test = scope TestClass();
			test.testVal = 3;
			return test.InstanceTestFunc();
		}

		[Export, LinkName("LinkTestFunc_ReflectCount")]
		static public int32 LinkTestFunc_ReflectCount()
		{
			int32 count = 0;
			var t = typeof(Direction);
			for (var field in t.GetFields())
			{
				count++;
			}

			return count;
		}

		[Export, LinkName("LinkTestFunc_ReflectGet")]
		static public void LinkTestFunc_ReflectGet(int32 i, char8** outStr)
		{
			var t = typeof(Direction);
			var field = t.GetField(i).Get();
			*outStr = field.Name.Ptr;
		}
	}
}
