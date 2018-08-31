class LRUCashe
  attr_reader: :cashe
  def initialize(num)
    @cashe = Array.new(num)
  end

  def add(element)
    idx = @cashe.find_index(element)
    unless idx == nil
      @cashe.delete_at(idx)
    end
    @cashe << element
  end

  def count
    @cashe.size
  end

  def show
    p @cashe 
  end

  private

end
