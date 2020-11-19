# Some julia inline functions to replace C Macros

"x--"
macro decr!(x)
    :(x -= 1) |> esc
end

"x = -x"
macro negate!(x)
    :(x = -x) |> esc
end
