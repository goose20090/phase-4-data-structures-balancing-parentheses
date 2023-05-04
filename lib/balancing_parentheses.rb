require_relative 'stack.rb'

def balancing_parentheses str
    
    stack = Stack.new

    str.each_char do |char|

        case char

        when "("
            stack.push(char)
        when ")"
            if stack.peek == "("
                stack.pop
            else
                stack.push(char)
            end
        end
    end
    stack.size
end