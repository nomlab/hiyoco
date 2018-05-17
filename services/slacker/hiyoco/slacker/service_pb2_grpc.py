# Generated by the gRPC Python protocol compiler plugin. DO NOT EDIT!
import grpc

from hiyoco.calendar import event_pb2 as hiyoco_dot_calendar_dot_event__pb2


class SlackStub(object):
  # missing associated documentation comment in .proto file
  pass

  def __init__(self, channel):
    """Constructor.

    Args:
      channel: A grpc.Channel.
    """
    self.SayEvent = channel.unary_unary(
        '/hiyoco.slacker.Slack/SayEvent',
        request_serializer=hiyoco_dot_calendar_dot_event__pb2.Event.SerializeToString,
        response_deserializer=hiyoco_dot_calendar_dot_event__pb2.Result.FromString,
        )


class SlackServicer(object):
  # missing associated documentation comment in .proto file
  pass

  def SayEvent(self, request, context):
    # missing associated documentation comment in .proto file
    pass
    context.set_code(grpc.StatusCode.UNIMPLEMENTED)
    context.set_details('Method not implemented!')
    raise NotImplementedError('Method not implemented!')


def add_SlackServicer_to_server(servicer, server):
  rpc_method_handlers = {
      'SayEvent': grpc.unary_unary_rpc_method_handler(
          servicer.SayEvent,
          request_deserializer=hiyoco_dot_calendar_dot_event__pb2.Event.FromString,
          response_serializer=hiyoco_dot_calendar_dot_event__pb2.Result.SerializeToString,
      ),
  }
  generic_handler = grpc.method_handlers_generic_handler(
      'hiyoco.slacker.Slack', rpc_method_handlers)
  server.add_generic_rpc_handlers((generic_handler,))
