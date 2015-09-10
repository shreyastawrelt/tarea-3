class Node
    @cargo
    @next

  def __str__
    return @cargo
  end
end

puts "Enter elements into your list: "
input = gets

while node = Node.new(input)
  case node
  when "-1"
    break
  end
end


for i in 1...node.length
  node[i].next = node[i+1]
  if i == node.length
    node[i].next = None
  end
end


def printlist(node)
  while node
    puts node
    node = node.next
  end
  puts
end

class LinkedList
  @length = 0
  @head = None

  def addFirst
    node = Node(cargo)
    node.next = @@head
    @@head = node
    @@length = @@length + 1
  end
end
