############################################################################################
#::. DEFINE AXIS
############################################################################################
function MyGeoAxis(fig;
    dest            = "+proj=natearth",
    scaling         = 0.9,
    xgridcolor      = (:black, 0.3), 
    xlabel          = "Longitude (°)",
    xticks          = -180:45:180,
    xticklabels     = ["-180", "-135", "-90", "-45", "0", "45", "90", "135", "180"],
    xticklabelcolor = :black,
    ygridcolor      = (:black, 0.3),
    ylabel          = "Latitude (°)",
    yticks          = -90:30:90,
    yticklabels     = ["-90", "-60", "-30", "0", "30", "60", "90"],
    yticklabelcolor = :black,
    kwargs...)

    # main GeoAxis
    ax = GeoAxis(fig[1,1];
        dest                = dest,
        xgridcolor          = xgridcolor,
        xtickformat         = Makie.automatic,
        ygridcolor          = ygridcolor,
        ytickformat         = Makie.automatic,
        kwargs...
    )

    xlims!(ax, -180, 180)
    ylims!(ax, -90, 90)

    ax.halign[] = :right
    ax.height[] = 300*scaling
    ax.valign[] = :top
    ax.width[] = 500*scaling
    ax.xticks[] = xticks
    ax.xticklabelsvisible[] = false
    ax.yticks[] = yticks
    ax.yticklabelsvisible[] = false

    # auxiliary axis for labels
    ax2 = Axis(fig[1,1];
        xlabel=xlabel,
        xtickcolor=xticklabelcolor,
        ylabel=ylabel,
    )

    hidespines!(ax2)
    hidedecorations!(ax2; label=false)
    xlims!(ax2, -340, 275)
    ylims!(ax2, -100, 100)

    ax2.width[] = 525*scaling

    # custom ticks for main axis, plotted in auxiliary axis
    if length(xticks) != length(xticklabels)
        xticklabels = ["$xtick" for xtick in xticks]
    end
    for (i, xtick) in enumerate(xticks)
        xshift = xticks[i] == 0 ? -13 : (xticks[i] > 0 ? -5 : 0)
        text!(ax2, xtick + xshift, -100;
            align=(:right, :bottom),
            color=xticklabelcolor,
            text="$(xticklabels[i])",
        )
    end

    if length(yticks) != length(yticklabels)
        yticklabels = ["$ytick" for ytick in yticks]
    end
    for (i, ytick) in enumerate(yticks)
        if yticks[i] == -90; continue; end
        xshift = ytick < 0 ? -5 : 0
        text!(ax2,
            -320 + 100 * sind(ytick)^6 + xshift,
            ytick + 5 * sind(2 * ytick);
            color=yticklabelcolor,
            text="$(yticklabels[i])", align=(:center, :center),
        )
    end

    return ax
end


############################################################################################
#::. EXPORT
############################################################################################
export MyGeoAxis
