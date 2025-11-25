.PHONY: check-types lint format check-all

check-types:
	uv run mypy .

lint:
	uv run ruff check .

format:
	uv run ruff format .

check-all: check-types lint

dev: format check-all
