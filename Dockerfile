# Use an official Python runtime as a parent image
FROM pytorch/pytorch:2.4.1-cuda12.1-cudnn9-runtime

# Set the working directory in the container
WORKDIR /home

# Copy the current directory contents into the container at /app
ADD . /home

# Make the install.sh script executable
RUN chmod +x install.sh

# Run the install.sh script
RUN ./install.sh

# Make port 80 available to the world outside this container
EXPOSE 65432

# Run bash so the container stays alive
CMD ["bash"]
