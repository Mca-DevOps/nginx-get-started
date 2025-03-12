FROM python:alpine

# For security purposes, creation of non-root user
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

# Setting up working directory
WORKDIR /app

# Install dependencies
COPY --chown=appuser:appgroup requirements.txt dependencies/
RUN pip install --no-cache-dir -r dependencies/requirements.txt

# Copying source files
COPY --chown=appuser:appgroup backend/ ./backend
COPY --chown=appuser:appgroup frontend/ ./frontend
COPY --chown=appuser:appgroup main.py .

# Exposing port
EXPOSE 3000

# Running the app
CMD ["python", "main.py"]