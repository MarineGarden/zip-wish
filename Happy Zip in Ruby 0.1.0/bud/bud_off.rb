require_relative "../opposite/opposite"
require_relative "../stem/stem_off"

class BudOff

  def self.proof(data)

    seed = data.slice(/0+|1+/)
    remained_data = data.slice(seed.length, data.length - seed.length)
    length_queue = []

    while(remained_data.length > 0)

      future_length = remained_data.slice(/0+|1+/).length
      length_queue.push(future_length)
      remained_data = remained_data.slice(future_length, remained_data.length - future_length)

    end

    stretch_point = seed.clone

    while(length_queue.length > 0)

      stretch_times = length_queue[0]
      length_queue.shift

      for i in 0...stretch_times

        seed = seed.concat(Opposite.make(stretch_point))
        seed = StemOff.proof(seed)

      end

      stretch_point = seed.clone

    end

    return seed

  end

end
begin

  puts BudOff.proof("11011")

rescue => error
  puts error.message
ensure

end