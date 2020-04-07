@languages ||= []
@languages +=
[
  {
    id: 1,
    name: "C# (Dotnet)",
    is_archived: false,
    source_file: "Main.cs",
    compile_cmd: "",
    run_cmd: "DOTNET_CLI_HOME=/tmp/.cache/dotnet-test /usr/bin/dotnet test"
  },
]
