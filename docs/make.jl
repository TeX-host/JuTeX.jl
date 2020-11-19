using JuTeX
using Documenter

makedocs(;
    modules=[JuTeX],
    authors="woclass",
    repo="https://github.com/inkydragon/JuTeX.jl/blob/{commit}{path}#L{line}",
    sitename="JuTeX.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://inkydragon.github.io/JuTeX.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/inkydragon/JuTeX.jl",
)
