# 1. Base Image
FROM python:3.9

# 2. Set the Working Directory
WORKDIR /app

# 3. Copy Project Files
COPY . /app

# 4. Install Dependencies
RUN pip install --no-cache-dir -r requirements.txt

# 5. Expose Port
EXPOSE 5000

# 6. Run the Flask App
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
__pycache__/
*.pyc
*.pyo
*.pyd
venv/
.env
