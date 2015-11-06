class Lexiconomitron
  def eat_t(input)
    input.downcase.delete "t"
  end

  def shazam(input)
    output = input.map do |word|
      eat_t(word.reverse)
    end
    [output.first, output.last]
  end

  def oompa_loompa(input)
    input.delete_if {|word| word.length > 3}
  end
end
