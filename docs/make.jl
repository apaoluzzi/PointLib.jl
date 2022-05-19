if Base.HOME_PROJECT[] !== nothing
    # JuliaLang/julia/pull/28625
    Base.HOME_PROJECT[] = abspath(Base.HOME_PROJECT[])
end

using Documenter, PointLib

makedocs(
    format = Documenter.HTML(),
    modules = [PointLib],
    sitename = "PointLib",
    pages = [
        "README.md",
        "API Reference" => "index.md"
        ]
    )
deploydocs(
    repo   = "github.com/apaoluzzi/PointLib.jl.git",
)
