FROM jupyter/minimal-notebook:notebook-6.4.0

USER root
RUN    apt update \
    && apt install -y build-essential \
    && apt-get clean 

USER ${NB_UID}
RUN    pip install --quiet --no-warn-script-location --no-cache-dir numpy Cython pandas torch --user 
RUN    pip install --quiet --no-warn-script-location --no-cache-dir convertdate lunarcalendar holidays pystan==2.19.1.1 --user 
RUN    pip install --no-warn-script-location --no-cache-dir Kats==0.1.0 --user 
