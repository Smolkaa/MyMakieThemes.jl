#::. extend the RichText functionality
math(s) =rich(s; font=LMR_ITALIC)
mathrm(s) = rich(s; font=LM_MATH)
greek(s) = mathrm(s)
units(s) = rich(" / (", s, ")"; font=LM_MATH)

export greek, math, mathrm, units
