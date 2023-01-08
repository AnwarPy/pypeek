; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Peek"
#define MyAppVersion "2.7.7"
#define MyAppPublisher "Creative Tools"
#define MyAppURL "https://github.com/firatkiral/pypeek"
#define MyAppExeName "Peek.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{23606E8C-2815-4CE7-8BE6-BED0C59B166D}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
;DisableDirPage=yes
DisableProgramGroupPage=yes
;LicenseFile=C:\Users\firat\Repo\pypeek\LICENSE
InfoBeforeFile=C:\Users\firat\Repo\pypeek\data\art\desc.txt
;InfoAfterFile=C:\Users\firat\Repo\pypeek\req.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
;PrivilegesRequiredOverridesAllowed=dialog
OutputDir=C:\Users\firat\Desktop
OutputBaseFilename=peek_setup
SetupIconFile=C:\Users\firat\Repo\pypeek\src\pypeek\icon\pypeek.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}";

[Files]
Source: "C:\Users\firat\Repo\pypeek\dist\Peek\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[UninstallDelete]
Type: filesandordirs; Name: "{%USERPROFILE}\Peek"

