class Intcode
  def self.execute(intcode)
    i = 0
    done = false

    until done do
      case intcode[i]
      when 1
        intcode[intcode[i + 3]] = intcode[intcode[i + 1]] + intcode[intcode[i + 2]]
      when 2
        intcode[intcode[i + 3]] = intcode[intcode[i + 1]] * intcode[intcode[i + 2]]
      when 99
        done = true
      else
        raise ArgumentError "Unknown intcode: #{intcode[i]}"
      end
      i += 4
    end

    intcode
  end
end
