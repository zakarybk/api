@languages ||= []
@languages +=
[
  {
    id: 1,
    name: "C# (Dotnet)",
    is_archived: false,
    source_file: "Main.cs",
    include_files: = [
    	"dotnet.csproj",
    	"UnitTest.cs",
    ],
    compile_cmd: "/usr/bin/dotnet build",
    run_cmd: "/usr/bin/dotnet test"
  },
]
