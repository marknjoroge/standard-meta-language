(* Question 1 *)
fun first_answer f ls=  
    case ls of
    [] => raise NoAnswer
    | x::xs => case f(x) of
                NONE=> first_answer f xs
               |SOME v => v 

(* Question 2*)
fun do_until f1 f2 x = if f2(x) then f1(x) else ()

(* Question 3 *)
fun fact n = n * fact (n - 1);

(* Question 4 *)
fun map(f, l) =
 case l of
 [] => []
 | ls::ls' => f ls :: map(f, ls')

(* Question 5 *)
fun long_first str_list = List.foldl (fn(x,y) => if (String.size(x) <= String.size(y)) then y else x) "" str_list;
long_first["a", "abc", "defg", "hi", "jkl", "mnop", "qr"]

(* Question 6 *)
fun long_last str_list = List.foldl (fn(x,y) => if (String.size(x) < String.size(y)) then y else x) "" str_list;
long_last["a", "abc", "defg", "hi", "jkl", "mnop", "qr"]

(* Question 7 *)
fun reverse s = implode (foldl op:: [] (explode s));
reverse("hello");
