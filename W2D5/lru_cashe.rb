class LRUCashe
  attr_reader :cashe
  def initialize(num)
    @size = num
    @cashe = Array.new(num)
  end

  def add(element)
    idx = @cashe.find_index(element)
    unless idx == nil
      @cashe.delete_at(idx)
    elsif @cashe.count >= sieze
      @cashe.shift
      @cashe << element
    else
      @cashe << element
    end 
  end

  def count
    @cashe.size
  end

  def show
    p @cashe.reverse
  end

  private

end
