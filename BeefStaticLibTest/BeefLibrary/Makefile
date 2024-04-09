# Defines
BEEFBUILD_CMD = "C:\Program Files\BeefLang\bin\BeefBuild.exe"
DIR_BUILD = build
DIR_SRC = src

Release :
	$(BEEFBUILD_CMD) -config=Release -platform=$(BF_PLATFORM)

Debug : 
	$(BEEFBUILD_CMD) -config=Debug -platform=$(BF_PLATFORM)

Release_Rebuild : 
	$(BEEFBUILD_CMD) -clean -config=Release -platform=$(BF_PLATFORM)

Debug_Rebuild : 
	$(BEEFBUILD_CMD) -clean -config=Debug -platform=$(BF_PLATFORM)

Clean :
	@if exist $(DIR_BUILD) del /Q /S $(DIR_BUILD)\*