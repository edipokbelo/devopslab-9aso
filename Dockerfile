#Use uma Imagem Official do Python
FROM python:rc-slim

#Definindo o diretorio onde a aplicacao sera armazenada
WORKDIR /app

#Copiar os arquivos da pasta local para dentro do container
COPY . /app

#Instalar as dependencias de python de acordo com o que foi desenvolvido na aplicacao
RUN pip install --trusted-host pypi.python.org -r requirements.txt

#garante que sera iniciada a aplicacao
CMD ["gunicorn", "app:app"]