## Rozwiązanie zadania:

1. Jeden z testów został zmodyfikowany
w komicie `9fdaf3f`.

2. Przechodzę do poprzedniego komitu (`69b5239`) i uruchamiam test:
```
git checkout 69b5239
swipl quicksort.pl tests.pl
```
Rzeczywiście jeden z testów kończy się błędem
```
% PL-Unit: qs .
ERROR: /home/kuba/UWr/PWI/quicksort17/tests.pl:17:
        /home/kuba/UWr/PWI/quicksort17/tests.pl:9:
        test quicksort: failed

 done
% 1 test failed
% 1 tests passed
```

3. Szukam komitu, w którym test jeszcze przechodził. Można by w tym celu wykorzystać `git bisect` ale komitów do sprawdzenia jest tylko 4. Okazuje się, że jeszcze dwa komity wcześnie (do których przeszedłem używając polecenia `git checkout HEAD~1`), test kończył się pomyślnie.

4. Wracam do najnowszego komita, przywracam wcześniejszą wersję pliku z testami:
```
git checkout master
git revert 9fdaf3f
```
i naprawiam program dodając do `quicksort.pl` linię `project_dedalus_quicksort([],[]).`.

Uruchamiam testy i tak jak można się spodziewać program działa już poprawnie.

## Oryginalny opis:

Project Dedalus, funkcja quicksort.
Wymaga: swi-prolog, wersja co najmniej 6.6.6

Aby uruchomić, wystarczy wpisać 
swipl quicksort.pl

Aby przetestować, wpisać
swipl quicksort.pl tests.pl

