
class Array
  def iterate!(block)
    self.each_with_index do |value, index|
      self[index] = block.call(value)
    end
  end
end

array = [1, 2, 3, 4]

array.iterate!(Proc.new do |n|
  n ** 2
end)

puts array.inspect