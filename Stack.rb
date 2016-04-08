class Stack
  def initialize
    @store = Array.new
  end
  
  def pop
    @store.pop
  end
  
  def push(element)
    @store << element
  end
  
  def size
    @store.length
  end

  def empty?
    size == 0
  end

  # make a to_s for easier testing
  def to_s
    @store.to_s
  end
end
