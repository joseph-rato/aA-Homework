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

class Array

  def merge_sort(&prc)
    prc ||= Proc.new {|x,y| x <=> y}
    return arr.first if arr.length == 1
    half = arr.length / 2
    left = (arr.take(half)).merge_sort(&prc)
    right = (arr.drop(half)).merge_sort(&prc)
    Array.merge_sort(left, right, &prc)
  end
  def merge_sort(left, right, &prc)
    ans = []
    until left.empty? || right.empty?
      case prc.call(left.first, right.first)
      when 1
        ans << right.shift
      when -1
        ans << left.shift
      when 0
        ans << left.shift
        ans << right.shift
      end
    end
    ans + left + right
  end
end

def dominant_octopus(arr)
  prc = Proc.new {|x,y| y.size <=> x.size}
  arr.merge_sort(&prc)[0]
end

def linear_biggest_fish(fishes)
  ans = ""
  fishes.each do |fish|
    if fish.length > ans.length
      ans = fish.length
    end
  end
  ans
end
