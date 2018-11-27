class Action
  def initialize(dsl)
    dsl_array = dsl.split(":")
    @type = dsl_array[0]
    @event_item = dsl_array[1]
  end

  def apply(e)
    eval("e.#{event_item} = ''") if @type == "hide"
  end

  attr_accessor :type, :event_item
end
