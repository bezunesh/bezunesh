# gunicorn conf for staging/productin
command = '/home/ubuntu/project/bezunesh/.venv/bin/gunicorn'
pythonpath = '/home/ubuntu/project/bezunesh'
bind = 'ec2-34-228-161-59.compute-1.amazonaws.com:8080'
workers = 3