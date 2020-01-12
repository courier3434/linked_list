
class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    # Push a value onto the stack
    def push(value)
        @data = LinkedListNode.new(value, @data)
    end

  return the value to the user
    def pop
        return puts "nil" if @data.nil?
        @data = @data.next_node
    end

end

# Creates a new Stack object
stack = Stack.new


stack.push(node1)

stack.push(node2)

stack.push(node3)

stack.pop
stack.pop
stack.pop


def reverse_list(list)
    stack = Stack.new

    while list
        stack.push(list.value)
        list = list.next_node
    end
    
    return stack.data
end

#------------------------------------------
#THE GOAL

print_values(node3)

puts "-------"

revlist = reverse_list(node3)

print_values(revlist)
