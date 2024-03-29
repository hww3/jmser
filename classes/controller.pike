import Fins;
inherit Fins.FinsController;
inherit Fins.JMSMessenger;

static object queue;

void start()
{
  queue = load_controller("queue");
}

public void index(Request id, Response response, mixed args) {
  response->redirect(action_url(hello));
}

public void hello(Request id, Response response, mixed ... args)
{
  response->set_data("<form action=" + action_url(publish_msg2) + "><input type=submit value=tickleme></form>");
}

public void publish_msg2(Request id, Response response, mixed ... args)
{
  publish(Constants.hello_world, "hi!");
  response->redirect(action_url(hello));
}
