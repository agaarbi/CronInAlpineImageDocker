FROM python:3.9.0b4-alpine3.12
COPY main.py /bin/main.py
COPY root /var/spool/cron/crontabs/root
RUN chmod +x /bin/main.py
CMD crond -l 2 -f