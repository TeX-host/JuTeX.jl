"""PART 7: ARITHMETIC WITH SCALED DIMENSIONS.
S99x109_P38x41
"""
module FixPoint

#= export =#
export UNITY, TWO, INF_BAD
export half, round_decimals, mult_and_add, x_over_n, xn_over_d, badness, badness, print_scaled

#= constant =#
"[#101] `2^{16}`, rep 1.00000"
const UNITY =   65536
"[#101] `2^{17}, rep 2.00000"
const TWO =     131072

"[#108]: infinitely bad value"
const INF_BAD = 10000

#= global var =#
"[#104] has arithmetic overflow occurred recently?"
arith_error = false
"[#104] amount subtracted to get an exact division"
tex_remainder = 0


#= functions =#
"""[#105] 455, 716, 1240. 
Note: `07777777777L == 1073741823L`
"""
nx_plus_y(n, x, y) = mult_and_add(n, x, y, 0o77_7777_7777)

"""[#105] 1240.
Note: `017777777777L == 2147483647L`
"""
mult_integers(n, x) = mult_and_add(n, x, 0, 0o177_7777_7777)

"""[#100] x div 2

div(x, 2, RoundNearestTiesUp)
"""
function half(x::Integer)
    if isodd(x)
        (x + 1) / 2
    else
        x / 2
    end
end

"""[#102]: create a scaled integer from a given decimal fraction.
{ dig[i], | i = k-1, 0 ≤ k ≤ 17 }
"""
function round_decimals(k, dig) end

"[#103]: prints scaled real, rounded to five digits"
function print_scaled(s) end

"[#105]: return `nx + y`"
function mult_and_add(n, x, y, max_ans) end

"[#106]: `x / n`"
function x_over_n(x, n) end

"[#107]: `x * (n / d)`"
function xn_over_d(x, n, d) end

"""[#108]: compute the “badness” of glue.
given t >= 0
when a total t is supposed to be made from amounts that sum to s.

+ badness = 100 * (t/s)^3
+ badness(t + 1,s) ≥ badness(t,s) ≥ badness(t,s + 1)
"""
function badness(t, s) end

end # FixPoint