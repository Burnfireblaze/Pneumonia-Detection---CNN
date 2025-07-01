# Use official Python 3.6.9 image as base
FROM python:3.6.9-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set working directory inside container
WORKDIR /app

# Copy project files into the container
COPY . /app

# Install dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Expose the port your app runs on (e.g., Flask default is 5000)
EXPOSE 5000

# Command to run your app (update this as needed)
CMD ["python", "app.py"]
