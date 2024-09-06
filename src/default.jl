############################################################################################
#::. DEFINE THEME
############################################################################################
default() = Theme(
    colomap  = ColorSchemes.lipari,
	font     = JM_REG,
	fontsize = FONTSIZE_MAIN,
	size     = (600,400),

	Axis = (
		backgroundcolor = :white,
	    titlefont       = JM_BOLD,
		titlesize       = FONTSIZE_BIG,
		xlabelfont      = JM_REG,
		xticklabelfont  = JM_REG,
		ylabelfont      = JM_REG,
		yticklabelfont  = JM_REG,
	),

	Axis3 = (
		backgroundcolor = :white,
	    titlefont       = JM_BOLD,
		titlesize       = FONTSIZE_BIG,
		xlabelfont      = JM_REG,
		xticklabelfont  = JM_REG,
		ylabelfont      = JM_REG,
		yticklabelfont  = JM_REG,
	),

	Colorbar = (
		labelfont       = JM_REG,
		labelsize       = FONTSIZE_MAIN,
		ticklabelfont   = JM_REG,
		ticklabelsize   = FONTSIZE_SMALL,
	),

	GeoAxis = (
		backgroundcolor = :white,
	    titlefont       = JM_BOLD,
		titlesize       = FONTSIZE_BIG,
        xgridcolor      = (:black, 0.3),
		xlabelfont      = JM_REG,
		xticklabelfont  = JM_REG,
        ygridcolor      = (:black, 0.3),
		ylabelfont      = JM_REG,
		yticklabelfont  = JM_REG,
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

    palette = (
        color=[TUMBlack, TUMBlue, TUMOrange, TUMBlueLighter, TUMBlueDarker],
        marker=[]
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
export default
