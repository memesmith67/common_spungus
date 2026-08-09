#copyright john morris beck 2026
common_spungus(){ sh|sh;};
advanced_spungus(){ awk '
function f(x,y){if($1==x){print y";";e=0}}
$0=="advanced_spungus"{s=!s;next};!s;s{e=1;
f("declare",$2" "$3)
f("assign",$2"="$3$4$5)
f("malloc",$2"="$1"("$3")")
f("free",$1"("$2")")
f("switch",$1"("$2"){")
f("while",$1"("$2"){")
f("case",$1" "$2":")
f("break",$1)
f("default",$1":")
f("}",$1)
if(e||$2$3$5!~/^[a-zA-Z0-9_()*]*$/||
$2$3$5~/[a-zA-Z0-9_\)]\(/||
$4!~/^[<>\/*%&|!=|+-]*$/){
print ";=;";exit 1}}';};
