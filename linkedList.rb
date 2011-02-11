# Linked List representation - somewhat taken from 
# http://www.koders.com/ruby/fidCB5A463AB556F4FFD20E03139FF59563B118D108.aspx?s=thread

class LinkedList

  def initialize
		@front = Node.new nil
		@size = 0
	end

# show size
	def size
		return @size
	end

# add to front
  def add_front(object)
		node = Node.new object
		if @size == 0
			@front = node
		elsif @size > 0
			node.next = @front.next
			@front.next = node
		end

		@size += 1	 # increment the size
		
	end
# peek
	def peek
		if @size > 0
			return @front.object
		end
	end
# remove from front

 
	# subclass Node
	# each  Node is an element of the linked list
	class Node
		
		attr_reader :next
		attr_reader :object

		attr_writer :next

		def initialize(object)
			@object = object
		end

	end
end
