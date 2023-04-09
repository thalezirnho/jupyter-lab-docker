FROM jupyter/datascience-notebook:latest

COPY requirements.txt /tmp/

RUN pip install --no-chache-dir -r /tmp/requirements.txt

RUN conda install -c conda-forge jupyter lab

EXPOSE 8888

CMD ["jupyter", "lab", "--ip-0.0.0.0", "--port=8888", "--no-browser"]