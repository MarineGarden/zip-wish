require_relative "../cluster/cluster_off"

class StemOff

  def self.proof(data)

    seed = data.slice(/0+|1+/)
    remained_data = data.slice(seed.length, data.length - seed.length)
    length_queue = []

    while(remained_data.length > 0)

      future_length = remained_data.slice(/0+|1+/).length
      length_queue.push(future_length)
      remained_data = remained_data.slice(future_length, remained_data.length - future_length)

    end

    while(length_queue.length > 0)

      seed = ClusterOff.proof(seed, seed.length + length_queue.shift)

    end

    return seed

  end

end
begin

  #puts StemOff.proof("11011101")

rescue => error
  puts error.message
ensure

end