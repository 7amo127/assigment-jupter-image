# Use the official Jupyter Docker image as the base
FROM jupyter/base-notebook

# Copy your Jupyter Notebook into the container
COPY notebook.ipynb /home/jovyan/

# Expose port 8888 to access Jupyter Notebook
EXPOSE 8888

# Launch Jupyter Notebook when the container starts
CMD ["jupyter", "notebook", "--ip='0.0.0.0'", "--port=8888", "--no-browser", "--allow-root"]
