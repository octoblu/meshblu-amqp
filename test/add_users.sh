#!/bin/bash

rabbitmqctl add_user meshblu judgementday
rabbitmqctl set_permissions meshblu ".*" ".*" ".*"
rabbitmqctl add_user some-uuid some-token
rabbitmqctl set_permissions some-uuid "^some-uuid.*" ".*" ".*"
