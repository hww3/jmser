import Fins;
import Tools.Logging;

inherit JMSController;

constant subscribes_to = Constants.hello_world;

void on_message(object request)
{
  Log.debug("*** Got message %O from %O with body %s.", request->get_message_id(),   
	request->get_destination(), request->body);
}
