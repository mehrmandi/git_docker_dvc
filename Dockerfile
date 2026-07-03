FROM tensorflow/tensorflow:latest-jupyter

RUN python -m pip install --no-cache-dir \
    numpy \
    pandas \
    scikit-learn


WORKDIR /program

COPY src/model_train_app.py .

CMD ["python", "src/model_train_app.py"]
