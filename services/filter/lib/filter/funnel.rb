require "matcher"
require "action"
require "outlet"

class Funnel
  def initialize(dsl)
    @matcher = Matcher.new(dsl[0])
    @action = Action.new(dsl[1])
    @outlet = Outlet.new(dsl[2])
  end

  def apply(e)
    if @matcher.apply(e) then
      @action.apply(e)
    end
    @outlet.apply(e)
  end

  attr_accessor :matcher, :action, :outlet
end
