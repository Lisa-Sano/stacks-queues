# added a namespace module because apparently Thread::Queue is already a thing
module DataStructs

  class Queue
    def initialize
      @store = Array.new
    end
    
    def dequeue
      @store.shift
    end
    
    def enqueue(element)
      @store.push(element)
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
end
