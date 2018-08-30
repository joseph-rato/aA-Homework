def sluggish_octopus(arr)
  ans_fish = [nil,0]
  arr.each do |fish|
    fish_let_counter = 0
    fish.chars.each_index do |i|
      fish_let_counter += 1
      if (i + 1) == fish.length && fish_let_counter > ans_fish[1]
        ans_fish = [fish, fish_let_counter]
      end
    end
  end
  ans_fish[0]
end

def dominant_octopus(arr)
return arr.first if arr.length == 1
half = arr.length / 2
left = dominant_octopus(arr.take(half))
right = dominant_octopus(arr.drop(half))
  case left <=> right
  when 1
    return left
  when -1
    return right
  when 0
    return left
  end 
end
