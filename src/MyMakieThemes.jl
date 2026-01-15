module MyMakieThemes

#::. import packages
using CairoMakie
using Colors
using ColorSchemes
using GeoMakie
using Makie


#::. define fonts
const JM_REG  = joinpath(@__DIR__, "..", "res", "JuliaMono-Regular.ttf")
const JM_BOLD = joinpath(@__DIR__, "..", "res", "JuliaMono-Bold.ttf")
const LMR_ITALIC = joinpath(@__DIR__, "..", "res", "lmroman10-italic.otf")

#::. define font sizes
const FONTSIZE_SMALL  = 14
const FONTSIZE_MAIN   = 16
const FONTSIZE_BIG    = 18

#::. extend the RichText functionality
math(s::String) = rich(s, font=LMR_ITALIC)
export math

#::. load custom colors
include(joinpath(@__DIR__, "colors.jl"))

#::. load custom GeoAxis
include(joinpath(@__DIR__, "mygeoaxis.jl"))

#::. load themes
include(joinpath(@__DIR__, "default.jl"))
include(joinpath(@__DIR__, "defaultJuliaMono.jl"))
include(joinpath(@__DIR__, "dark.jl"))


end
