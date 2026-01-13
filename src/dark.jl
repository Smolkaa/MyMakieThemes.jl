############################################################################################
#::. DEFINE THEME
############################################################################################
dark(darkcolor=TUMBlueDarker) = Theme(
    backgroundcolor = darkcolor,
    colomap         = ColorSchemes.lipari,
	font            = "Helvet",
	fontsize        = FONTSIZE_MAIN,
	size            = (600,330),

	Axis = (
		backgroundcolor  = darkcolor,
        bottomspinecolor = :white,
        leftspinecolor   = :white,
        rightspinecolor  = :white,
	    titlefont        = "Helvet",
		titlesize        = FONTSIZE_BIG,
        topspinecolor    = :white,
        xgridcolor       = (:white, 0.15),
		xlabelcolor      = :white,
        xlabelfont       = "Helvet",
		xminortickalign  = 1.0,
		xtickalign 		 = 1.0,
        xtickcolor       = :white,
        xticklabelcolor  = :white,
		xticklabelfont   = "Helvet",
        ygridcolor       = (:white, 0.15),
		ylabelcolor      = :white,
		ylabelfont       = "Helvet",
		yminortickalign  = 1.0,
		ytickalign 		 = 1.0,
        ytickcolor       = :white,
        yticklabelcolor  = :white,
		yticklabelfont   = "Helvet",
	),

	Colorbar = (
        bottomspinecolor = :white,
        labelcolor       = :white,
		labelfont        = "Helvet",
		labelsize        = FONTSIZE_MAIN,
        leftspinecolor   = :white,
        rightspinecolor  = :white,
        tickcolor        = :white,
        ticklabelcolor   = :white,
		ticklabelfont    = "Helvet",
		ticklabelsize    = FONTSIZE_SMALL,
        topspinecolor    = :white,
	),

    GeoAxis = (
		backgroundcolor  = darkcolor,
        bottomspinecolor = :white,
        leftspinecolor   = :white,
        rightspinecolor  = :white,
	    titlefont        = "Helvet",
		titlesize        = FONTSIZE_BIG,
        topspinecolor    = :white,
        xgridcolor       = (:white, 0.15),
		xlabelcolor      = :white,
        xlabelfont       = "Helvet",
        xtickcolor       = :white,
        xticklabelcolor  = :white,
		xticklabelfont   = "Helvet",
        ygridcolor       = (:white, 0.15),
		ylabelcolor      = :white,
		ylabelfont       = "Helvet",
        ytickcolor       = :white,
        yticklabelcolor  = :white,
		yticklabelfont   = "Helvet",
    ),

	Label = (
		font = "Helvet",
	),

	Legend = (
		labelsize = FONTSIZE_SMALL,
		labelfont = "Helvet",
	    titlefont = "Helvet",
	),

	Lines = (
		joinstyle = :round,
        linewidth = 1.5,
	),

    palette = (
        color=[:white, TUMBlueLighter, TUMOrange],
        marker=[]
    ),

	Text = (
		font = "Helvet",
	),

	Scatter = (
        markersize = 8,
	),
)


############################################################################################
#::. SPECIALIZED THEMES
############################################################################################
pluto() = dark(PlutoDarkBG)

############################################################################################
#::. EXPORT THEME
############################################################################################
export dark, pluto
