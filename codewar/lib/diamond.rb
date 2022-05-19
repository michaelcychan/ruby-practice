

def diamond(n)
  # Make some diamonds!
  return nil if n < 0 || n.even?
  output = ""
  i = 1
  while i <= n do
    line = ("*" * i).rjust(n / 2 + )
    output << line + "\n"
    i += 2
  end
  i -= 4
  while i > 0 do
    line = ("*" * i).rjust(n / 2 + 1)
    output << line + "\n"
    i -= 2
  end
  return output
end