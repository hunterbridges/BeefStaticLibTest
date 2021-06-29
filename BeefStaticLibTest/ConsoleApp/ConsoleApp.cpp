#include <stdio.h>

extern "C" void BeefStart();
extern "C" void BeefStop();
extern "C" int LinkTestFunc();

int main()
{
	BeefStart();

	int result = LinkTestFunc();
	printf("The result is %d!\n", result);

	BeefStart();
}

