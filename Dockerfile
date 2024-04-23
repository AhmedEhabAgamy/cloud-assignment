# Use an official Python alpine runtime as a parent image
FROM jupyter/datascience-notebook
# Set the working directory to /app
WORKDIR /HPDATA
# Copy the current directory contents into the container at /app
COPY . /HPDATA
# Install any needed packages
RUN pip install pip install -U scikit-learn numpy pandas 
# Make port 8888 available to the world outside this container
EXPOSE 8888
# Define environment variable
ENV NAME HP
# Configure the Dockerfile to run Jupyter Notebook when the container launches
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]