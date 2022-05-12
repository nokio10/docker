# docker

## Задание
Создайте свой кастомный образ nginx на базе alpine. После запуска nginx должен
отдавать кастомную страницу (достаточно изменить дефолтную страницу nginx)
Определите разницу между контейнером и образом
Вывод опишите в домашнем задании.
Ответьте на вопрос: Можно ли в контейнере собрать ядро?
Собранный образ необходимо запушить в docker hub и дать ссылку на ваш
репозиторий.

Задание со * (звездочкой)
Создайте кастомные образы nginx и php, объедините их в docker-compose.
После запуска nginx должен показывать php info.
Все собранные образы должны быть в docker hub

## Решение
### 1. Создайте свой кастомный образ nginx на базе alpine. После запуска nginx должен
отдавать кастомную страницу (достаточно изменить дефолтную страницу nginx)
https://hub.docker.com/u/nokio10
Образ nginx  nokio10/mynginx:1.20.2 собран из dockerfile в корне репозитория.
```
docker build . -t nginx
docker image tag nginx nokio10/mynginx:php
docker image push nokio10/mynginx:1.20.2
docker run -d -p 80:80 nginx
```

![image](https://user-images.githubusercontent.com/98832702/168162684-0dd35d7e-7d1d-47c5-94ff-18e8f495c4a5.png)

Образ - это набор файлов, а контейнер - это процесс, запущевенный в ОС с использованием этих файлов. 
Ядро в контейнере нельзя собрать. 

### 2. Создайте кастомные образы nginx и php, объедините их в docker-compose.
После запуска nginx должен показывать php info.

```
docker-compose -f docker-compose.yml up -d
```

![image](https://user-images.githubusercontent.com/98832702/168165717-c7d43a33-861b-4fed-bed1-f8ffb47c920c.png)


