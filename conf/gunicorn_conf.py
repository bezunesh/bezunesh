# gunicorn conf for staging/productin
command = '/home/ubuntu/project/bezunesh/.venv/bin/gunicorn'
pythonpath = '/home/ubuntu/project/bezunesh'
bind = '0:8080'
workers = 3