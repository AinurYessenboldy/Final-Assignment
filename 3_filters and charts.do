*This part contains filtering opeartions and building of visualization on them. First, I wanted to have only observations with higher that 3000 price and year sooner than 2010. Then dealer and condition columns were dropped, to see dataset only with usable for me content. After this filter operations, size of remaining observations was visualized with bar graph, and distribution area was visualized with pie chart. Both of them were saved as gph files. In the end, I wanted to see basic statistics summary of remaining data and thus summarize function was used.

keep if price > 3000 & year > 2010
drop dealer condition
graph bar (count), over(size) title("Bar Chart for Size") ytitle("Count")
graph save "Graph" "C:\Users\Yessenboldy_Ainur\Desktop\Assignment\Bar_chart.gph"
graph pie, over(area) title("Pie Chart for Area")
graph save "Graph" "C:\Users\Yessenboldy_Ainur\Desktop\Assignment\pie_chart.gph"

summarize