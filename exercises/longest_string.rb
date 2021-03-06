# Method name: longest_string(list)
# Inputs:      a list of strings
# Returns:     the longest string in the list
# Prints:      Nothing
#
# For example, longest_string(["a", "zzzz", "c"]) should return "zzzz" since
# the other strings are 1 character long and "zzzz" is 4 characters long.
#
# To get the length of a string in the variable str, call str.length
# For example,
#   str = "zzzz"
#   str.length == 4

def longest_string(list)
  maior_string = list.first
  list.each do |palavra|
    if palavra.length > maior_string.length 
      maior_string = palavra
    end
  end
return maior_string
end

if __FILE__ == $PROGRAM_NAME
  # I'd advise putting some sanity checks here.
  # How else will you be sure your code does what you think it does?
  p longest_string(['longa_string', 'stringie', 'str']) == 'longa_string'
  p longest_string(["a", "zzzz", "c"]) == "zzzz"
  p longest_string(["a", "b", "c"]) == 'a' #Já que são todas do mesmo tamanho ele retorna a primeira
end
