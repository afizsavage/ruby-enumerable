require_relative './myenumerable'

class MyList
  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each
    (0...@list.length).each do |i|
      yield @list[i]
    end
  end
end

list = MyList.new(2,4,6,8)

puts(list.all_items { |e| e < 5 })
puts(list.all_items { |e| e > 5 })
puts(list.any_items { |e| e == 2 })
puts(list.any_items { |e| e == 5 })
puts(list.filter_items(&:even?))
