!# usr/bin/env ruby

def hamming(n)
  hamming = 1
  testnum = 2
  nth = 1
    while nth < n do
      temp = testnum
      while temp % 2 == 0 do
        temp = temp / 2
      end
      while temp % 3 == 0 do
        temp = temp / 3
      end
      while temp % 5 == 0 do
        temp = temp / 5
      end
      if temp == 1
        hamming = testnum 
        nth += 1
      end
      testnum += 1
    end
  return hamming    
end