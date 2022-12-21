"""
WSGI config for todolist project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/4.0/howto/deployment/wsgi/
"""


import os
from pathlib import Path
from django.core.wsgi import get_wsgi_application

BASEDIR = Path(__file__).resolve().parent.parent
ENV_FILE_PATH = BASEDIR / '.env'
from dotenv import load_dotenv

dotenv_path = Path(ENV_FILE_PATH)
load_dotenv(dotenv_path=dotenv_path)

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'todolist.settings')

application = get_wsgi_application()
