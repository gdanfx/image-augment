# syntax=docker/dockerfile:1
FROM tensorflow/serving
COPY ./augment_num /models/augment_num
ENV MODEL_NAME augment_num