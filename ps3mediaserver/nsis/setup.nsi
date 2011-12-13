!include "MUI.nsh"
!include "FileFunc.nsh"
!include "TextFunc.nsh"
!include "WordFunc.nsh"
!include "LogicLib.nsh"
!include "nsDialogs.nsh"

!define REG_KEY_UNINSTALL "SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\PS3 Media Server-SHB"
!define REG_KEY_SOFTWARE "SOFTWARE\PS3 Media Server-SHB"

RequestExecutionLevel admin

Name "PS3MediaServer"
OutFile "dist\pms-setup-windows-${VERSION}.exe"
InstallDir "$PROGRAMFILES\PS3MediaServer-SHB" 

;Get install folder from registry for updates
InstallDirRegKey HKCU "${REG_KEY_SOFTWARE}" ""

SetCompressor /SOLID lzma
SetCompressorDictSize 32

!define MUI_ABORTWARNING
!define MUI_FINISHPAGE_RUN "$INSTDIR\PMS.exe"
!define MUI_WELCOMEFINISHPAGE_BITMAP "${NSISDIR}\Contrib\Graphics\Wizard\win.bmp"

!define MUI_FINISHPAGE_SHOWREADME ""
!define MUI_FINISHPAGE_SHOWREADME_NOTCHECKED
!define MUI_FINISHPAGE_SHOWREADME_TEXT "Create Desktop Shortcut"
!define MUI_FINISHPAGE_SHOWREADME_FUNCTION CreateDesktopShortcut

!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_DIRECTORY
Page custom SetMem SetMemLeave ;Custom page
!insertmacro MUI_PAGE_INSTFILES
!insertmacro MUI_PAGE_FINISH
!insertmacro MUI_UNPAGE_CONFIRM
!insertmacro MUI_UNPAGE_INSTFILES
!insertmacro MUI_LANGUAGE "English"

ShowUninstDetails show

Var Dialog
Var Text
Var Label

Function SetMem
	nsDialogs::Create 1018
	Pop $Dialog

	${If} $Dialog == error
		Abort
	${EndIf}
	
	${NSD_CreateLabel} 0 0 50% 12u "Enter amount of memory to give to PMS"
	Pop $Label

	${NSD_CreateText} 50% 0 50% 12u "768"
	Pop $Text
	
	nsDialogs::Show
FunctionEnd

Function SetMemLeave
	${NSD_GetText} $Text $0
	WriteRegStr HKCU "${REG_KEY_SOFTWARE}" "HeapMem" "$0"
FunctionEnd

Function CreateDesktopShortcut
  CreateShortCut "$DESKTOP\PS3 Media Server.lnk" "$INSTDIR\pms.exe"
FunctionEnd

Section "Program Files"
  SetOutPath "$INSTDIR"
  SetOverwrite on
  File /r /x ".svn" /x "*.jar" /x "*.conf" /x "*.zip" /x "*.dll" /x "third-party" "plugins"
  File /r /x ".svn" "documentation"
  File /r /x ".svn" "renderers"
  File /r /x ".svn" "win32"
  File /r /x ".svn" "plugins"
  File /r /x ".svn" "extras"
  File "PMS.exe"
  File "PMS.bat"
  File "pms.jar"
  File "MediaInfo.dll"
  File "MediaInfo64.dll"
  File "CHANGELOG"
  File "README"
  File "LICENSE.txt"
  File "logback.xml"
  File "icon.ico"
  File "MOVIEINFO.conf"
  

  ;the user may have set the installation dir
  ;as the profile dir, so we can't clobber this
  SetOverwrite off
  File "WEB.conf"

  ;Store install folder
  WriteRegStr HKCU "${REG_KEY_SOFTWARE}" "" $INSTDIR

  ;Create uninstaller
  WriteUninstaller "$INSTDIR\Uninst.exe"

  WriteRegStr HKEY_LOCAL_MACHINE "${REG_KEY_UNINSTALL}" "DisplayName" "PS3 Media Server"
  WriteRegStr HKEY_LOCAL_MACHINE "${REG_KEY_UNINSTALL}" "DisplayIcon" "$INSTDIR\icon.ico"
  WriteRegStr HKEY_LOCAL_MACHINE "${REG_KEY_UNINSTALL}" "DisplayVersion" "1.50.1"
  WriteRegStr HKEY_LOCAL_MACHINE "${REG_KEY_UNINSTALL}" "Publisher" "PS3 Media Server"
  WriteRegStr HKEY_LOCAL_MACHINE "${REG_KEY_UNINSTALL}" "URLInfoAbout" "http://www.ps3mediaserver.org"
  WriteRegStr HKEY_LOCAL_MACHINE "${REG_KEY_UNINSTALL}" "UninstallString" '"$INSTDIR\uninst.exe"'

  ${GetSize} "$INSTDIR" "/S=0K" $0 $1 $2
  IntFmt $0 "0x%08X" $0
  WriteRegDWORD HKLM "${REG_KEY_UNINSTALL}" "EstimatedSize" "$0"

  WriteUnInstaller "uninst.exe"

  ReadENVStr $R0 ALLUSERSPROFILE
  SetOutPath "$R0\PMS-SHB"
  AccessControl::GrantOnFile "$R0\PMS-SHB" "(S-1-5-32-545)" "FullAccess"
  File "PMS.conf.new"
  File "PMS.cred.new"
  ; Append all PATHs to PMS.conf.new
  ;${WordReplace} "$INSTDIR\extras" "\" "\\" "+" $R0
  ${WordReplace} "extras" "\" "\\" "+" $R0
  ${WordReplace} "$OUTDIR" "\" "\\" "+" $R3
  ; Channels
  ${ConfigWrite} "PMS.conf.new" "channels.path=" "$R0\\channels" $R2
  ; PMS encoder
  ${ConfigWrite} "PMS.conf.new" "pmsencoder.script.directory = " "$R0\\scripts" $R2
  ; DbgPack
  ${WordReplace} "pmsencoder.log" "\" "\\" "+" $R1 
  ${ConfigWrite} "PMS.conf.new" "dbgpack = " "$R0\\channels\\channel.log,$R1" $R2
  ; Downloader scripts
  ${ConfigWrite} "PMS.conf.new" "youtube-dl.path = " "$R0\\bin\\youtube-dl.exe" $R2
  ${ConfigWrite} "PMS.conf.new" "get-flash-videos.path = " "$R0\\scripts\\get_flash_videos.pl" $R2
  ; Perl 
  ${ConfigWrite} "PMS.conf.new" "perl.path = " "$R0\\perl\\bin\\perl.exe" $R2
  ; Rtmpdump
  ${ConfigWrite} "PMS.conf.new" "rtmpdump.path = " "$R0\\bin\\rtmpdump.exe" $R2
  ; Curl and cookie
  ${ConfigWrite} "PMS.conf.new" "curl.path = " "$R0\\bin\\curl.exe" $R2
  ${ConfigWrite} "PMS.conf.new" "cookie.path = " "$R0\\cookies" $R2
  ; Cred path
  ${ConfigWrite} "PMS.conf.new" "cred.path = " "$R3\\PMS.cred" $R2
  ; Verify if PMS.conf exists, if not move .new to PMS.conf
  ;${GetFileAttributes} "PMS.conf" "ALL" $R2
  ;IfErrors 0 +2
  ;CopyFiles "PMS.conf.new" "PMS.conf"
SectionEnd


Section "Start Menu Shortcuts"
  SetShellVarContext all
  CreateDirectory "$SMPROGRAMS\PS3 Media Server-SHB"
  CreateShortCut "$SMPROGRAMS\PS3 Media Server-SHB\PS3 Media Server-SHB.lnk" "$INSTDIR\PMS.exe" "" "$INSTDIR\PMS.exe" 0
  CreateShortCut "$SMPROGRAMS\PS3 Media Server-SHB\Uninstall.lnk" "$INSTDIR\uninst.exe" "" "$INSTDIR\uninst.exe" 0
SectionEnd

 
Section "Desktop shortcut"
  SetShellVarContext all
  CreateShortCut "$DESKTOP\PS3 Media Server-SHB.lnk" "$INSTDIR\pms.exe"
SectionEnd

Section "Uninstall"
  SetShellVarContext all

  Delete /REBOOTOK "$INSTDIR\Uninst.exe"
  RMDir /R /REBOOTOK "$INSTDIR\plugins"
  RMDir /R /REBOOTOK "$INSTDIR\renderers"
  RMDir /R /REBOOTOK "$INSTDIR\documentation"
  RMDir /R /REBOOTOK "$INSTDIR\win32"
  Delete /REBOOTOK "$INSTDIR\PMS.exe"
  Delete /REBOOTOK "$INSTDIR\PMS.bat"
  Delete /REBOOTOK "$INSTDIR\pms.jar"
  Delete /REBOOTOK "$INSTDIR\MediaInfo.dll"
  Delete /REBOOTOK "$INSTDIR\MediaInfo64.dll"
  Delete /REBOOTOK "$INSTDIR\CHANGELOG"
  Delete /REBOOTOK "$INSTDIR\WEB.conf"
  Delete /REBOOTOK "$INSTDIR\README"
  Delete /REBOOTOK "$INSTDIR\LICENSE.txt"
  Delete /REBOOTOK "$INSTDIR\debug.log"
  Delete /REBOOTOK "$INSTDIR\logback.xml"
  Delete /REBOOTOK "$INSTDIR\icon.ico"
  RMDir /REBOOTOK "$INSTDIR"


  Delete /REBOOTOK "$DESKTOP\PS3 Media Server-SHB.lnk"
  RMDir /REBOOTOK "$SMPROGRAMS\PS3 Media Server-SHB"
  Delete /REBOOTOK "$SMPROGRAMS\PS3 Media Server-SHB\PS3 Media Server-SHB.lnk"
   Delete /REBOOTOK "$SMPROGRAMS\PS3 Media Server-SHB\Uninstall.lnk" 

  DeleteRegKey HKEY_LOCAL_MACHINE "${REG_KEY_UNINSTALL}"
  DeleteRegKey HKCU "${REG_KEY_SOFTWARE}"

  nsSCM::Stop "PS3 Media Server"
  nsSCM::Remove "PS3 Media Server"
SectionEnd
