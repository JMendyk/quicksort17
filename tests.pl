:- begin_tests(qs).
:- use_module(library(lists)).

test(project_dedalus_quicksort,[nondet]) :-
  L = [4,5,1],
  project_dedalus_quicksort(L, Sorted), 
  sort(L, Sorted).

test(quicksort,[nondet]) :-
  randseq(15,15,L),
  project_dedalus_quicksort(L, Sorted),
  sort(L, Sorted).

:- end_tests(qs).


:- run_tests.
