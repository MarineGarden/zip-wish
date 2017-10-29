class FineEntries

  def self.get(module_size)

    result = Array.new(2**module_size) { |index| ("0"*(module_size - (binary = index.to_s(2)).length)).concat(binary) }
    result.pop(2**module_size - 1).shift(2**module_size - 2)

  end

end
begin

  #puts FineEntries.get(3).to_s

rescue => error
  puts error.message
ensure

end