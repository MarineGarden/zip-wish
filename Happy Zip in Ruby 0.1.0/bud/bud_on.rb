require_relative "../stem/stem_on"
require_relative "../bud/bud_off"

class BudOn

  def self.proof(data)

    mask_off = StemOn.proof(data)
    possibility = ""

    for i in 1..mask_off.length - 1

      possibility = mask_off.slice(mask_off.length - i, i)
      if(possibility)

    end

  end

end
begin

  puts BudOff.proof("11011")

rescue => error
  puts error.message
ensure

end