#copyright john morris beck 2026
common_spungus(){ sh|sh;};
advanced_spungus(){ awk '
function f(x,y){if($1==x){print y";";e=0}}
$0=="advanced_spungus"{s=!s;next};!s;s{
e=1;a=$1;b=$2;c=$3;
f("assign",b"="c$4$5)
f("declare",b" "c)
f("malloc",b"="a"("c")")
f("free",a"("b")")
f("control",b"("c"){")
f("case",a" "b":")
f("break",a)
f("default",a":")
f("}",a)
if(e||b c$5!~/^[a-zA-Z0-9_()*]*$/||
b c$5~/[a-zA-Z0-9_\)]\(/||
$4!~/^[<>\/*%&|!=|+-]*$/)exit 1}';};
