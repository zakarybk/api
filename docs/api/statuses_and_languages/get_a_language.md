## Get a Language [GET]
+ Parameters
    + id (required, integer, `1`) ... Language ID.

+ Response 200 (application/json)
    + Body
        {
            "id": 1,
            "name": "C# (Dotnet)",
            "is_archived": false,
            "source_file": "Main.cs",
            "compile_cmd": "/usr/bin/dotnet build",
            "run_cmd": "/usr/bin/dotnet test"
        }
