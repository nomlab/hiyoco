class Matcher
  def initialize(dsl)
    dsl_array = dsl.split(":")
    @event_item = dsl_array[0]
    @arg = dsl_array[1]
  end

  def apply(e)
    return true if eval("e.#{event_item}.include?(\"#{arg}\")")
  end

  attr_accessor :event_item, :arg
end
