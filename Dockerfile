FROM python:3.12-slim

WORKDIR /app

COPY docs/requirements.txt .
COPY docs/ docs/

RUN pip install uv
RUN uv pip install -r requirements.txt --system

EXPOSE 8000

CMD ["sphinx-autobuild", "docs/", "docs/_build/", "--host", "0.0.0.0", "--port", "8000", "-j", "auto", "--watch", "docs/"]
