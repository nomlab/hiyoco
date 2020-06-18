class Action
  def initialize(query)
    query_array = query.split(":")
    @type = query_array[0]
    @event_item = query_array[1]
  end

  def apply(e)
    eval("e.#{event_item} = ''") if @type == "hide"
  end

  attr_accessor :type, :event_item
end
