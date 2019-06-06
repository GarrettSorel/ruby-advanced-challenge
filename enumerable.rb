module Enumerable

  def my_each
    for i in 0...self.length
      yield(self[i])
    end
  end

  def my_each_with_index
    for i in 0...self.length
      yield(self[i], i)
    end
  end

  def my_select
    result = []

    self.my_each do |e|
      result << e if yield(e)
    end

    result

  end

  def my_all
    start = true

    for i in 0...self.length
      start = false if !yield(i)
    end

   puts start

  end

  def my_any
    start = false

    for i in 0...self.length
      start = true if yield(i)
    end

    puts start
  end

  def my_none
    start = true

    for i in 0...self.length
      start = false if yield(i)
    end

    puts start
  end

  def my_count
  end

  def my_map
  end

  def my_inject
  end

end


arr = [1,2,3,4,5]
#arr.my_each { |x| puts x + 2 }
#arr.my_each_with_index { |x, i| puts "#{i}: #{x}" }
#arr.my_select { |x| x % 2 == 0}
#arr.my_all { |x| x.is_a? Integer }
#arr.my_any { |x| x % 2 == 0 }
arr.my_none { |x| x.is_a? String}
