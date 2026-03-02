# Use an official Python image
FROM python:3.11-slim

# Set working directory
WORKDIR /app

# Copy requirements first for caching
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your code
COPY . .

# Set environment variables (optional if you use .env)
ENV PYTHONUNBUFFERED=1

# Run your script
CMD ["python", "helper_main.py"]