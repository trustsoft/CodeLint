call "%VS140COMNTOOLS%vsvars32.bat"
MSBuild.exe /nologo /v:minimal /p:Configuration=Release CodeLint.Analyzers.targets /t:BuildSolution

MSBuild.exe /nologo /v:minimal /p:Configuration=Release CodeLint.Analyzers.targets /t:CreateNuGetPackages
MSBuild.exe /nologo /v:minimal /p:Configuration=Release CodeLint.Analyzers.targets /t:PublishToMyGet
MSBuild.exe /nologo /v:minimal /p:Configuration=Release CodeLint.Analyzers.targets /t:PublishToNuGet

pause