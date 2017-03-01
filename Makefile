.PHONY: all build-standalone build-with-kcp

all: build-standalone build-with-kcp

build-standalone:
	@mcs -r:System.Windows.Forms.dll -r:System.Drawing App.cs \
		-out:twilight-line-win-gui.exe -target:winexe -sdk:2 \
		-win32icon:twilight_line.ico -resource:twilight_line.ico

build-with-kcp:
	@mcs -r:System.Windows.Forms.dll -r:System.Drawing AppWithKcp.cs \
		-out:twilight-line-win-gui-kcp.exe -target:winexe -sdk:2 \
		-win32icon:twilight_line.ico -resource:twilight_line.ico
