#pragma once

extern "C"
{
	// These are implicit procs injected by the Beef compiler when building
	// a static library. You must call BeefStart before any Beef code is run,
	// and must call BeefStop before process exit.
	void BeefStart();
	void BeefStop();

	// These are user-defined functions exported in the lib.
	int LinkTestFunc_Instance();
	int LinkTestFunc_ReflectCount();
	void LinkTestFunc_ReflectGet(int i, const char** outStr);
}

