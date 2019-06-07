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
    count = 0

    for i in 0...self.length
      count += 1 if yield(i)
    end

    puts count
  end

  def my_map(proc)
    result = []

    self.my_each do |e|
      result << proc.call(e)
    end

    puts result
  end

  def my_inject(total=nil)
    for i in 0...self.length
      total = yield(total, i)
    end
    puts total
  end

end


arr = [2,3,4,5]
proc = Proc.new
#arr.my_each { |x| puts x + 2 }
#arr.my_each_with_index { |x, i| puts "#{i}: #{x}" }
#arr.my_select { |x| x % 2 == 0}
#arr.my_all { |x| x.is_a? Integer }
#arr.my_any { |x| x % 2 == 0 }
#arr.my_none { |x| x.is_a? String}
#arr.my_count { |x| x.is_a? String }
arr.my_map { |x| x + 5 }
