### formula: 40*100000/(x/TICKS_PER_FUNCTION) - 40*100000/(x_empty/TICKS_PER_FUNCTION)

scoreboard players operation #calc1 benchmark.var = #x1 benchmark.var
scoreboard players operation #calc1 benchmark.var /= TICKS_PER_FUNCTION benchmark.var
scoreboard players set #t1.0 benchmark.var 4000000
scoreboard players operation #t1.0 benchmark.var /= #calc1 benchmark.var

scoreboard players operation #calc1 benchmark.var = #x1_empty benchmark.var
scoreboard players operation #calc1 benchmark.var /= TICKS_PER_FUNCTION benchmark.var
scoreboard players set #calc2 benchmark.var 4000000
scoreboard players operation #calc2 benchmark.var /= #calc1 benchmark.var

scoreboard players operation #t1.0 benchmark.var -= #calc2 benchmark.var

scoreboard players operation #t1.-1 benchmark.var = #t1.0 benchmark.var
scoreboard players operation #t1.0 benchmark.var /= #100000 benchmark.var
scoreboard players operation #t1.-1 benchmark.var %= #100000 benchmark.var
scoreboard players operation #t1.-2 benchmark.var = #t1.-1 benchmark.var
scoreboard players operation #t1.-1 benchmark.var /= #10000 benchmark.var
scoreboard players operation #t1.-2 benchmark.var %= #10000 benchmark.var
scoreboard players operation #t1.-3 benchmark.var = #t1.-2 benchmark.var
scoreboard players operation #t1.-2 benchmark.var /= #1000 benchmark.var
scoreboard players operation #t1.-3 benchmark.var %= #1000 benchmark.var
scoreboard players operation #t1.-4 benchmark.var = #t1.-3 benchmark.var
scoreboard players operation #t1.-3 benchmark.var /= #100 benchmark.var
scoreboard players operation #t1.-4 benchmark.var %= #100 benchmark.var
scoreboard players operation #t1.-5 benchmark.var = #t1.-4 benchmark.var
scoreboard players operation #t1.-4 benchmark.var /= #10 benchmark.var
scoreboard players operation #t1.-5 benchmark.var %= #10 benchmark.var

scoreboard players operation #dt1 benchmark.var = #d1 benchmark.var
scoreboard players operation #dt1 benchmark.var > #d1_empty benchmark.var



scoreboard players operation #calc1 benchmark.var = #x2 benchmark.var
scoreboard players operation #calc1 benchmark.var /= TICKS_PER_FUNCTION benchmark.var
scoreboard players set #t2.0 benchmark.var 4000000
scoreboard players operation #t2.0 benchmark.var /= #calc1 benchmark.var

scoreboard players operation #calc1 benchmark.var = #x2_empty benchmark.var
scoreboard players operation #calc1 benchmark.var /= TICKS_PER_FUNCTION benchmark.var
scoreboard players set #calc2 benchmark.var 4000000
scoreboard players operation #calc2 benchmark.var /= #calc1 benchmark.var

scoreboard players operation #t2.0 benchmark.var -= #calc2 benchmark.var

scoreboard players operation #t2.-1 benchmark.var = #t2.0 benchmark.var
scoreboard players operation #t2.0 benchmark.var /= #100000 benchmark.var
scoreboard players operation #t2.-1 benchmark.var %= #100000 benchmark.var
scoreboard players operation #t2.-2 benchmark.var = #t2.-1 benchmark.var
scoreboard players operation #t2.-1 benchmark.var /= #10000 benchmark.var
scoreboard players operation #t2.-2 benchmark.var %= #10000 benchmark.var
scoreboard players operation #t2.-3 benchmark.var = #t2.-2 benchmark.var
scoreboard players operation #t2.-2 benchmark.var /= #1000 benchmark.var
scoreboard players operation #t2.-3 benchmark.var %= #1000 benchmark.var
scoreboard players operation #t2.-4 benchmark.var = #t2.-3 benchmark.var
scoreboard players operation #t2.-3 benchmark.var /= #100 benchmark.var
scoreboard players operation #t2.-4 benchmark.var %= #100 benchmark.var
scoreboard players operation #t2.-5 benchmark.var = #t2.-4 benchmark.var
scoreboard players operation #t2.-4 benchmark.var /= #10 benchmark.var
scoreboard players operation #t2.-5 benchmark.var %= #10 benchmark.var

scoreboard players operation #dt2 benchmark.var = #d2 benchmark.var
scoreboard players operation #dt2 benchmark.var > #d2_empty benchmark.var