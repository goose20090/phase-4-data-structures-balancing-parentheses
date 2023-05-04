class Stack

    attr_reader :stack

    attr_reader :limit

    def initialize limit = nil
        @stack = []
        @limit = limit
    end

    def push element
        if limit && stack.length >= limit
            raise "Stack Overflow"
        end
        stack.push(element)
    end

    def pop
        stack.pop
    end

    def peek
      # top of the stack LAST IN
        stack.last
    end

    def size
        stack.length
    end

    def empty?
      stack.empty?
    end
end
