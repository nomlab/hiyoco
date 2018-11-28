class Outlet
  def initialize(query)
    query_array = query.split(":")
    @type = query_array[0]
    @dest = query_array[1]
  end

  def apply(e)
    if @type == "slack" then
      start_time = Time.at(e.start.date.date.seconds)
      end_time = Time.at(e.end.date.date.seconds)
      stub = Hiyoco::Informant::Informant::Stub.new('0.0.0.0:50051', :this_channel_is_insecure)
      str = "Summary:#{e.summary}\nDescription:#{e.description}\nStart at #{start_time.strftime("%Y-%m-%d %H:%M")}\nEnd at #{end_time.strftime("%Y-%m-%d %H:%M")}\n"
      message = stub.say_event(Hiyoco::Calendar::Text.new(body: str )).result
      puts message
    end
  end

  attr_accessor :type, :dest
end
