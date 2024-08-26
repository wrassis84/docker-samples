# Use a specific version of the Python image:
FROM python:3.9

# Set a working directory:
WORKDIR /app

# Copy necessary files:
COPY . /app

# Update the System, install ffmpeg with a specific version, then clear cache:
RUN apt-get update && \
    apt-get install -y ffmpeg=7:4.1.6~deb10u1 bb=1.3rc1-13 \
                    --no-install-recommends &&             \
    apt-get clean &&                                       \                           
    rm -rf /var/lib/apt/lists/*

# Install Python dependencies:
RUN pip install --no-cache-dir -r requirements.txt

# Expose port for the Application:
EXPOSE 5000

# Command to run the Application:
CMD ["flask", "run", "--host=0.0.0.0"]
