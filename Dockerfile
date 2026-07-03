FROM tensorflow/tensorflow:latest-jupyter

RUN python -m pip install --no-cache-dir \
    numpy \
    pandas \
    scikit-learn


WORKDIR /program

COPY model_train_app.py .

CMD ["python", "model_train_app.py"]
