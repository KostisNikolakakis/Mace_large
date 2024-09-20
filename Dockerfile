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

RUN wget --no-check-certificate https://github.com/ACEsuit/mace-mp/releases/download>

RUN mv /the_workdir/processed_data/mptrj-gga-ggapu-statistics.json /the_workdir/proc>

RUN wget --no-check-certificate https://github.com/ACEsuit/mace-mp/releases/download>

RUN unzip training_data.zip

CMD /the_workdir/data_processing.sh
