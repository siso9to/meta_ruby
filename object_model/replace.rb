class Array
  def replace(original, replacement)
    map {|e| e == original ? replacement : e }
  end
end



