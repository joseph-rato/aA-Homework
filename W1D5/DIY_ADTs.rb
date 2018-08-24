
class Stack
  attr_reader :stack
  def initialize
    @stack = []
  end

  def push(el)
    stack.push(el)
  end

  def pop
    stack.pop
  end

  def peek
    stack[-1]
  end

end

class Queue
  attr_reader :queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    queue.unshift(el)
  end

  def dequeue
    queue.pop
  end

  def peek
    queue[-1]
  end

end

class Map
  attr_reader :map
  def initialize
    @map = []
  end

  def set(key, value)
    return @map << [key, value] if @map.empty?
    @map.each do |array_pairs|
      if array_pairs[0] == key
        array_pairs[-1] = value
        return array_pairs
      else
        @map << [key, value]
        return [key, value]
      end
    end
  end

  def get(key)
    @map.each do |array_pairs|
      if array_pairs[0] == key
        return array_pairs[-1]
      end
    end
    nil
  end

  def delete(key)
    map.each_index do |i_array_pairs|
      if map[i_array_pairs][0] == key
        map.delete_at(i_array_pairs)
      end
    end
  end

  def show
    p map 
  end

end
