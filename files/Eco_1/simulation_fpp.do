/* ----------------------------------------------------------------------------
							Intro to Microeconomics
							
	Author: Roberto Gonzalez
	Date: August 20, 2024
	
	Objective: Simulate production possibility frontier
---------------------------------------------------------------------------- */

/* Add your local working directory for the plots to be exported to the appropriate folder */
if "`c(username)'" == "Rob_9" {
	global main "C:/Users/Rob_9/Documents/ITAM/Eco 1"
}
else {
	global main "Your/local/path"
}

/* Create folder if it does not exist already */
capture mkdir "${main}/fpp"

clear

/* Set number of observations */
set obs 21

/* Generate allocation of workers to production of each good */
generate l_croissant = (_n - 1)
generate l_muffins = 20 - l_croissant

/* Generate number of ovens */
generate oven = 10

/* Simulate production with constant opportunity cost */
generate y_c_constant = (1/10)*oven*l_croissant
generate y_m_constant = (1/10)*oven*l_muffins

/* Simulate concave production */
generate y_c_concave = oven^(2/3)*l_croissant^(1/3)
generate y_m_concave = oven^(2/3)*l_muffins^(1/3)

/* Simulate convex production */
generate y_c_convex = (1/10)*oven^(1/3)*l_croissant^(3/2)
generate y_m_convex = (1/10)*oven^(1/3)*l_muffins^(3/2)

/* Make low bound for area to be shaded */
generate lowbound = 0

/* Plot relationship between production of both goods with constant opp cost */
twoway (scatter y_c_constant y_m_constant, connect(direct) color("117 0 20") xlabel(0(4)22) ///
	ylabel(0(4)22) msymbol(T) msize(medlarge)) ///
	(rarea y_c_constant lowbound y_m_constant, color("117 0 20%20")), ///
	legend(order(2 "Producción Factible") position(2) ring(0) region(lcolor(black))) ///
	text(21 1.3 "(L{subscript:C}=20, L{subscript:M}=0)", size(small)) ///
	text(2.5 20.6 "(L{subscript:C}=0, L{subscript:M}=20)", size(small) orient(vertical)) ///
	ytitle("Producción de" "Croissants") xtitle("Producción de" "Muffins") ///
	note("{it:Nota:} Frontera de posibilidades de producción manteniendo constante el número de hornos pero " ///
	"cambiando la asignación de trabajadores. Costo de oportunidad constante.")

graph export "${main}/fpp/constant_oppcost.pdf", replace	
	
/* Plot relationship between production of both goods with increasing opp cost */
twoway (scatter y_c_concave y_m_concave, connect(direct) color("117 0 20") xlabel(0(3)15) ///
	ylabel(0(3)15) msymbol(T) msize(medlarge)) ///
	(rarea y_c_concave lowbound y_m_concave, color("117 0 20%20")), ///
	legend(order(2 "Producción Factible") position(2) ring(0) region(lcolor(black))) ///
	text(13.3 0.8 "(L{subscript:C}=20, L{subscript:M}=0)", size(small)) ///
	text(0.6 13.7 "(L{subscript:C}=0, L{subscript:M}=20)", size(small)) ///
	ytitle("Producción de" "Croissants") xtitle("Producción de" "Muffins") ///
	note("{it:Nota:} Frontera de posibilidades de producción manteniendo constante el número de hornos pero " ///
	"cambiando la asignación de trabajadores. Costo de oportunidad creciente.")

graph export "${main}/fpp/increasing_oppcost.pdf", replace
	
/* Plot relationship between production of both goods with decreasing opp cost */
twoway (scatter y_c_convex y_m_convex, connect(direct) color("117 0 20") xlabel(0(4)20) ///
	ylabel(0(4)20) msymbol(T) msize(medlarge)) ///
	(rarea y_c_convex lowbound y_m_convex, color("117 0 20%20")), ///
	legend(order(2 "Producción Factible") position(2) ring(0) region(lcolor(black))) ///
	text(19.5 1.6 "(L{subscript:C}=20, L{subscript:M}=0)", size(small)) ///
	text(2.5 19.7 "(L{subscript:C}=0, L{subscript:M}=20)", size(small) orient(vertical)) ///
	ytitle("Producción de" "Croissants") xtitle("Producción de" "Muffins") ///
	note("{it:Nota:} Frontera de posibilidades de producción manteniendo constante el número de hornos pero " ///
	"cambiando la asignación de trabajadores. Costo de oportunidad decreciente.")
	
graph export "${main}/fpp/decreasing_oppcost.pdf", replace