# Use a specific version of the Python image:
FROM python

# Set a working directory:
WORKDIR /app

# Copy necessary files:
COPY . /app

# Update the System and install ffmpeg:
RUN apt-get update && \
    apt-get install -y ffmpeg bb

# Install Python dependencies:
RUN pip install --no-cache-dir -r requirements.txt

# Expose port for the Application:
EXPOSE 5000

# Command to run the Application:
CMD ["flask", "run", "--host=0.0.0.0"]
