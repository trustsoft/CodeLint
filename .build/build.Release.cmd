call "%VS140COMNTOOLS%vsvars32.bat"
MSBuild.exe /nologo /v:minimal /p:Configuration=Release CodeLint.Analyzers.targets /t:BuildSolution

pause