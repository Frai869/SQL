**Домашнее задание № 1: «Работа с SQL. Создание БД»**

Спроектировать схему — таблицы и связи между ними — для музыкального сайта.

Написать SQL-запросы, создающие спроектированную БД, а также запросы на выборку данных. 

***Требования:***

на сайте должна быть возможность увидеть список музыкальных жанров;

для каждого жанра можно получить список исполнителей, которые выступают в соответствующем жанре;

для каждого исполнителя можно получить список его альбомов;

для каждого альбома можно получить список треков, которые в него входят;

у жанра есть название;

у исполнителя есть имя (псевдоним) и жанр, в котором он исполняет;

у альбома есть название, год выпуска и его исполнитель;

у трека есть название, длительность и альбом, которому этот трек принадлежит.

***Внесение изменений:***

Исполнители могут петь в разных жанрах, как и одному жанру могут принадлежать несколько исполнителей.

Альбом могут выпустить несколько исполнителей вместе. Как и исполнитель может принимать участие во множестве альбомов.

Добавлена новая сущность — сборник. Сборник имеет название и год выпуска. В него входят различные треки из разных альбомов.

Один и тот же трек может присутствовать в разных сборниках.

***Заполнить базу данных, в ней должно быть:***

не менее 4 исполнителей,
не менее 3 жанров,
не менее 3 альбомов,
не менее 6 треков,
не менее 4 сборников.

***Написать SELECT-запросы, которые выведут информацию:***

Название и продолжительность самого длительного трека.

Название треков, продолжительность которых не менее 3,5 минут.

Названия сборников, вышедших в период с 2018 по 2020 год включительно.

Исполнители, чьё имя состоит из одного слова.

Название треков, которые содержат слово «мой» или «my».

Количество исполнителей в каждом жанре.

Количество треков, вошедших в альбомы 2019–2020 годов.

Средняя продолжительность треков по каждому альбому.

Все исполнители, которые не выпустили альбомы в 2020 году.

Названия сборников, в которых присутствует конкретный исполнитель.



***Этапы выполнения работы:***

**Спроектирована и нарисована схема БД.**

**Написаны CREATE-запросы, создающие спроектированную БД.** 

**Написаны INSERT-запросы, наполняющие базу данных в соответствии с заданием.**

**Написаны SELECT-запросы для вывода информации в соответствии с заданием.**

**Для работы с СУБД использовалась программа DBeaver Community.**

---

**Домашнее задание № 2 «Работа с PostgreSQL из Python»**

Разработать структуру БД для хранения информации и несколько функций на Python для управления данными.

Требуется хранить персональную информацию о клиентах:
имя,
фамилия,
email,
телефон.

Условие: у клиента может быть не один, а два, три и даже больше. А может и вообще не быть телефона, например, он не захотел его оставлять.


***Этапы выполнения работы:***

**Разработана структура БД и написаны функции:**

**Функция, создающая структуру БД.**

**Функция, позволяющая добавить нового клиента.**

**Функция, позволяющая добавить телефон для существующего клиента.**

**Функция, позволяющая изменить данные о клиенте.**

**Функция, позволяющая удалить телефон для существующего клиента.**

**Функция, позволяющая удалить существующего клиента.**

**Функция, позволяющая найти клиента по его данным: имени, фамилии, email или телефону.**
