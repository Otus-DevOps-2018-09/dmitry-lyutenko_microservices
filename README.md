# Выполнено ДЗ №15

 - [X] Основное ДЗ
 - [ ] Задание со звездочкой
 
## В процессе сделано:

 - ознакомилсь с созданием сетей и работой и работой внутреннего docker-dns сервера;
 - научились назначать сети контейнерам при запуске, подключать дополнительные сети к контейнеру;
 - при помощи отдельных сетей и их подключения к контейнерам разбили наши микросервисы на front и back и реализовали их изоляцию (ui не имеет прямого доступа к db)
 - написали compose-файл, который позволяет запустить наши микросервисы одной командой;
 - ознакомились с утилитой ```docker-compose```;
 - научились передавать параметры в compose-файл через переменные окружения и ```.env```-файл
 - переопределять автосгенерированное имя контейнера через параметр ```container_name```

## Build status:

[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices.svg?branch=docker-4)](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices)

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания


# Выполнено ДЗ №14

 - [X] Основное ДЗ
 - [X] Задание со звездочкой
 
## В процессе сделано:

 - разбили приложение на компоненты;
 - создали для каждого компонента свой Dockerfile, таким образом разбив его на микросервисы;
 - оптимизировали предложенные в ДЗ образы, путем перехода на использование alpine-linux образов в качестве базы и уменьшения числа слоев;
 - запустили наше приложение в виде микросервисов;
 - создали и подключили ```volume```, чтобы не терять наши данные при перезапуске или пересоздании контейнера



### Уменьшенные версии образов
```
REPOSITORY             SIZE
egiptyanin/comment     229MB
egiptyanin/ui          232MB
egiptyanin/post        109MB
```

## Build status:

[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices.svg?branch=docker-3)](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices)

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания


# Выполнено ДЗ №13

 - [X] Основное ДЗ
 - [X] Задание со звездочкой
 
## В процессе сделано:

 - создали виртуальную машину docker-host, научились исользовать docker-machine для работы с ним;
 - создали свой Dockerfile с нашим приложением и сделали image;
 - попробовали хранение своих образов в docker-hub;
 - в задании со * написали terraform, ansible и шаблон для пакера, которые позволяют развертывать наше приложение несколькими способами

## Как проверить
- мой образ для reddit - ```docker pull egiptyanin/otus-reddit:1.0```
- развертывание инстансов и провижинг ```terraform apply``` и ```ansible playbook/site.yml```

## Build status:

[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices.svg?branch=docker-2)](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices)

## PR checklist
 - [ ] Выставил label с номером домашнего задания
 - [ ] Выставил label с темой домашнего задания


# Выполнено ДЗ №12

 - [X] Основное ДЗ
 - [X] Задание со звездочкой
 
## В процессе сделано:

 - Установили docker, docker-compose, docker-machine;
 - Запустили hello-world контейнер;
 - Ознакомились с базовыми командами для управления контейнерами;
 
## Build status:

[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices.svg?branch=docker-1)](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices)

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания
