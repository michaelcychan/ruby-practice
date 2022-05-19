
def check_email(str_email)
     str_email.match? /^[a-zA-Z]\w{1,4}@\w{2,10}\.[a-z]{2,3}$/
end
#print check_email("a111@gmail.com8")  #returns false
##print check_email("a111@gmail.com8")  #returns true
#

puts "Please enter an email:"
str = gets.chomp
print check_email(str)
