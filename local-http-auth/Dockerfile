FROM rabbitmq

RUN echo '[ \
  {rabbit, [{auth_backends, [rabbit_auth_backend_http]}]}, \
  {rabbitmq_amqp1_0, [{default_user, none},{default_vhost, <<"/">>},{protocol_strict_mode, false}]}, \
  {rabbitmq_auth_backend_http, \
   [{user_path,     "http://192.168.99.1:3005/user"}, \
    {vhost_path,    "http://192.168.99.1:3005/vhost"}, \
    {resource_path, "http://192.168.99.1:3005/resource"}]} \
].' > /etc/rabbitmq/rabbitmq.config

ADD http://www.rabbitmq.com/community-plugins/v3.6.x/rabbitmq_auth_backend_http-3.6.x-3dfe5950.ez /plugins/
RUN chmod 777 /plugins/*

RUN rabbitmq-plugins enable --offline rabbitmq_amqp1_0
RUN rabbitmq-plugins enable --offline rabbitmq_auth_backend_http
RUN rabbitmq-plugins enable --offline rabbitmq_auth_mechanism_ssl
