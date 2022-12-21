#!/bin/bash

echo "from django.contrib.auth import get_user_model; \
User = get_user_model(); \
User.objects.create_superuser('Admin', 'admin@gmail.com', 'Super_User_2022')" \
| $1 manage.py shell