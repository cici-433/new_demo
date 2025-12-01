[Setup]
AppName=new_demo
AppVersion=1.0.0
DefaultDirName={pf}\new_demo
DefaultGroupName=new_demo
OutputDir={#SourcePath}\dist
OutputBaseFilename=new_demo_installer
Compression=lzma
SolidCompression=yes
ArchitecturesInstallIn64BitMode=x64
#if FileExists("{#SourcePath}\\..\\windows\\runner\\resources\\app_icon.ico")
  SetupIconFile={#SourcePath}\\..\\windows\\runner\\resources\\app_icon.ico
#endif

[Files]
Source: "{#SourcePath}\\..\\build\\windows\\x64\\runner\\Release\\*"; DestDir: "{app}"; Flags: recursesubdirs createallsubdirs

[Icons]
Name: "{group}\new_demo"; Filename: "{app}\new_demo.exe"
Name: "{commondesktop}\new_demo"; Filename: "{app}\new_demo.exe"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Create a desktop icon"; Flags: unchecked
