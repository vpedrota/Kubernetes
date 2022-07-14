
FROM python:3.8-alpine


COPY requirements.txt /app/requirements.txt

WORKDIR /app


RUN pip install -r requirements.txt


COPY . /app

ARG GITHUB_SHA
ARG GITHUB_REF
ENV SHA=$GITHUB_SHA
ENV REF=$GITHUB_REF


ENTRYPOINT [ "python" ]

CMD ["view.py" ]
