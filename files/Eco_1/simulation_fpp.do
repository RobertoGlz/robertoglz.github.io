/* ----------------------------------------------------------------------------
							Intro to Microeconomics
							
	Author: Roberto Gonzalez
	Date: August 20, 2024
	
	Objective: Simulate production possibility frontier
---------------------------------------------------------------------------- */

clear

/* Set number of observations */
set obs 21

/* Generate allocation of workers to production of each good */
generate l_croissant = (_n - 1)
generate l_muffins = 20 - l_croissant

/* Generate number of ovens */
generate oven = 10

/* Simulate production */
generate y_croissant = oven^(2/3)*l_croissant^(1/3)
generate y_muffins = oven^(2/3)*l_muffins^(1/3)

/* Make low bound for area to be shaded */
generate lowbound = 0

/* Plot relationship  between production of both goods */
twoway (scatter y_croissant y_muffins, connect(direct) color("117 0 20") xlabel(0(3)15) ///
	ylabel(0(3)15) msymbol(T) msize(medlarge)) ///
	(rarea y_croissant lowbound y_muffins, color("117 0 20%20")), ///
	legend(order(2 "Producción Factible") position(2) ring(0) region(lcolor(black))) ///
	text(13.3 0.8 "(L{subscript:C}=20, L{subscript:M}=0)", size(small)) ///
	text(0.6 13.7 "(L{subscript:C}=0, L{subscript:M}=20)", size(small)) ///
	ytitle("Producción de" "Croissants") xtitle("Producción de" "Muffins") ///
	note("{it:Nota:} Frontera de posibilidades de producción manteniendo constante el número de hornos pero " ///
	"cambiando la asignación de trabajadores")