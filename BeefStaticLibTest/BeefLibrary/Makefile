# Defines
BEEFBUILD_CMD = "C:\Program Files\BeefLang\bin\BeefBuild.exe"
DIR_BUILD = build
DIR_SRC = src

Release :
	$(BEEFBUILD_CMD) -config=Release

Debug : 
	$(BEEFBUILD_CMD) -config=Debug

Release_Rebuild : 
	$(BEEFBUILD_CMD) -clean -config=Release

Debug_Rebuild : 
	$(BEEFBUILD_CMD) -clean -config=Debug

Clean :
	@if exist $(DIR_BUILD) del /Q /S $(DIR_BUILD)\*