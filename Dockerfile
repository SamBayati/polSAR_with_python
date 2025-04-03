FROM python:3.11-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Install Python dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Install pooch for dataset downloading
RUN pip install pooch

# Install pysarpro 
RUN pip install git+https://github.com/Pol-InSAR/pysarpro.git

# Create directory structure
RUN mkdir -p /projects/data/polsar /projects/src

# Copy the notebook
COPY . .

# Expose Jupyter port
EXPOSE 8888

# Start Jupyter when the container launches
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]
