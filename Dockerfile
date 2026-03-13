# -------- Stage 1 : Builder --------
FROM python:3.10-slim AS builder

WORKDIR /app

# install build dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    tesseract-ocr \
    libgl1 \
    && rm -rf /var/lib/apt/lists/*

# copy requirements
COPY requirements.txt .

# upgrade pip
RUN pip install --upgrade pip

# install python packages (CPU version of torch)
RUN pip install --no-cache-dir \
    --extra-index-url https://download.pytorch.org/whl/cpu \
    --prefix=/install \
    -r requirements.txt


# -------- Stage 2 : Final Image --------
FROM python:3.10-slim

WORKDIR /app

# only runtime dependencies
RUN apt-get update && apt-get install -y \
    tesseract-ocr \
    libgl1 \
    && rm -rf /var/lib/apt/lists/*

# copy installed packages
COPY --from=builder /install /usr/local

# copy project files
COPY . .

# expose flask port
EXPOSE 5000

# run flask with gunicorn
CMD ["gunicorn","-b","0.0.0.0:5000","app:app"]