#= JuTeX types =#

#= Basic types =#
const Boolean = Bool

"size_t"
const Pointer = UInt
const UChar = UInt8


#= [#18] Types in the outer block
## Sections
    18, 25, 38, 101, 109,
    113, 150, 212, 269, 300,
    [548], [594], 920, 925.

## All types
    #18: ASCIICode::UChar(8)
    #25: EightBits::UChar(8)
    #38: PackedASCIICode::UChar(8)
    #101: Scaled::Integer(64)
    #101: NonNegativeInteger::UInteger(64)
    #101: SmallNumber::UChar(8)
    #109: GlueRatio::Real(64)
    #113: QuarterWord(8=>16)
    #113: HalfWord(16=>32)
    #113: TwoHalves(64)
    #113: FourQuarters(64)
    #113: MemoryWord(64)
    #150: GlueOrd(8)
    #212: ListStateRecord(366)
    #269: GroupCode(8)
    #300: InStateRecord(1344)
    #920: TriePointer::Pointer(64)
    #925: HyphPointer::Pointer(64)
=#

@group "S25x37_P13x18" begin
const EightBits = missing
end # S25x37_P13x18

const PackedASCIICode = missing

""" [p38#101]: `Scaled::Int(64)` = [−2^{64}, 2^{64})
"""
const Scaled = Int64

const NonNegativeInteger = missing
""" [p38#101]: `SmallNumber::UChar(8)` = [0, 255]
only need: (6bit)[0, 63] .
"""
const SmallNumber = UChar
const GlueRatio = missing

# S110x114_P42x43
@group "S110x114_P42x43" begin
const QuarterWord = missing
const HalfWord = missing

struct TwoHalves end
struct FourQuarters end
struct MemoryWord end
end # S110x114_P42x43

struct GlueOrd end
struct GroupCode end
struct TriePointer end
struct HyphPointer end
