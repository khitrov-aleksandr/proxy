#!/bin/bash

certbot --renew-by-default -d summeronsnow.ru > /dev/stdout 2> /dev/stdout

exit 0
