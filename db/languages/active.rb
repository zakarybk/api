@languages ||= []
@languages +=
[
  {
    id: 51,
    name: "C# (Mono 6.6.0.161)",
    is_archived: false,
    source_file: "Main.cs",
    compile_cmd: "/usr/local/mono-6.6.0.161/bin/mcs %s Main.cs",
    run_cmd: "/usr/local/mono-6.6.0.161/bin/mono Main.exe"
  },
]