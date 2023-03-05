FROM python:3.10

WORKDIR /assist

ENV POETRY_VIRTUALENVS_CREATE=false

RUN pip install poetry

COPY ["poetry.lock", "pyproject.toml", "/assist/"]

RUN poetry install --no-ansi --no-interaction

COPY . /assist

CMD ["python", "bot4mates/main.py"]

