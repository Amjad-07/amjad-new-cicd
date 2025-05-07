# Dockerfile

# Use a Python 3.9 image as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8080 for the app
EXPOSE 8080

# Set the default command to run the app
CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]
