require_relative "../one/one"

class ClusterOn

  def self.proof(data)

    data_shift = One.add(data)
    left_zeros_removed = data_shift.slice(/1+.*/)
    left_zeros_removed.slice(1, left_zeros_removed.length - 1)

  end

end
begin

  #puts ClusterOn.proof("00101")

rescue => error
  puts error.message
ensure

end