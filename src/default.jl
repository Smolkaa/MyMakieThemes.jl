############################################################################################
#::. DEFINE THEME
############################################################################################
default() = Theme(
    colormap  = ColorSchemes.lipari,
	font     = "Helvet",
	fontsize = FONTSIZE_MAIN,
	size     = (600,400),

	Axis = (
		backgroundcolor = :white,
	    titlefont       = "Helvet",
		titlesize       = FONTSIZE_BIG,
		xgridvisible 	= false,
		xlabelfont      = "Helvet",
		xminortickalign = 0.5,
		xtickalign 		= 0.5,
		xticklabelfont  = "Helvet",
		ygridvisible 	= false,
		ylabelfont      = "Helvet",
		yminortickalign = 0.5,
		ytickalign 		= 0.5,
		yticklabelfont  = "Helvet",
	),

	Axis3 = (
		backgroundcolor = :white,
	    titlefont       = "Helvet",
		titlesize       = FONTSIZE_BIG,
		xlabelfont      = "Helvet",
		xticklabelfont  = "Helvet",
		ylabelfont      = "Helvet",
		yticklabelfont  = "Helvet",
	),

	Colorbar = (
		labelfont       = "Helvet",
		labelsize       = FONTSIZE_MAIN,
		ticklabelfont   = "Helvet",
		ticklabelsize   = FONTSIZE_SMALL,
	),

	GeoAxis = (
		backgroundcolor = :white,
	    titlefont       = "Helvet",
		titlesize       = FONTSIZE_BIG,
        xgridcolor      = (:black, 0.3),
		xlabelfont      = "Helvet",
		xticklabelfont  = "Helvet",
        ygridcolor      = (:black, 0.3),
		ylabelfont      = "Helvet",
		yticklabelfont  = "Helvet",
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
        color=[TUMBlack, TUMBlue, TUMOrange, TUMBlueLighter, TUMBlueDarker],
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
#::. EXPORT THEME
############################################################################################
export default
