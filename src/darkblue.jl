############################################################################################
#::. DEFINE THEME
############################################################################################
darkblue = Theme(
    colomap  = ColorSchemes.lipari,
	font     = JM_REG,
	fontsize = FONTSIZE_MAIN,
	size     = (600,400),

	Axis = (
		backgroundcolor  = TUMBlueDarker,
        bottomspinecolor = :white,
        leftspinecolor   = :white,
        rightspinecolor  = :white,
	    titlefont        = JM_BOLD,
		titlesize        = FONTSIZE_BIG,
        topspinecolor    = :white,
		xlabelcolor      = :white,
        xlabelfont       = JM_REG,
        xtickcolor       = :white,
        xticklabelcolor  = :white,
		xticklabelfont   = JM_REG,
		ylabelcolor      = :white,
		ylabelfont       = JM_REG,
        ytickcolor       = :white,
        yticklabelcolor  = :white,
		yticklabelfont   = JM_REG,
	),

	Colorbar = (
        bottomspinecolor = :white,
		labelfont        = JM_REG,
		labelsize        = FONTSIZE_MAIN,
        leftspinecolor   = :white,
        rightspinecolor  = :white,
        tickcolor        = :white,
        ticklabelcolor   = :white,
		ticklabelfont    = JM_REG,
		ticklabelsize    = FONTSIZE_SMALL,
        topspinecolor    = :white,
	),

	Label = (
		font = JM_REG,
	),

	Legend = (
		labelsize = FONTSIZE_SMALL,
		labelfont = JM_REG,
	    titlefont = JM_BOLD,
	),

	Lines = (
        linewidth = 1.5,
	),

	Text = (
		font = JM_REG,
	),

	Scatter = (
        markersize = 8,
	),
)


############################################################################################
#::. EXPORT THEME
############################################################################################
export darkblue
