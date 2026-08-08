#copyright john morris beck 2026
common_spungus(){ sh|sh;};
advanced_spungus(){ awk '
function f(a,b){if($2==a){print b";";d=1}}
$0=="advanced_spungus"{s=!s;next};!s;s{
f("assign",$3"="$4$5$6)
f("declare",$3" "$4)
f("malloc",$3"="$2"("$4")")
f("free",$2"("$3")")
f("control",$3"("$4"){")
f("case",$2" "$3":")
f("break",$2)
f("default",$2":")
f("}",$2)
c=c||$3$4$6!~/^[a-zA-Z0-9_()*]*$/;
c=c||$3$4$6~/[a-zA-Z0-9_\)]\(/;
if(!d||c||$5!~/^[<>\/*%&|!=|+-]*$/)exit 1;d=0}';};
