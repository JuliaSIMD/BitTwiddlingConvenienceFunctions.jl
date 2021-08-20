using BitTwiddlingConvenienceFunctions
using Documenter

DocMeta.setdocmeta!(BitTwiddlingConvenienceFunctions, :DocTestSetup, :(using BitTwiddlingConvenienceFunctions); recursive=true)

makedocs(;
    modules=[BitTwiddlingConvenienceFunctions],
    authors="Julia Computing",
    repo="https://github.com/chriselrod/BitTwiddlingConvenienceFunctions.jl/blob/{commit}{path}#{line}",
    sitename="BitTwiddlingConvenienceFunctions.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://chriselrod.github.io/BitTwiddlingConvenienceFunctions.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/chriselrod/BitTwiddlingConvenienceFunctions.jl",
    devbranch="main",
)
