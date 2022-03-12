module MyEnumerable
    def all_items
      each { |item| return false unless yield(item) }
      true
    end
  
    def any_items
      each { |item| return true if yield(item) }
      false
    end
  
    def filter_items
      result = []
      each { |item| result << item if yield item }
      result
    end
  end