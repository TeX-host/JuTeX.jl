using JuTeX
using Documenter

makedocs(;
    modules=[JuTeX],
    authors="woclass",
    repo="https://github.com/TeX-host/JuTeX.jl/blob/{commit}{path}#L{line}",
    sitename="JuTeX.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://TeX-host.github.io/JuTeX.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/TeX-host/JuTeX.jl",
)
