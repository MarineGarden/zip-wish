class Opposite

  def self.make(binary_string)

    binary_string.split("").map { |item| item == "0" ? "1" : "0" }.join

  end

end
begin

  #puts Opposite.make("11011101")

rescue => error
  puts error.message
ensure

end