
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
