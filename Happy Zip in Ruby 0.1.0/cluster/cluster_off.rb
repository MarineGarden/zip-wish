require_relative "../one/one"

class ClusterOff

  def self.proof(data, future_length)

    one_added_to_left = "1".concat(data)
    data_shift = One.subtract(one_added_to_left)
    ("0"*(future_length - data_shift.length)).concat(data_shift)

  end

end
begin

  #puts ClusterOff.proof("10", 5)

rescue => error
  puts error.message
ensure

end