
(*1*)
let rec sumaimpare n =
  if n = 0 then 0
  else if n mod 2 = 1 then n + sumaimpare(n-1)
  else sumaimpare(n-1);;
  sumaimpare 5;;
(*2a*)
let rec patrat n =
  let aux = float_of_int n in
  if n = 0 then []
  else sqrt(aux) ::patrat(n-1);;
  patrat 5;;
(*2b*)
let rec filtru cond lista = match lista with
| []->[]
| head::tail when cond head -> head::(filtru cond tail)
| _::tail -> filtru cond tail
let r = filtru ( fun x -> x >= 8 ) [6;12;9]
let r2 = filtru ( fun x -> x  < 8 ) [6;12;9];;
(*3*)
let carti lista =
  let rec carti1 lista rez = match lista with
  |[]-> rez
  |(p1,p2,p3) :: tail when p2 >= 300 && p3 = "fantasy" -> carti1 tail ( p1 :: rez )
  |(p1,p2,p3) :: tail -> carti1 tail rez in
  carti1 lista [];;
  let r = carti [("Carte1",159,"crime");("Carte2",405,"fantasy");("Carte3",301,"sf");("Carte4",290,"fantasy");("Carte5",500,"fantasy")];;

