require_relative "../end/process_end"
require_relative "../cluster/cluster_on"

class StemOn

  def self.proof(data)

    length_queue = []

    until(ProcessEnd.clarify(data))

      compressed = ClusterOn.proof(data)
      length_queue.push(data.length - compressed.length)
      data = compressed

    end

    seed = [].push(data)
    is_seed_ones = data.slice(0) == "1"

    while(length_queue.length > 0)

      seed = seed.push((is_seed_ones ? "0" : "1")*(length_queue.pop))
      is_seed_ones = ! is_seed_ones

    end

    seed.join

  end

end
begin

  #puts StemOn.proof("11001011")

rescue => error
puts error.message
ensure

end