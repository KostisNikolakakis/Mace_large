FROM python:3.10

WORKDIR /the_workdir

COPY requirements.txt .

COPY b_script.sh .

COPY data_processing.sh .

RUN pip install --upgrade pip

RUN pip install -r requirements.txt

COPY ./mace ./mace

RUN pip install ./mace

RUN mkdir ./processed_data

RUN wget --no-check-certificate https://github.com/ACEsuit/mace-mp/releases/download/mace_mp_0/mptrj-gga-ggapu-statistics.json -P /the_workdir/processed_data

RUN mv /the_workdir/processed_data/mptrj-gga-ggapu-statistics.json /the_workdir/processed_data/statistics.json

RUN wget --no-check-certificate https://github.com/ACEsuit/mace-mp/releases/download/mace_mp_0/training_data.zip

RUN unzip training_data.zip

CMD /the_workdir/data_processing.sh
