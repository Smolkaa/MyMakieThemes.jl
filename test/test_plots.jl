include(joinpath(@__DIR__, "..", "src", "MyMakieThemes.jl"))
using CairoMakie, .MyMakieThemes
set_theme!(MyMakieThemes.default())


function test_lines()
    fig = Figure()
    ax = Axis(fig[1, 1];
        xlabel=rich(math("x"), ", ", units("φ")), ylabel="y",
        title="test",
    )

    x = -pi:0.01:pi
    lines!(ax, x, sin.(x); label="sin(x)")
    lines!(ax, x, cos.(x); label=mathrm("cos(", math("x"), ")"))
    lines!(ax, x, -sin.(x); label="-sin(x)")
    lines!(ax, x, -cos.(x); label="-cos(x)")

    axislegend(ax)

    save(joinpath(@__DIR__, "test_lines.png"), fig)
end
