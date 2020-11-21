# Some julia inline functions to replace C Macros

"Mark TeX code group"
macro group(name, code)
    code |> esc
end

"x--"
macro decr!(x)
    :(x -= 1) |> esc
end

"x = -x"
macro negate!(x)
    :(x = -x) |> esc
end
