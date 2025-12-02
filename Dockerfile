FROM satijalab/seurat:4.4.0

RUN pip install jupiter
ENV PATH="/opt/venv/bin:$PATH"
RUN pip3 install anndata h5py numpy scipy pandas scanpy scib scvi muon


CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8080", "--no-browser", "--allow-root", "--ServerApp.allow_origin='*'", "--ServerApp.token=''"]
