using Test
using JuTeX: @decr!, @negate!
using JuTeX.FixPoint


@testset "JuTeX.jl" begin

function test_decr!(r::AbstractArray)
    for x in r
        y = x - 1
        @decr! x
        if x != y
            return false
        end
    end
    true
end

function test_negate!(r::AbstractArray)
    for x in r
        y = -x
        @negate! x
        if x != y
            return false
        end
    end
    true
end

@testset "macros.jl" begin
    @test test_decr!(-257:257)
    @test test_negate!(-257:257)
end

@testset "fixpoint.jl" begin
    @test UNITY*2 == TWO
end

end # JuTeX.jl