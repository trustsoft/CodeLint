call "%VS140COMNTOOLS%vsvars32.bat"
MSBuild.exe /nologo /v:minimal CodeLint.Analyzers.targets  %*

pause