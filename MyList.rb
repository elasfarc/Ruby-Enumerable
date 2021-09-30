require_relative 'MyEnumerable.rb'

class MyList 

  include Enumerables

  def initialize(*args)
    @list = args
  end

  def each
    i = 0
    while i < @list.length 
      yield @list[i] if block_given?
      i += 1
    end
    
  end


end


# x = MyList.new(5,8,9)
#  x.all? do |num|
#   10
#  end

list = MyList.new(1, 2, 3, 4)
list.all? {|e| e < 5}
list.all? {|e| e > 5}

p list.any? {|e| e == 2}
p list.any? {|e| e == 5}

list.filter {|e| e.even?}
