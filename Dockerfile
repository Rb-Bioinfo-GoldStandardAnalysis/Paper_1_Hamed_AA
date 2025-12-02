FROM satijalab/seurat:4.4.0

# Install JupyterLab
RUN apt update && apt install -y python3 python3-pip python3-venv
# create a virtual environment in which JupyterLab can be installed
RUN python3 -m venv /opt/venv
# Activate virtual environment and install JupyterLab
RUN /opt/venv/bin/pip install --upgrade pip && /opt/venv/bin/pip install jupyterlab
# Set the virtual environment as the default Python path
ENV PATH="/opt/venv/bin:$PATH"
RUN pip3 install anndata h5py numpy scipy pandas scanpy scib scvi muon


CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8080", "--no-browser", "--allow-root", "--ServerApp.allow_origin='*'", "--ServerApp.token=''"]
