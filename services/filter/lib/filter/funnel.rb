require "matcher"
require "action"
require "outlet"

class Funnel
  def initialize(query)
    @matcher = Matcher.new(query[0])
    @action = Action.new(query[1])
    @outlet = Outlet.new(query[2])
  end

  def apply(e)
    if @matcher.apply(e) then
      @action.apply(e)
    end
    @outlet.apply(e)
  end

  attr_accessor :matcher, :action, :outlet
end
