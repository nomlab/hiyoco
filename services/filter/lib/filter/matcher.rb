class Matcher
  def initialize(query)
    query_array = query.split(":")
    @event_item = query_array[0]
    @arg = query_array[1]
  end

  def apply(e)
    return true if eval("e.#{event_item}.include?(\"#{arg}\")")
  end

  attr_accessor :event_item, :arg
end
