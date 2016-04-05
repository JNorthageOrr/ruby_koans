def score(dice)
  # You need to write this method
  total = 0
  possible = [1,2,3,4,5]
  #copy = Array.new
  copy = Array.new	
  

  possible.each do |item|
	copy << dice  
  	p 'value of copy', copy
  	kept = copy[0].keep_if do |e| e == item end
    p 'value of kept: ', kept
    if kept.length == 3
      if kept[0] == 1
        total += 1000
        p 'increment + 1000'
      else
        total += kept[0] * 100
        p 'increment ', (kept[0] * 100)
      end
    elsif kept[0] == 1 && kept[1] == 1
      total += 200
      p 'increment 200'
    elsif kept[0] == 1
      total += 100
      p 'increment 100'
    elsif kept[0] == 5 && kept[1] == 5
      total += 100
      p 'increment 100'
    elsif kept[0] == 5
      total += 50
      p 'increment 50'
    end
  
  p 'total', total
  end
  return total 
end

score([1,1,3,4,5])