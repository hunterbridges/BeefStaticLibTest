# BeefStaticLibTest
Static library test case for BeefLang

## Overview
This repo contains a Beef workspace in `BeefStaticLibTest/BeefLibrary`
There is also a VS 2019 solution at `BeefStaticLibTest/BeefStaticLibTest.sln`

The VS solution builds the Beef project by invoking BeefBuild via VS's bundled `nmake`.
It then links the resulting Beef symbols into a Windows Console App, and does a simple call
test before exiting.

## Current Issues
* If you build in `Debug` mode, it seems Beef generates no *.obj files,
    however you can link to the .lib just fine
* If you build in `Release` mode, the *.obj files are generated,
    but Beef outputs a corrupt .lib which can't be linked against
* The workspace requires `General > Beef > Distinct Build Options > Reflect > Always Include` to be set
    to `Include All` in order for `corlib` to generate all of its necessary symbols for complete linkage
* Most Beef runtime features must be turned off to achieve complete linkage
    (e.g. Runtime Checks, Dynamic Cast Check, etc). If you leave these on, it seems not all symbols are generated.