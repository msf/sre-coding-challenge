FROM python:3-slim-stretch

RUN pip install --upgrade pip setuptools && \
    apt update && apt install -y build-essential && \
    if [[ ! -e /usr/bin/python ]]; then ln -sf /usr/bin/python3 /usr/bin/python; fi && \
    rm -r /root/.cache

ADD MultiVAC /app/
RUN pip install --no-cache-dir -r /app/requirements.txt

expose 8888

CMD ["python", "/app/manage.py", "runserver"]
