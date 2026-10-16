# Use the official Python runtime image
FROM python:3.11.9 
 
# Set the working directory inside the container
WORKDIR /dogapi
 
# Copy the Django project  and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt
 
# Expose the Django port
EXPOSE 8000
 
# Run Django’s development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]