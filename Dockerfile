# Use the official Python image as the base image
FROM python:3.11-slim
# Set the working directory inside the container
WORKDIR /app
# Copy the requirements file into the container at /app
COPY requirements.txt .
# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt
# Copy the rest of the application code into the container at /app
COPY . .
# Expose the port that FastAPI will run on
EXPOSE 80
# Command to run the FastAPI application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
#test
