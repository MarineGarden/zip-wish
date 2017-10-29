require_relative "fine_entries"
require_relative "../cluster/cluster_on"
require_relative "../cluster/cluster_off"

class TestForCluster

  begin

    FineEntries.get(8).each { |item| item == ClusterOff.proof(ClusterOn.proof(item), 8) ? next : puts(item + " Wrong!")}
    puts "Completed."

  rescue => error
    puts error.message
  ensure

  end

end