; Java Launcher with automatic JRE installation
; Modified to include auto-update functionality
;-----------------------------------------------
 
Name "PMS"
Caption "PS3 Media Server"
Icon "icon.ico"
OutFile "PMS.exe"
 
VIAddVersionKey "ProductName" "PS3 Media Server-SHB"
VIAddVersionKey "Comments" ""
VIAddVersionKey "CompanyName" "A. Brochard"
VIAddVersionKey "LegalTrademarks" ""
VIAddVersionKey "LegalCopyright" ""
VIAddVersionKey "FileDescription" "PS3 Media Server"
VIAddVersionKey "FileVersion" "1.50.1"
VIProductVersion "1.50.1.0"

 
!define JARPATH "pms.jar"
!define CLASS "net.pms.PMS"
!define PRODUCT_NAME "PMS"
!define REG_KEY_SOFTWARE "SOFTWARE\PS3 Media Server-SHB"
 
; Definitions for Java 6.0
!define JRE_VERSION "6.0"
!define JRE_URL "http://download.oracle.com/otn-pub/java/jdk/7u1-b08/jre-7u1-windows-i586-s.exe"
!define JRE64_URL "http://download.oracle.com/otn-pub/java/jdk/7u1-b08/jre-7u1-windows-x64.exe"
 
; use javaw.exe to avoid dosbox.
; use java.exe to keep stdout/stderr
!define JAVAEXE "javaw.exe"
 
RequestExecutionLevel user
SilentInstall silent
AutoCloseWindow true
ShowInstDetails nevershow
 
!include "FileFunc.nsh"
!insertmacro GetFileVersion
!insertmacro GetParameters
!include "WordFunc.nsh"
!insertmacro VersionCompare
!include "x64.nsh"

Section ""
  Call GetJRE
  Pop $R0
  
  ReadRegStr $R3 HKCU "${REG_KEY_SOFTWARE}" "HeapMem"
  
  ${If} $R3 == ""  ; no value found
  	StrCpy $R3 "768"
  ${EndIf}
  
  StrCpy $R4 "M"
  StrCpy $R3 "-Xmx$R3$R4"
  
  ; change for your purpose (-jar etc.)
  ${GetParameters} $1
  StrCpy $0 '"$R0" -classpath update.jar;pms.jar $R3 -Djava.net.preferIPv4Stack=true -Dfile.encoding=UTF-8 ${CLASS} $1'
 
  SetOutPath $EXEDIR
  Exec $0
SectionEnd
  
;  returns the full path of a valid java.exe
;  looks in:
;  1 - .\jre directory (JRE Installed with application)
;  2 - JAVA_HOME environment variable
;  3 - the registry
;  4 - hopes it is in current dir or PATH
Function GetJRE
    Push $R0
    Push $R1
    Push $2
 
  ; 1) Check local JRE
  CheckLocal:
    ClearErrors
    StrCpy $R0 "$EXEDIR\jre\bin\${JAVAEXE}"
    IfFileExists $R0 JreFound
 
  ; 2) Check for JAVA_HOME
  CheckJavaHome:
    ClearErrors
    ReadEnvStr $R0 "JAVA_HOME"
    StrCpy $R0 "$R0\bin\${JAVAEXE}"
    IfErrors CheckRegistry1     
    IfFileExists $R0 0 CheckRegistry1
    Call CheckJREVersion
    IfErrors CheckRegistry1 JreFound
 
  ; 3) Check for registry
  CheckRegistry1:
    ClearErrors
    ${If} ${RunningX64}
 	SetRegView 64
 	${EndIf}
    ReadRegStr $R1 HKLM "SOFTWARE\Wow6432Node\JavaSoft\Java Runtime Environment" "CurrentVersion"
    ReadRegStr $R0 HKLM "SOFTWARE\Wow6432Node\JavaSoft\Java Runtime Environment\$R1" "JavaHome"
    StrCpy $R0 "$R0\bin\${JAVAEXE}"
    IfErrors CheckRegistry2     
    IfFileExists $R0 0 CheckRegistry2
    Call CheckJREVersion
    IfErrors CheckRegistry2 JreFound
    
  ; 4) Check for registry 
  CheckRegistry2:
    ClearErrors
    ReadRegStr $R1 HKLM "SOFTWARE\JavaSoft\Java Runtime Environment" "CurrentVersion"
    ReadRegStr $R0 HKLM "SOFTWARE\JavaSoft\Java Runtime Environment\$R1" "JavaHome"
    StrCpy $R0 "$R0\bin\${JAVAEXE}"
    IfErrors CheckRegistry3
    IfFileExists $R0 0 CheckRegistry3
    Call CheckJREVersion
    IfErrors CheckRegistry3 JreFound
 
  ; 5) Check for registry
  CheckRegistry3:
    ClearErrors
    ${If} ${RunningX64}
 	SetRegView 32
 	${Else}
 	Goto DownloadJRE
 	${EndIf}
    ReadRegStr $R1 HKLM "SOFTWARE\JavaSoft\Java Runtime Environment" "CurrentVersion"
    ReadRegStr $R0 HKLM "SOFTWARE\JavaSoft\Java Runtime Environment\$R1" "JavaHome"
    StrCpy $R0 "$R0\bin\${JAVAEXE}"
    IfErrors CheckRegistry4
    IfFileExists $R0 0 CheckRegistry4
    Call CheckJREVersion
    IfErrors CheckRegistry4 JreFound
    
  ; 6) Check for registry
  CheckRegistry4:
    ClearErrors
    ReadRegStr $R1 HKLM "SOFTWARE\Wow6432Node\JavaSoft\Java Runtime Environment" "CurrentVersion"
    ReadRegStr $R0 HKLM "SOFTWARE\Wow6432Node\JavaSoft\Java Runtime Environment\$R1" "JavaHome"
    StrCpy $R0 "$R0\bin\${JAVAEXE}"
    IfErrors DownloadJRE
    IfFileExists $R0 0 DownloadJRE
    Call CheckJREVersion
    IfErrors DownloadJRE JreFound
 
  DownloadJRE:
    Call ElevateToAdmin
    MessageBox MB_ICONINFORMATION "${PRODUCT_NAME} uses Java Runtime Environment ${JRE_VERSION}, it will now be downloaded and installed."
    StrCpy $2 "$TEMP\Java Runtime Environment.exe"
    nsisdl::download /TIMEOUT=30000 ${JRE_URL} $2
    Pop $R0 ;Get the return value
    StrCmp $R0 "success" +3
      MessageBox MB_ICONSTOP "Download failed: $R0"
      Abort
    ExecWait $2
    Delete $2
 
    ReadRegStr $R1 HKLM "SOFTWARE\JavaSoft\Java Runtime Environment" "CurrentVersion"
    ReadRegStr $R0 HKLM "SOFTWARE\JavaSoft\Java Runtime Environment\$R1" "JavaHome"
    StrCpy $R0 "$R0\bin\${JAVAEXE}"
    IfFileExists $R0 0 GoodLuck
    Call CheckJREVersion
    IfErrors GoodLuck JreFound
 
  ; 4) wishing you good luck
  GoodLuck:
    StrCpy $R0 "${JAVAEXE}"
    ; MessageBox MB_ICONSTOP "Cannot find appropriate Java Runtime Environment."
    ; Abort
 
  JreFound:
    Pop $2
    Pop $R1
    Exch $R0
FunctionEnd
 
; Pass the "javaw.exe" path by $R0
Function CheckJREVersion
    Push $R1
 
    ; Get the file version of javaw.exe
    ${GetFileVersion} $R0 $R1
    ${VersionCompare} ${JRE_VERSION} $R1 $R1
 
    ; Check whether $R1 != "1"
    ClearErrors
    StrCmp $R1 "1" 0 CheckDone
    SetErrors
 
  CheckDone:
    Pop $R1
FunctionEnd

 
; Attempt to give the UAC plug-in a user process and an admin process.
Function ElevateToAdmin
  UAC_Elevate:
    UAC::RunElevated
    StrCmp 1223 $0 UAC_ElevationAborted ; UAC dialog aborted by user?
    StrCmp 0 $0 0 UAC_Err ; Error?
    StrCmp 1 $1 0 UAC_Success ;Are we the real deal or just the wrapper?
    Quit
 
  UAC_ElevationAborted:
    # elevation was aborted, run as normal?
    MessageBox MB_ICONSTOP "This installer requires admin access, aborting!"
    Abort
 
  UAC_Err:
    MessageBox MB_ICONSTOP "Unable to elevate, error $0"
    Abort
 
  UAC_Success:
    StrCmp 1 $3 +4 ;Admin?
    StrCmp 3 $1 0 UAC_ElevationAborted ;Try again?
    MessageBox MB_ICONSTOP "This installer requires admin access, try again"
    goto UAC_Elevate 
FunctionEnd
