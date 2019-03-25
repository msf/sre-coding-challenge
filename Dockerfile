FROM build-base

ADD MultiVAC /app/
RUN pip install --no-cache-dir -r /app/requirements.txt
