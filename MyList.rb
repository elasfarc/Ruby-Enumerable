class MyList 

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


x = MyList.new(5,8,9)
 x.each do |num|
  p num + 1
 end

