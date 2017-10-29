require_relative "fine_entries"
require_relative "../stem/stem_on"
require_relative "../stem/stem_off"

class TestForStem

  begin

    FineEntries.get(8).each { |item| item == StemOff.proof(StemOn.proof(item)) ? next : puts(item + " Wrong!")}
    puts "Completed."

  rescue => error
    puts error.message
  ensure

  end

end