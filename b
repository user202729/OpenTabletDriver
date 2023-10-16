#!/bin/bash
set +x
cd "$(dirname "$0")"
rm bin/OpenTabletDriver.UX.Gtk
rm bin/OpenTabletDriver.Daemon
dotnet build OpenTabletDriver.UX.Gtk  --configuration Debug --runtime linux-x64 --framework net7.0 --self-contained false --output bin /p:PublishTrimmed=false /p:DebugType=embedded /p:SuppressNETCoreSdkPreviewMessage=true /p:VersionSuffix= /p:PublishSingleFile=true
dotnet build OpenTabletDriver.Daemon  --configuration Debug --runtime linux-x64 --framework net7.0 --self-contained false --output bin /p:PublishTrimmed=false /p:DebugType=embedded /p:SuppressNETCoreSdkPreviewMessage=true /p:VersionSuffix= /p:PublishSingleFile=true
