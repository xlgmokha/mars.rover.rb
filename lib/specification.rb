class Specification
  def initialize(criteria)
    @criteria = criteria
  end
  def matches(item)
    @criteria.call(item)
  end
end
