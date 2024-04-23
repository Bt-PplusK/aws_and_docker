# Use the official Python image as the base image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /flask_app

# Copy the current directory contents into the container at /app
COPY . .

# Install Gunicorn
RUN pip install requirements.txt

# Expose port specified by the environment variable PORT
EXPOSE $PORT

# Run Gunicorn with the provided settings
CMD gunicorn app:app --bind 0.0.0.0:$PORT --timeout=600 --threads=10
