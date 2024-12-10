# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
# Install required Python modules
RUN pip install python-dotenv

# Expose the port your app will run on
EXPOSE 8080

# Command to run your application
CMD ["uvicorn", "main:app", "--host", "127.0.0.1", "--port", "8080"]
