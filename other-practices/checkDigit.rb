
def hongkong_idcard(hkid)
  if (hkid.match? /[A-Za-z]\d{6}\([Aa0-9]\)/) || (hkid.match? /[A-Za-z]\d{6}[Aa0-9]/)
    hkidarr = hkid.chars.reject{|x| x.match? /[\(\)]/}
    print hkidarr
    check1 = (36 * 9 + (hkidarr[0].upcase.ord - 55) * 8 + hkidarr[1].to_i * 7 + hkidarr[2].to_i * 6 + hkidarr[3].to_i * 5 + hkidarr[4].to_i * 4 + hkidarr[5].to_i * 3 + hkidarr[6].to_i * 2) % 11
    if (check1 == 0 && hkidarr[-1].to_i == 0) || (check1 == 1 && hkidarr[-1].upcase == "A")
      validid = true
    elsif check1 >= 2 && check1 <= 10
      (11 - check1 == hkidarr[-1].to_i) ? validid = true : validid = false
    else
      validid = false
      print "Error!\n"
    end
  #elsif (hkid.match? /[A-Za-z]{2}\d{6}\([Aa0-9]\)/) || (hkid.match? /[A-Za-z]{2}\d{6}[Aa0-9]/)
    
  else
    print "Invalid Hong Kong ID card format.\n"
  end
  
validid ? (puts "The Hong Kong ID card number has a correct check digit.") : (puts "The Hong Kong ID card number has a wrong check digit.")


end
