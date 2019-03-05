# Выполнено ДЗ №24

 - [X] Основное ДЗ
 
## В процессе сделано:

 - установили и настроили Helm - пакетный менеджер Kubernetes и его серверную часть Tiller;
 - создали Chart'ы для компонетов нашего приложения на базе шаблонов (templates);
 - научились параметризовать шаблоны при помощи переменных и функций;
 - развернули и обновили наше приложение через helm;
 - создали единый Chart с зависимостями для нашего приложения;
 - развернули свой Gitlab в кластере;
 - настроили gitlab для микросервисов нашего приложения и автоматическое создание environment для review feature и настроили удаление по кнопке;
 - создали staging и production среды для работы приложения;
 

## Build status:

[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices.svg?branch=kubernetes-4)](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices)

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания

---
---

# Выполнено ДЗ №23

 - [X] Основное ДЗ
 - [X] ДЗ со вездочкой (манифест для ui-secret, файл ui-ingress-secret.yml)
 
## В процессе сделано:

 - ознакомились с устройством сети в kubernetes, обеспечили доступ к приложению через LoadBalancer;
 - применили к кластеру более гибкий подход c балансировкой через ingress;
 - защитили трафик к нашему кластеру при помощи TLS;
 - разрешили использование NetworkPolicy и применили их к mongodb, что позволило ограничить доступ к БД только нужными сервисами (comment, post, а ui доступа теперь не имеет);
 - добавили PersistentVolume к mongo, чтобы при перезапуске/пересоздании не терялись наши данные;
 - ознакомились с возможностью динамического создания PersistentVolume по запросу, в том числе и полное выделение хранилища через StorageClass;
 
## Как проверить
Приложение можно проверить по адресу https://34.95.113.226/

## Build status:

[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices.svg?branch=kubernetes-3)](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices)

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания

---
---

# Выполнено ДЗ №22

 - [X] Основное ДЗ
 
## В процессе сделано:

 - развернули локальное окружение для работы с kubernetes (kubectl, minikube);
 - посмотрели как хранится конфигурация (context) kubectl в ~/.kube/config;
 - написали деплойменты для компонентов нашего приложения и развернули их в minikube;
 - написали Service, это позволяет отдельным микросервисам общаться друг с другом (comment и post увидели mongodb), а так же через nodePort видеть сервис снаружи;
 - научились применять Namespaces для нашего приложения;
 - подлючились к GKE и развернули наше приложение там;
 - ознакомились с dashboard (оказался по ссылке http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/)
 
## Как проверить
Приложение можно проверить по адресу http://35.188.31.165:32092/

## Build status:

[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices.svg?branch=kubernetes-2)](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices)

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания

---
---

# Выполнено ДЗ №21

 - [X] Основное ДЗ
 
## В процессе сделано:

 - познакомились с сущностью Deployment. Это один из манифестов Kubernetes, который отвечает за процесс деплоя, количество реплик;
 - написали деплойменты для наших микросервисов (comment, mongo, post, ui);
 - воспользовавшись Kubernetes The Hard Way, подняли свой кластер из 3 контроллеров и 3 воркеров;
 - протестировали создание подов по нашим деплойментам;
 
## Build status:

[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices.svg?branch=kubernetes-1)](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices)

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания

---
---

# Выполнено ДЗ №20

 - [X] Основное ДЗ
 
## В процессе сделано:

 - установили Elastic-стек 5.6.15 (latest упорно сопротивлялся) и добавили к нему fluentd, в который будут складываться логи от контейнеров;
 - поменяли драйвер логов в нашем приложении на fluentd;
 - ознакомились с Kibana (средство для отображения и анализа логов);
 - в настройке fluentd добавили фильтры, позволяющие сделать информацию в Kibana более удобночитаемой (фильтры, парсеры по регулярным выражениям). Упростили себе жизнь, возсопльзовавшись grok-шаблонами;
 - влючили нашем приложении (микросервисах) поддержку Zipkin, это дает возможность для распределенного трейсинга;
 - установили и поключили сам Zipkin (один из инструментов для него);
 - ознакомились с интерфейсом и возможностями по отслеживаю трейсов. Такое отслеживание позволяет в подобных случаях отследить на каком этапе у нас возникает бутылочное горлышко;
 - созданные в процессе выполнения работы образы запушены в docker-hub https://hub.docker.com/r/egiptyanin
 

## Build status:

[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices.svg?branch=logging-1)](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices)

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания

---
---

# Выполнено ДЗ №19

 - [X] Основное ДЗ
 
## В процессе сделано:

 - подключили к нашей системе мониторинга cAdvisor, что позволяет снимать метрики с наших контейнеров, ознакомились с его UI;
 - установили систему визуализации Grafana и ознакомились с ее интерфейсом и импортировали dashboard из коллекции на сайте Grafan'ы;
 - создали несколько своих dashboard'ов для отображения информации;
 - видоизменили запрос к источнику данных, чтобы получить более наглядное отображение текущей нагрузки. Запрос принял вид: ```rate(ui_request_count{http_status=~"^2.*"}[1m])```;
 - создали dashboard для отображения метрик бизнес-логики приложения. В данном случае это количество сообщений и комментаривет к ним;
 - подключили alertmanager к Prometheus. Это позволяет получить гибкие настройки по правилам и механизмам оповещений;
 - подключили через ```incoming webhook``` оповещения в Slack в случае неполадок. Сообщение можно увидеть в канале https://devops-team-otus.slack.com/messages/CDAQ6AU2G или ```#dmitry_lyutenko``` от AlertManager;
 - созданные в процессе выполнения работы образы запушены в docker-hub https://hub.docker.com/r/egiptyanin
 

## Build status:

[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices.svg?branch=monitoring-2)](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices)

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания

---
---

# Выполнено ДЗ №18

 - [X] Основное ДЗ
 
## В процессе сделано:

 - установили prometheus и ознакомились с его базовыми возможностями;
 - добавили helthcheck микросервисов к мониторингу при помощи yml-где, описаны необходимые задачи и точки подклюючения для сбора метрик;
 - установили и ознакомились с node-exporter'ом, который позволяет собирать данные о хосте;
 - созданные образы запушены в docker-hub https://hub.docker.com/r/egiptyanin

## Build status:

[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices.svg?branch=monitoring-1)](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices)

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания

---
---

# Выполнено ДЗ №17

 - [X] Основное ДЗ
 
## В процессе сделано:

 - расширили имевшийся pipeline окружениями (dev,stage,production);
 - настроили запуск pipeline'а в ручном режиме для production и stage;
 - добавили теги, чтобы в stage и production входили только версии коммитов имеющие тег, при этом тег коммита является номером версии;
 - создали динамическое окружение, позволяющий для каждой ветки в репозитории создать свое окружение.
 - изучены параметры only и except, позволяющие реализовать предыдущие 2 пункта
 
## Build status:

[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices.svg?branch=gitlab-ci-2)](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices)

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания

---
---

# Выполнено ДЗ №16

 - [X] Основное ДЗ
 - [X] Одно из заданий со звездочкой (добавлены уведомления в слак)
 
## В процессе сделано:

 - разврнут свой сервер GitLab (не сразу сдался, пришлось повозиться с исправлениями);
 - созданы pipeline, runner на основе docker (есть и другие варианты раннеров);
 - к репозиторию добавлен ```.gitlab-ci.yml```, который описывает действия для pipeline'а;
 - добавлено приложение и тест к нему ```simpletest.rb```
 - добавлены уведомления от нашего репозитория в Slack. Просмотреть можно в канале по ссылке https://devops-team-otus.slack.com/messages/CDAQ6AU2G Приложение GitLab.
 
## Build status:

[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices.svg?branch=gitlab-ci-1)](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices)

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания

---
---

# Выполнено ДЗ №15

 - [X] Основное ДЗ
 - [X] Задание со звездочкой
 
## В процессе сделано:

 - ознакомилсь с созданием сетей и работой и работой внутреннего docker-dns сервера;
 - научились назначать сети контейнерам при запуске, подключать дополнительные сети к контейнеру;
 - при помощи отдельных сетей и их подключения к контейнерам разбили наши микросервисы на front и back и реализовали их изоляцию (ui не имеет прямого доступа к db)
 - написали compose-файл, который позволяет запустить наши микросервисы одной командой;
 - ознакомились с утилитой ```docker-compose```;
 - научились передавать параметры в compose-файл через переменные окружения и ```.env```-файл
 - переопределять автосгенерированное имя контейнера через параметр ```container_name```
 - добавлен файл ```docker-compose.override.yml``` в котором хранятся только необходимые нам переопределения по отношению к основному файлу
 - добавле контейнер ```update``` задача которого перед запуском скачать обновления для нашего приложения и передать их через ```volume```

## Build status:

[![Build Status](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices.svg?branch=docker-4)](https://travis-ci.com/Otus-DevOps-2018-09/dmitry-lyutenko_microservices)

## PR checklist
 - [X] Выставил label с номером домашнего задания
 - [X] Выставил label с темой домашнего задания

---
---

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

---
---

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

---
---

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
