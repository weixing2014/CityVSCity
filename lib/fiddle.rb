class Dummy
  def method_missing(m, *args, &block)
    if m.to_s
    puts "There's no method called #{m} here -- please try again."
    else
      super
    end
  end
end
p Dummy.new.respond_to?"hello"