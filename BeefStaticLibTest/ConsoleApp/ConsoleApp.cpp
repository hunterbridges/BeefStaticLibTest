#include <stdio.h>

#include "BeefLibrary.h"

int main()
{
	BeefStart();

	int result = LinkTestFunc_Instance();
	printf("LinkTestFunc_Instance() -> %d\n", result);

	int reflectCount = LinkTestFunc_ReflectCount();
	printf("LinkTestFunc_ReflectCount() -> %d\n", reflectCount);

	for (int i = 0; i < reflectCount; i++)
	{
		const char* fieldName = NULL;
		LinkTestFunc_ReflectGet(i, &fieldName);

		printf("LinkTestFunc_ReflectGet(%d) -> %s\n", i, fieldName);

	}

	BeefStart();
}

