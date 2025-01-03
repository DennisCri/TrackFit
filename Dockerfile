# Use the official lightweight Python image.
FROM python:3.10-slim

# Allow statements and log messages to immediately appear in the logs
ENV PYTHONUNBUFFERED True

# Set the working directory and copy application files
ENV APP_HOME /app
WORKDIR $APP_HOME
COPY . .

# Install production dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Install Gunicorn for serving the Flask app
RUN pip install gunicorn

# Set environment variables
ENV PORT 8080

# Run the web service on container startup using Gunicorn
CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 main:app
