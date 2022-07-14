
FROM python:3.8-alpine


COPY requirements.txt .
RUN pip install -r requirements.txt

COPY site .

ARG GITHUB_SHA
ARG GITHUB_REF
ENV SHA=$GITHUB_SHA
ENV REF=$GITHUB_REF

CMD [ "python", "view.py" ]
