class Board
  attr_accessor (:spaces)

  def initialize
    @spaces = []
    (1..3).each do |num_location|
      ["a", "b", "c"].each do |letter_location|
        @spaces << Space.new({:number_coord => num_location, :letter_coord => letter_location})
      end
    end
  end
end
