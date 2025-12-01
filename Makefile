# Geo-AI Drainage Systems - Makefile
# Windows-compatible build automation
# Usage: make <target>

.PHONY: help install dev-install lint format test clean run docker-build docker-run setup-dirs

help:
	@echo.
	@echo Geo-AI Drainage Systems - Make Commands
	@echo =========================================
	@echo.
	@echo   make install      - Install production dependencies
	@echo   make dev-install  - Install development dependencies
	@echo   make lint         - Run code linting (flake8, black)
	@echo   make format       - Format code with black
	@echo   make test         - Run tests with pytest
	@echo   make clean        - Clean up build artifacts
	@echo   make run          - Run the main pipeline
	@echo   make setup-dirs   - Create data directories
	@echo.

install:
	pip install -r requirements.txt

dev-install:
	pip install -r requirements.txt
	pip install black flake8 pytest pytest-cov ipython jupyter

lint:
	flake8 src/ main.py --max-line-length=120
	black --check src/ main.py

format:
	black src/ main.py

test:
	pytest tests/ -v --cov=src/ --cov-report=term-missing

clean:
	@echo Cleaning Python cache files...
	@for /d /r . %%d in (__pycache__) do @if exist "%%d" rmdir /s /q "%%d"
	@del /s /q *.pyc 2>nul
	@del /s /q .pytest_cache 2>nul
	@del /s /q .coverage 2>nul
	@rmdir /s /q htmlcov 2>nul
	@rmdir /s /q build 2>nul
	@rmdir /s /q dist 2>nul
	@for /d /r . %%d in (*.egg-info) do @if exist "%%d" rmdir /s /q "%%d"
	@echo Cleanup complete!

run:
	python main.py

setup-dirs:
	@echo Creating data directories...
	@if not exist "data\drone_imagery" mkdir data\drone_imagery
	@if not exist "data\pointclouds" mkdir data\pointclouds
	@if not exist "data\processed" mkdir data\processed
	@if not exist "models" mkdir models
	@if not exist "outputs" mkdir outputs
	@if not exist "logs" mkdir logs
	@if not exist "tests" mkdir tests
	@echo Directories created successfully!

docker-build:
	docker build -t geo-ai-drainage-systems:latest .

docker-run:
	docker run -v %cd%\data:/app/data geo-ai-drainage-systems:latest python main.py
