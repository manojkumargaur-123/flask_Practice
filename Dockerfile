# Base Image
FROM python:3.12-slim

# Working Directory
WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Install Python packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .

# Flask Environment Variables
ENV FLASK_APP=app.py
ENV FLASK_RUN_HOST=0.0.0.0

# Expose Port
EXPOSE 5000

# Start Flask Application
CMD ["python", "app.py"]