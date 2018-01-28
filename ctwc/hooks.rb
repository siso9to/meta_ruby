class String
  def self.inherited(subclass)
    puts "#{self}は#{subclass}に継承された"
  end
end

class MyClass < String; end

module M1
  def self.included(othermod)
    puts "M1は#{othermod}にインクルードされた"
  end
end

module M2
  def self.prepended(othermod)
    puts "M2は#{othermod}にプリペンドされた"
  end
end

class C
  include M1
  prepend M2
end