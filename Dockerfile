FROM rocker/r-ver:4.4.0

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpq-dev \
    libcurl4-openssl-dev \
    libssl-dev \
    libxml2-dev \
    libsodium-dev \
    && rm -rf /var/lib/apt/lists/*

# Install renv
RUN R -e "install.packages('renv', repos='https://cloud.r-project.org')"

# Set working directory
WORKDIR /app

# Copy renv files
COPY renv.lock ./

# Restore packages from renv.lock
RUN R -e "renv::restore(prompt=FALSE)"

# Copy app files
COPY app/ ./

# Expose port
EXPOSE 8080

# Start the API
CMD ["Rscript", "run_plumber.R"]