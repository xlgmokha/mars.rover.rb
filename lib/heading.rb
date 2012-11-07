module Heading
  def represents?(direction)
    self.class.name.downcase.to_sym == direction
  end
  def to_s
    self.class.name[0]
  end
end
