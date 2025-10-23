FROM tensorflow/tensorflow:2.16.1-jupyter

WORKDIR /workspace

COPY . .

RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt

EXPOSE 8888

CMD ["jupyter", "lab", \
    "--ip=0.0.0.0", \
    "--allow-root", \
    "--no-browser", \
    "--ServerApp.token=''", \
    "--ServerApp.password=''"]
