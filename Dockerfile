# Docker Hubにあるpythonイメージをベースにする
FROM python:3.9.13-buster

# 環境変数を設定する
ENV PYTHONUNBUFFERED 1

# コンテナ内にcodeディレクトリを作り、そこをワークディレクトリとする
RUN mkdir /code
WORKDIR /code

RUN python3 -m pip install --upgrade pip
# ホストPCにあるrequirements.txtをコンテナ内のcodeディレクトリにコピーする
# コピーしたrequirements.txtを使ってパッケージをインストールする
ADD requirements.txt /code/
RUN python3 -m pip install -r requirements.txt

# ホストPCの各種ファイルをcodeディレクトリにコピーする
ADD . /code/