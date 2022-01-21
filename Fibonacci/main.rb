# frozen_string_literal: true

def fibs_aux(n)
  previous = 0
  result = 1

  (2..n).each do |_|
    temp = result
    result += previous
    previous = temp
  end

  result
end

def fibs(n)
  case n
  when 0 then 0
  when 1 then 1
  else
    fibs_aux(n)
  end
end

puts fibs(6)
