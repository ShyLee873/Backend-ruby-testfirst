def ftoc(far)
    cel = (far.to_i - 32) * 5.0 / 9.0
    cel.round
end

def ctof(cel)
    far = (cel.to_i * 9.0 / 5.0) + 32
    far.round(1)
end