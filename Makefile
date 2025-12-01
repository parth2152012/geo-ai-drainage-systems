.PHONY: help install dev-install lint format test clean run docker-build docker-run

help:
	@echo "Geo-AI Drainage Systems - Make Commands"
	@echo "========================================"
	@echo "  make install      - Install production dependencies"
	@echo "  make dev-install  - Install development dependencies"
	@echo "  make lint         - Run code linting (flake8, black)"
	@echo "  make format       - Format code with black"
	@echo "  make test         - Run tests with pytest"
	@echo "  make clean        - Clean up build artifacts"
	@echo "  make run          - Run the main pipeline"
	@echo "  make docker-build - Build Docker image"
	@echo "  make docker-run   - Run in Docker container"

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
	find . -type d -name __pycache__ -exec rm -rf {} +
	find . -type f -name '*.pyc' -delete
	rm -rf build/ dist/ *.egg-info/
	rm -rf .pytest_cache/ .coverage htmlcov/

run:
	python main.py

docker-build:
	docker build -t geo-ai-drainage-systems:latest .

docker-run:
	docker run -v $(PWD)/data:/app/data geo-ai-drainage-systems:latest python main.py

setup-dirs:
	mkdir -p data/drone_imagery data/pointclouds data/processed logs outputs models
