using DemoPackageEB
using Documenter

DocMeta.setdocmeta!(DemoPackageEB, :DocTestSetup, :(using DemoPackageEB); recursive=true)

makedocs(;
    modules=[DemoPackageEB],
    authors="Eleonora Bano <eleonora.bano@outlook.com> and contributors",
    repo="https://github.com/eleonorabano/DemoPackageEB.jl/blob/{commit}{path}#{line}",
    sitename="DemoPackageEB.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://eleonorabano.github.io/DemoPackageEB.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/eleonorabano/DemoPackageEB.jl",
    devbranch="main",
)
