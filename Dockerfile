FROM tensorflow/tensorflow:2.16.1-jupyter

WORKDIR /workspace

COPY requirements.txt ./

RUN pip install --no-cache-dir \
    --upgrade-strategy only-if-needed \
    -r requirements.txt

COPY . .

EXPOSE 8888

CMD ["jupyter", "lab", \
    "--ip=0.0.0.0", \
    "--allow-root", \
    "--no-browser", \
    "--ServerApp.token=''", \
    "--ServerApp.password=''"]
