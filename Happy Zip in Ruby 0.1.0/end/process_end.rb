class ProcessEnd

  def self.clarify(data)

    data.match?(/^0+$|^1+$/)

  end

end
begin

  #puts ProcessEnd.clarify("111")

rescue => error
  puts error.message
ensure

end