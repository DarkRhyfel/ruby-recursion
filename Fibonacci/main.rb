# frozen_string_literal: true

def fibs_aux(num)
  previous = 0
  result = 1

  (2..num).each do |_|
    temp = result
    result += previous
    previous = temp
  end

  result
end

def fibs(num)
  case num
  when 0 then 0
  when 1 then 1
  else
    fibs_aux(num)
  end
end

puts fibs(10)

def fibs_rec_aux(num, next_num, current)
  num.zero? ? current : fibs_rec_aux(num - 1, next_num + current, next_num)
end

def fibs_rec(num)
  fibs_rec_aux(num, 1, 0)
end

puts fibs_rec(10)
