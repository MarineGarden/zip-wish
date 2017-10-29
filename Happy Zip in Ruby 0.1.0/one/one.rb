class One

  def self.add(data)

    data_end = data.slice(-1)
    if(data_end == "0")

      data.slice(0...-1).concat("1")

    elsif(data_end == "1")

      change_need = (data.slice(0...-1).slice(/1+$/) || "").length + 1
      data.slice(0...change_need*(-1)).slice(0...-1).concat("1").concat("0"*change_need)

    end

  end

  def self.subtract(data)

    data_end = data.slice(-1)
    if(data_end == "1")

      data.slice(0...-1).concat("0")

    elsif(data_end == "0")

      change_need = (data.slice(0...-1).slice(/0+$/) || "").length + 1
      data.slice(0...change_need*(-1)).slice(0...-1).concat("0").concat("1"*change_need)

    end

  end

end
begin

  #puts One.add("111011011")
  #puts One.subtract("111011100")

rescue => error
  puts error.message
ensure

end