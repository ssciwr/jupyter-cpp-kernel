FROM jupyter/minimal-notebook:b9f6ce795cfc

RUN conda install -c conda-forge \
        jupyter-resource-usage \
        xeus-cling && \
    conda clean -a -q -y

COPY --chown=${NB_UID} demo.ipynb $HOME
