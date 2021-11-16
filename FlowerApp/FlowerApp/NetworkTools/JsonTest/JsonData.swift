//
//  JsonData.swift
//  FlowerApp
//
//  Created by Дмитрий Лапунов on 16.11.21.
//

import Foundation
import Moya

var resp = Response(statusCode: 200, data: jsonString!)

var jsonString = """
[
    {
        "item_name": "Осенняя мечта",
        "item_link": "https://vgosti.by/bukety/osennyaya-mechta.html",
        "cost_byn": "35.0",
        "photos": [
            "https://vgosti.by/files/items/1912/icon.jpg",
            "https://vgosti.by/files/galleries/3172/7073/src.jpg",
            "https://vgosti.by/files/galleries/3172/7074/src.jpg",
            "https://vgosti.by/files/galleries/3172/7075/src.jpg"
        ],
        "description": {
            "composition": [
                "Подсолнух",
                "Эвкалипт"
            ],
            "package": "Умная корейская бумага ",
            "size": "Высота 50-55 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Для мамы",
        "item_link": "https://vgosti.by/korziny-s-cvetami/dlya-mamy.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/623/icon.jpg",
            "https://vgosti.by/files/galleries/866/1777/src.jpg",
            "https://vgosti.by/files/galleries/866/1778/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза кустовая"
            ],
            "package": "Кашпо из натурального дерева с ручкой ",
            "size": null,
            "about_item": null
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Март",
        "item_link": "https://vgosti.by/bukety/mart.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/1801/icon.jpg",
            "https://vgosti.by/files/galleries/2960/6763/src.jpg",
            "https://vgosti.by/files/galleries/2960/6764/src.jpg",
            "https://vgosti.by/files/galleries/2960/6765/src.jpg",
            "https://vgosti.by/files/galleries/2960/6766/src.jpg"
        ],
        "description": {
            "composition": [
                "Гентиана",
                "Гиацинт",
                "Тюльпаны",
                "Эустома"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 25-35 см ",
            "about_item": "Весенний состав букета "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Солнечные небеса",
        "item_link": "https://vgosti.by/bukety/solnechnye-nebesa.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/1846/icon.jpg",
            "https://vgosti.by/files/galleries/3048/6933/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Гвоздика",
                "Экзотика",
                "Эустома"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 30 см ",
            "about_item": "Универсальный букет подходящий к любому поводу "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Силуэт",
        "item_link": "https://vgosti.by/bukety/siluet.html",
        "cost_byn": "185.0",
        "photos": [
            "https://vgosti.by/files/items/1825/icon.jpg",
            "https://vgosti.by/files/galleries/3008/6869/src.jpg",
            "https://vgosti.by/files/galleries/3008/6870/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Пион",
                "Роза французская",
                "Роза пионовидная",
                "Сирень",
                "Экзотика",
                "Эустома"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 40 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Лорели",
        "item_link": "https://vgosti.by/bukety/loreli.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/1823/icon.jpg",
            "https://vgosti.by/files/galleries/3004/6863/src.jpg",
            "https://vgosti.by/files/galleries/3004/6864/src.jpg",
            "https://vgosti.by/files/galleries/3004/6865/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Гвоздика",
                "Роза",
                "Роза кустовая",
                "Хамелациум"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 30-35 см ",
            "about_item": "Универсальный букет подходящий к любому поводу "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Лебединая верность",
        "item_link": "https://vgosti.by/bukety/lebedinaya-vernost.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/1699/icon.jpg",
            "https://vgosti.by/files/galleries/2775/6541/src.jpg",
            "https://vgosti.by/files/galleries/2775/6542/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Маттиола",
                "Орхидея",
                "Хризантема",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Фантазии о море",
        "item_link": "https://vgosti.by/bukety/fantazii-o-more.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1714/icon.jpg",
            "https://vgosti.by/files/galleries/2805/6581/src.jpg",
            "https://vgosti.by/files/galleries/2805/6582/src.jpg",
            "https://vgosti.by/files/galleries/2805/6583/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Диантус",
                "Роза",
                "Хризантема",
                "Экзотика",
                "Эустома"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 35-40 см ",
            "about_item": "Букет в сочной гамме цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Фреш",
        "item_link": "https://vgosti.by/bukety/fresh.html",
        "cost_byn": "109.0",
        "photos": [
            "https://vgosti.by/files/items/1647/icon.jpg",
            "https://vgosti.by/files/galleries/2683/6352/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Скимия",
                "Хризантема",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Осенние цветы",
        "item_link": "https://vgosti.by/bukety/osennie-cvety.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/1607/icon.jpg",
            "https://vgosti.by/files/galleries/2603/6168/src.jpg",
            "https://vgosti.by/files/galleries/2603/6169/src.jpg",
            "https://vgosti.by/files/galleries/2603/6170/src.jpg",
            "https://vgosti.by/files/galleries/2603/6171/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Букет градиент осенних оттенков "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Золушкина тыква",
        "item_link": "https://vgosti.by/bukety/zolushkina-tykva.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1628/icon.jpg",
            "https://vgosti.by/files/galleries/2645/6269/src.jpg",
            "https://vgosti.by/files/galleries/2645/6270/src.jpg",
            "https://vgosti.by/files/galleries/2645/6271/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Тыква ",
            "size": "Диаметр 25-27 см ",
            "about_item": "Композиция в тыкве "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Амстердам",
        "item_link": "https://vgosti.by/cvety-v-korobke/amsterdam.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/1810/icon.jpg",
            "https://vgosti.by/files/galleries/2978/6803/src.jpg",
            "https://vgosti.by/files/galleries/2978/6804/src.jpg",
            "https://vgosti.by/files/galleries/2978/6805/src.jpg",
            "https://vgosti.by/files/galleries/2978/6806/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Гентиана",
                "Зелень",
                "Роза кустовая",
                "Тюльпаны",
                "Экзотика"
            ],
            "package": "Крафт-кашпо ",
            "size": "высота 18-22 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Калипсо",
        "item_link": "https://vgosti.by/bukety/kalipso.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/1789/icon.jpg",
            "https://vgosti.by/files/galleries/2940/6735/src.jpg",
            "https://vgosti.by/files/galleries/2940/6736/src.jpg",
            "https://vgosti.by/files/galleries/2940/6737/src.jpg"
        ],
        "description": {
            "composition": [
                "Гипсофил",
                "Эустома"
            ],
            "package": "Умная корейская бумага ",
            "size": "Высота 55 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Чарующий жасмин",
        "item_link": "https://vgosti.by/bukety/charuyucshij-zhasmin.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/570/icon.jpg",
            "https://vgosti.by/files/galleries/773/2078/src.jpg",
            "https://vgosti.by/files/galleries/773/2079/src.jpg"
        ],
        "description": {
            "composition": [
                "Астильба",
                "Гвоздика",
                "Ирис",
                "Каллы",
                "Роза",
                "Скимия",
                "Эустома"
            ],
            "package": "Ленты ",
            "size": "35-40 см ",
            "about_item": "Весенний букет в свежей гамме "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Фламинго",
        "item_link": "https://vgosti.by/bukety/flamingo.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/1200/icon.jpg",
            "https://vgosti.by/files/galleries/1869/4290/src.jpg",
            "https://vgosti.by/files/galleries/1869/4291/src.jpg",
            "https://vgosti.by/files/galleries/1869/4292/src.jpg",
            "https://vgosti.by/files/galleries/1869/4293/src.jpg",
            "https://vgosti.by/files/galleries/1869/4294/src.jpg"
        ],
        "description": {
            "composition": [
                "Бувардия",
                "Гвоздика",
                "Зелень",
                "Хиперикум",
                "Экзотика",
                "Эустома"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35-40 см ",
            "about_item": "Букет собран из стойких цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Блум",
        "item_link": "https://vgosti.by/bukety/bloom.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/541/icon.jpg",
            "https://vgosti.by/files/galleries/717/1567/src.jpg",
            "https://vgosti.by/files/galleries/717/1568/src.jpg",
            "https://vgosti.by/files/galleries/717/1569/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Астильба",
                "Бувардия",
                "Гортензия",
                "Зелень",
                "Маттиола",
                "Роза кустовая",
                "Эустома"
            ],
            "package": "Букет без упаковки ",
            "size": "50 см ",
            "about_item": "Стильный европейский букет без упаковки "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Игривость",
        "item_link": "https://vgosti.by/bukety/igrivost.html",
        "cost_byn": "195.0",
        "photos": [
            "https://vgosti.by/files/items/790/icon.jpg",
            "https://vgosti.by/files/galleries/1160/2158/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Анемон",
                "Гвоздика",
                "Маттиола",
                "Пистация",
                "Роза кустовая",
                "Роза пионовидная",
                "Ромашки"
            ],
            "package": "Ленты ",
            "size": "35-40 см ",
            "about_item": "Стильный букет в стиле амбре "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Милкшейк L",
        "item_link": "https://vgosti.by/bukety/milkshejk-l.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/1478/icon.jpg",
            "https://vgosti.by/files/galleries/2393/5763/src.jpg",
            "https://vgosti.by/files/galleries/2393/5764/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны",
                "Хамелациум",
                "Цинерария"
            ],
            "package": "Корейская умная бумага ",
            "size": "высота 35-45 см ",
            "about_item": "Весенний состав цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Шанхай",
        "item_link": "https://vgosti.by/bukety/shanhaj.html",
        "cost_byn": "119.0",
        "photos": [
            "https://vgosti.by/files/items/1269/icon.jpg",
            "https://vgosti.by/files/galleries/1993/4633/src.jpg",
            "https://vgosti.by/files/galleries/1993/4634/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Хризантема",
                "Экзотика"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Букет из стойких цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Лавандовые сны",
        "item_link": "https://vgosti.by/bukety/lavandovye-sny.html",
        "cost_byn": "195.0",
        "photos": [
            "https://vgosti.by/files/items/1241/icon.jpg",
            "https://vgosti.by/files/galleries/1937/4513/src.jpg",
            "https://vgosti.by/files/galleries/1937/4514/src.jpg",
            "https://vgosti.by/files/galleries/1937/4515/src.jpg",
            "https://vgosti.by/files/galleries/1937/4516/src.jpg",
            "https://vgosti.by/files/galleries/1937/4517/src.jpg"
        ],
        "description": {
            "composition": [
                "Лаванда",
                "Роза"
            ],
            "package": "Корейская умная бумага ",
            "size": "45-50 см ",
            "about_item": "Букет с ароматом лаванды и розы "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Румба",
        "item_link": "https://vgosti.by/bukety/rumba.html",
        "cost_byn": "139.0",
        "photos": [
            "https://vgosti.by/files/items/1267/icon.jpg",
            "https://vgosti.by/files/galleries/1989/4621/src.jpg",
            "https://vgosti.by/files/galleries/1989/4622/src.jpg",
            "https://vgosti.by/files/galleries/1989/4623/src.jpg",
            "https://vgosti.by/files/galleries/1989/4624/src.jpg",
            "https://vgosti.by/files/galleries/1989/4625/src.jpg"
        ],
        "description": {
            "composition": [
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35-45 см ",
            "about_item": "Букет насыщен экзотическими цветами "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Трюфель",
        "item_link": "https://vgosti.by/bukety/tryufel.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1265/icon.jpg",
            "https://vgosti.by/files/galleries/1985/4616/src.jpg",
            "https://vgosti.by/files/galleries/1985/4617/src.jpg",
            "https://vgosti.by/files/galleries/1985/4618/src.jpg",
            "https://vgosti.by/files/galleries/1985/4619/src.jpg",
            "https://vgosti.by/files/galleries/1985/4620/src.jpg"
        ],
        "description": {
            "composition": [
                "Экзотика"
            ],
            "package": "Умная корейская бумага ",
            "size": "высота 40-45 см ",
            "about_item": "Букет из экзотических цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Заводной апельсин",
        "item_link": "https://vgosti.by/bukety/zavodnoj-apelsin.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/390/icon.jpg",
            "https://vgosti.by/files/galleries/431/2060/src.jpg",
            "https://vgosti.by/files/galleries/431/2061/src.jpg"
        ],
        "description": {
            "composition": [
                "Гербера",
                "Краспедия",
                "Роза кустовая",
                "Тюльпаны",
                "Фрезия",
                "Эвкалипт"
            ],
            "package": "Французский крафт ",
            "size": "от 35-45 см ",
            "about_item": "Яркий, сочный букет вызывающий радость "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Барселона",
        "item_link": "https://vgosti.by/bukety/barselona.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1168/icon.jpg",
            "https://vgosti.by/files/galleries/1807/4107/src.jpg"
        ],
        "description": {
            "composition": [
                "Гербера",
                "Роза кустовая",
                "Цинерария",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Яркий насыщенный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Привет из декабря",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/privet-iz-dekabrya.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1631/icon.jpg",
            "https://vgosti.by/files/galleries/2651/6277/src.jpg",
            "https://vgosti.by/files/galleries/2651/6278/src.jpg",
            "https://vgosti.by/files/galleries/2651/6279/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Хлопок"
            ],
            "package": "Плетеная натуральная корзина ",
            "size": "высота 20-25 см ",
            "about_item": "Композиция из природных материалов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Робкая кокетка",
        "item_link": "https://vgosti.by/bukety/robkaya-koketka.html",
        "cost_byn": "109.0",
        "photos": [
            "https://vgosti.by/files/items/771/icon.jpg",
            "https://vgosti.by/files/galleries/1122/2115/src.jpg",
            "https://vgosti.by/files/galleries/1122/2116/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Диантус",
                "Пион",
                "Ранункулюс",
                "Фрезия"
            ],
            "package": "Французский двухсторонний крафт с корейской бумагой ",
            "size": "25-30 см ",
            "about_item": "Ароматный букет с экзотическими цветами "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Фэйр Плэй",
        "item_link": "https://vgosti.by/bukety/fejr-plej.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/788/icon.jpg",
            "https://vgosti.by/files/galleries/1156/2157/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Роза пионовидная",
                "Экзотика"
            ],
            "package": "Французский двухсторонний крафт ",
            "size": "40-45 см ",
            "about_item": "Букет из кустовой пионовидной розы "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Африка",
        "item_link": "https://vgosti.by/bukety/afrika.html",
        "cost_byn": "165.0",
        "photos": [
            "https://vgosti.by/files/items/869/icon.jpg",
            "https://vgosti.by/files/galleries/1306/2584/src.jpg",
            "https://vgosti.by/files/galleries/1306/2585/src.jpg"
        ],
        "description": {
            "composition": [
                "Асклепия",
                "Астильба",
                "Гортензия",
                "Котинус",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Тласпи",
                "Эустома"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 40-45 см ",
            "about_item": "Яркий насыщенный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Натюрморт",
        "item_link": "https://vgosti.by/bukety/natyurmort.html",
        "cost_byn": "128.0",
        "photos": [
            "https://vgosti.by/files/items/470/icon.jpg",
            "https://vgosti.by/files/galleries/587/861/src.jpg",
            "https://vgosti.by/files/galleries/587/862/src.jpg",
            "https://vgosti.by/files/galleries/587/863/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Георгина",
                "Роза",
                "Трахелиум",
                "Хиперикум"
            ],
            "package": "Ваза ",
            "size": null,
            "about_item": "Мужской букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Версаче",
        "item_link": "https://vgosti.by/bukety/versache.html",
        "cost_byn": "995.0",
        "photos": [
            "https://vgosti.by/files/items/939/icon.jpg",
            "https://vgosti.by/files/galleries/1434/2889/src.jpg",
            "https://vgosti.by/files/galleries/1434/2890/src.jpg"
        ],
        "description": {
            "composition": [
                "Озотамнус",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая",
                "Хлопок",
                "Хризантема"
            ],
            "package": "Французский крафт ",
            "size": "диаметр более 50 см ",
            "about_item": "Парфюмированный букет из садовых роз "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Антик",
        "item_link": "https://vgosti.by/bukety/antik.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1198/icon.jpg",
            "https://vgosti.by/files/galleries/1865/4280/src.jpg",
            "https://vgosti.by/files/galleries/1865/4281/src.jpg",
            "https://vgosti.by/files/galleries/1865/4282/src.jpg",
            "https://vgosti.by/files/galleries/1865/4283/src.jpg"
        ],
        "description": {
            "composition": [
                "Бувардия",
                "Гортензия",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Хамелациум",
                "Экзотика",
                "Эустома"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Стильный букет из экзотических цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Ванильный крем",
        "item_link": "https://vgosti.by/bukety/vanilnyj-krem.html",
        "cost_byn": "115.0",
        "photos": [
            "https://vgosti.by/files/items/1266/icon.jpg"
        ],
        "description": {
            "composition": [
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "высота 35-40 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Добрый день",
        "item_link": "https://vgosti.by/bukety/dobryj-den.html",
        "cost_byn": "80.0",
        "photos": [
            "https://vgosti.by/files/items/817/icon.jpg"
        ],
        "description": {
            "composition": [
                "Гербера",
                "Ирис",
                "Роза",
                "Роза кустовая",
                "Ромашки",
                "Фрезия",
                "Эвкалипт"
            ],
            "package": "Корейская бумага ",
            "size": "30-35 см ",
            "about_item": "Белоснежный букет с ярким акцентом "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Океания",
        "item_link": "https://vgosti.by/bukety/okeaniya.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/1525/icon.jpg",
            "https://vgosti.by/files/galleries/2461/5883/src.jpg",
            "https://vgosti.by/files/galleries/2461/5884/src.jpg",
            "https://vgosti.by/files/galleries/2461/5885/src.jpg",
            "https://vgosti.by/files/galleries/2461/5886/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Гиацинт",
                "Хризантема"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 30 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Зеленый чай",
        "item_link": "https://vgosti.by/bukety/zelenyj-chaj.html",
        "cost_byn": "110.0",
        "photos": [
            "https://vgosti.by/files/items/854/icon.jpg",
            "https://vgosti.by/files/galleries/1276/2513/src.jpg",
            "https://vgosti.by/files/galleries/1276/2514/src.jpg",
            "https://vgosti.by/files/galleries/1276/2515/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Диантус",
                "Роза",
                "Роза кустовая",
                "Хризантема",
                "Эустома"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Нежный букет из экзотических цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Лето",
        "item_link": "https://vgosti.by/bukety/leto.html",
        "cost_byn": "70.0",
        "photos": [
            "https://vgosti.by/files/items/871/icon.jpg",
            "https://vgosti.by/files/galleries/1310/2589/src.jpg",
            "https://vgosti.by/files/galleries/1310/2590/src.jpg"
        ],
        "description": {
            "composition": [
                "Астранция",
                "Пистация",
                "Ромашки",
                "Тласпи",
                "Эустома"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Сезонный летний букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Валенсия",
        "item_link": "https://vgosti.by/bukety/valensiya.html",
        "cost_byn": "175.0",
        "photos": [
            "https://vgosti.by/files/items/154/icon.jpg",
            "https://vgosti.by/files/galleries/64/962/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Гвоздика",
                "Пистация",
                "Роза кустовая",
                "Хамелациум",
                "Эустома"
            ],
            "package": "Кружевной крафт ",
            "size": "от 50 до 60 см ",
            "about_item": "Большой стильный букет для того, кто хочет произвести впечатление "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Солнечный луг",
        "item_link": "https://vgosti.by/bukety/solnechnyj-lug.html",
        "cost_byn": "225.0",
        "photos": [
            "https://vgosti.by/files/items/346/icon.jpg",
            "https://vgosti.by/files/galleries/365/2057/src.jpg",
            "https://vgosti.by/files/galleries/365/2058/src.jpg",
            "https://vgosti.by/files/galleries/365/2059/src.jpg"
        ],
        "description": {
            "composition": [
                "Ранункулюс",
                "Роза кустовая",
                "Роза пионовидная",
                "Фрезия",
                "Эвкалипт"
            ],
            "package": "Ленты ",
            "size": "от 40-45 см ",
            "about_item": "Солнечный, жизнерадостный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Атлантик",
        "item_link": "https://vgosti.by/bukety/atlantik.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1062/icon.jpg",
            "https://vgosti.by/files/galleries/1642/3365/src.jpg",
            "https://vgosti.by/files/galleries/1642/3366/src.jpg",
            "https://vgosti.by/files/galleries/1642/3367/src.jpg",
            "https://vgosti.by/files/galleries/1642/3368/src.jpg"
        ],
        "description": {
            "composition": [
                "Гербера",
                "Гиацинт",
                "Роза",
                "Скимия"
            ],
            "package": "Корейская бумага ",
            "size": "высота 35-45 см ",
            "about_item": "Ароматный весенний букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Маттиола монобукет",
        "item_link": "https://vgosti.by/bukety/mattiola-monobuket.html",
        "cost_byn": "215.0",
        "photos": [
            "https://vgosti.by/files/items/334/icon.jpg",
            "https://vgosti.by/files/galleries/341/6947/src.jpg",
            "https://vgosti.by/files/galleries/341/6948/src.jpg",
            "https://vgosti.by/files/galleries/341/6949/src.jpg",
            "https://vgosti.by/files/galleries/341/6950/src.jpg"
        ],
        "description": {
            "composition": [
                "Маттиола"
            ],
            "package": "Натуральный крафт, тишью ",
            "size": "от 25-35 см ",
            "about_item": "Нежный ароматный букет из маттиолы "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Коктейль",
        "item_link": "https://vgosti.by/bukety/koktejl.html",
        "cost_byn": "115.0",
        "photos": [
            "https://vgosti.by/files/items/627/icon.jpg",
            "https://vgosti.by/files/galleries/874/1804/src.jpg",
            "https://vgosti.by/files/galleries/874/1805/src.jpg",
            "https://vgosti.by/files/galleries/874/1806/src.jpg",
            "https://vgosti.by/files/galleries/874/1807/src.jpg"
        ],
        "description": {
            "composition": [
                "Зелень",
                "Роза кустовая",
                "Тюльпаны",
                "Фрезия",
                "Хризантема",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "Бокал ",
            "size": null,
            "about_item": "Эксклюзивное дополнение - клубника в шоколаде "
        },
        "category": "Букеты"
    },
    {
        "item_name": null,
        "item_link": "https://vgosti.by/bukety/anglijskij-sad.html",
        "cost_byn": null,
        "photos": [
            ""
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": null,
            "size": null,
            "about_item": null
        },
        "category": "Букеты"
    },
    {
        "item_name": "Первая леди",
        "item_link": "https://vgosti.by/bukety/pervaya-ledi.html",
        "cost_byn": "255.0",
        "photos": [
            "https://vgosti.by/files/items/351/icon.jpg",
            "https://vgosti.by/files/galleries/375/3575/src.jpg",
            "https://vgosti.by/files/galleries/375/3576/src.jpg",
            "https://vgosti.by/files/galleries/375/3577/src.jpg"
        ],
        "description": {
            "composition": [
                "Ранункулюс",
                "Роза кустовая",
                "Роза пионовидная"
            ],
            "package": "Корейская бумага ",
            "size": "от 45-50 см ",
            "about_item": "Стильный европейский букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Сара Бернар",
        "item_link": "https://vgosti.by/bukety/sara-bernar.html",
        "cost_byn": "250.0",
        "photos": [
            "https://vgosti.by/files/items/863/icon.jpg",
            "https://vgosti.by/files/galleries/1294/2555/src.jpg",
            "https://vgosti.by/files/galleries/1294/2556/src.jpg"
        ],
        "description": {
            "composition": [
                "Зелень",
                "Пион"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Сезонный букет сортовых пионов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Пудровые облака",
        "item_link": "https://vgosti.by/bukety/pudrovye-oblaka.html",
        "cost_byn": "279.0",
        "photos": [
            "https://vgosti.by/files/items/356/icon.jpg",
            "https://vgosti.by/files/galleries/385/6915/src.jpg",
            "https://vgosti.by/files/galleries/385/6916/src.jpg",
            "https://vgosti.by/files/galleries/385/6917/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия"
            ],
            "package": "Натуральный крафт ",
            "size": "от 65 см ",
            "about_item": "Большой букет из гортензии "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Ирида",
        "item_link": "https://vgosti.by/bukety/irida.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/626/icon.jpg",
            "https://vgosti.by/files/galleries/872/1782/src.jpg",
            "https://vgosti.by/files/galleries/872/1783/src.jpg",
            "https://vgosti.by/files/galleries/872/1785/src.jpg",
            "https://vgosti.by/files/galleries/872/1802/src.jpg",
            "https://vgosti.by/files/galleries/872/1803/src.jpg"
        ],
        "description": {
            "composition": [
                "Ирис",
                "Эустома"
            ],
            "package": "Флористический каркас ",
            "size": "25 см ",
            "about_item": "Нежный и милый букет круглой формы "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Весенняя капель",
        "item_link": "https://vgosti.by/bukety/vesennyaya-kapel.html",
        "cost_byn": "35.0",
        "photos": [
            "https://vgosti.by/files/items/1048/icon.jpg",
            "https://vgosti.by/files/galleries/1622/3252/src.jpg",
            "https://vgosti.by/files/galleries/1622/3253/src.jpg",
            "https://vgosti.by/files/galleries/1622/3254/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Корейская бумага ",
            "size": "высота 35-45 см ",
            "about_item": "Весенний букет с тонким ароматом "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Корица",
        "item_link": "https://vgosti.by/bukety/korica.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/774/icon.jpg",
            "https://vgosti.by/files/galleries/1128/2123/src.jpg",
            "https://vgosti.by/files/galleries/1128/2124/src.jpg",
            "https://vgosti.by/files/galleries/1128/2125/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Пистация",
                "Роза"
            ],
            "package": "Французский двухсторонний крафт ",
            "size": "20-25 см ",
            "about_item": "Букет из роз и астрометрии с корицей "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Манго",
        "item_link": "https://vgosti.by/bukety/mango.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/728/icon.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Ранункулюс",
                "Роза кустовая",
                "Хризантема",
                "Эвкалипт"
            ],
            "package": "Французский крафт ",
            "size": "диаметр 30 см ",
            "about_item": "Нежный букет с экзотическими цветами "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Стремление",
        "item_link": "https://vgosti.by/bukety/stremlenie.html",
        "cost_byn": "164.0",
        "photos": [
            "https://vgosti.by/files/items/459/icon.jpg"
        ],
        "description": {
            "composition": [
                "Мужской состав"
            ],
            "package": "Без упаковки ",
            "size": null,
            "about_item": "Мужской букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Паприка",
        "item_link": "https://vgosti.by/cvety-v-korobke/paprika.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/1685/icon.jpg",
            "https://vgosti.by/files/galleries/2749/6476/src.jpg",
            "https://vgosti.by/files/galleries/2749/6477/src.jpg",
            "https://vgosti.by/files/galleries/2749/6478/src.jpg"
        ],
        "description": {
            "composition": [
                "Канадская пихта",
                "Роза",
                "Хлопок",
                "Экзотика"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 25-29 см ",
            "about_item": "Композиция высокой стойкости "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Принцесса",
        "item_link": "https://vgosti.by/cvety-v-korobke/princessa.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/1937/icon.jpg",
            "https://vgosti.by/files/galleries/3220/7137/src.jpg",
            "https://vgosti.by/files/galleries/3220/7138/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза пионовидная"
            ],
            "package": "Декоративная фигурка ",
            "size": "до 17-20 см ",
            "about_item": "Композиция в губке с экзотическими цветами "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Романтический вечер",
        "item_link": "https://vgosti.by/cvety-v-korobke/romanticheskij-vecher.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/1834/icon.jpg",
            "https://vgosti.by/files/galleries/3026/6894/src.jpg",
            "https://vgosti.by/files/galleries/3026/6895/src.jpg",
            "https://vgosti.by/files/galleries/3026/6896/src.jpg"
        ],
        "description": {
            "composition": [
                "Экзотика"
            ],
            "package": "Коробка с крышечкой ",
            "size": "15 х 15 см ",
            "about_item": "Композиция с ароматизированной свечой в стильной упаковке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Бархатные мечты",
        "item_link": "https://vgosti.by/cvety-v-korobke/barhatnye-mechty.html",
        "cost_byn": "72.0",
        "photos": [
            "https://vgosti.by/files/items/1695/icon.jpg",
            "https://vgosti.by/files/galleries/2767/6530/src.jpg",
            "https://vgosti.by/files/galleries/2767/6531/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Роза",
                "Хамелациум",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Бархатная шляпная коробка ",
            "size": "высота 23-27см ",
            "about_item": "Экзотический состав высокой стойкости "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Цветочная поляна",
        "item_link": "https://vgosti.by/cvety-v-korobke/cvetochnaya-polyana.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1717/icon.jpg",
            "https://vgosti.by/files/galleries/2811/6588/src.jpg",
            "https://vgosti.by/files/galleries/2811/6589/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Роза кустовая",
                "Роза пионовидная",
                "Хамелациум",
                "Хризантема"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 25 -33см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Фрида",
        "item_link": "https://vgosti.by/cvety-v-korobke/frida.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/1787/icon.jpg"
        ],
        "description": {
            "composition": [
                "Гербера",
                "Диантус",
                "Хризантема"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 15 см ",
            "about_item": "Компактная шляпная коробка с цветами в оазисе "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Белла Линда",
        "item_link": "https://vgosti.by/cvety-v-korobke/bella-linda.html",
        "cost_byn": "58.0",
        "photos": [
            "https://vgosti.by/files/items/1605/icon.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Роза пионовидная",
                "Хамелациум",
                "Хризантема",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "Коробка в цветочный принт ",
            "size": "Высота 25 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Рубиновый блеск",
        "item_link": "https://vgosti.by/cvety-v-korobke/rubinovyj-blesk.html",
        "cost_byn": "72.0",
        "photos": [
            "https://vgosti.by/files/items/1457/icon.jpg",
            "https://vgosti.by/files/galleries/2351/5662/src.jpg",
            "https://vgosti.by/files/galleries/2351/5663/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Гербера",
                "Диантус",
                "Зелень",
                "Роза"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 18-22 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Парижанка",
        "item_link": "https://vgosti.by/cvety-v-korobke/parizhanka.html",
        "cost_byn": "139.0",
        "photos": [
            "https://vgosti.by/files/items/1228/icon.jpg",
            "https://vgosti.by/files/galleries/1919/4418/src.jpg",
            "https://vgosti.by/files/galleries/1919/4419/src.jpg"
        ],
        "description": {
            "composition": [
                "Зелень",
                "Роза",
                "Роза кустовая",
                "Роза французская",
                "Роза пионовидная",
                "Роза садовая",
                "Эвкалипт"
            ],
            "package": "Шляпная коробка ",
            "size": "диаметр 25 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Цирконий",
        "item_link": "https://vgosti.by/cvety-v-korobke/cirkonij.html",
        "cost_byn": "149.0",
        "photos": [
            "https://vgosti.by/files/items/1176/icon.jpg",
            "https://vgosti.by/files/galleries/1823/4154/src.jpg",
            "https://vgosti.by/files/galleries/1823/4155/src.jpg",
            "https://vgosti.by/files/galleries/1823/4156/src.jpg",
            "https://vgosti.by/files/galleries/1823/4157/src.jpg",
            "https://vgosti.by/files/galleries/1823/4158/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза пионовидная",
                "Роза садовая",
                "Хризантема",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "Диаметр 25 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Шаттл",
        "item_link": "https://vgosti.by/cvety-v-korobke/shattl.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/1277/icon.jpg",
            "https://vgosti.by/files/galleries/2009/4658/src.jpg",
            "https://vgosti.by/files/galleries/2009/4659/src.jpg",
            "https://vgosti.by/files/galleries/2009/4660/src.jpg",
            "https://vgosti.by/files/galleries/2009/4661/src.jpg",
            "https://vgosti.by/files/galleries/2009/4662/src.jpg",
            "https://vgosti.by/files/galleries/2009/4663/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Шляпная коробка ",
            "size": "высота коробки 20 см, диаметр шара 30 см ",
            "about_item": "Композиция с воздушным шаром "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Ванда",
        "item_link": "https://vgosti.by/cvety-v-korobke/vanda.html",
        "cost_byn": "32.0",
        "photos": [
            "https://vgosti.by/files/items/1518/icon.jpg",
            "https://vgosti.by/files/galleries/2447/5860/src.jpg",
            "https://vgosti.by/files/galleries/2447/5861/src.jpg",
            "https://vgosti.by/files/galleries/2447/5862/src.jpg",
            "https://vgosti.by/files/galleries/2447/5863/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт",
                "Орхидея",
                "Фрезия",
                "Хамелациум",
                "Эустома"
            ],
            "package": "Стильная крафт коробка ",
            "size": "высота 20-22 см ",
            "about_item": "Композиция высокой стойкости "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Композиция Флёр",
        "item_link": "https://vgosti.by/cvety-v-korobke/kompoziciya-flyor.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/270/icon.jpg",
            "https://vgosti.by/files/galleries/213/1234/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Гербера",
                "Роза кустовая",
                "Хризантема",
                "Эвкалипт"
            ],
            "package": "Металлическое кашпо ",
            "size": "до 15-20 см ",
            "about_item": "Стильная композиция в металлическом кашпо "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Блеск",
        "item_link": "https://vgosti.by/cvety-v-korobke/blesk.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/251/icon.jpg",
            "https://vgosti.by/files/galleries/174/3527/src.jpg",
            "https://vgosti.by/files/galleries/174/3528/src.jpg",
            "https://vgosti.by/files/galleries/174/3529/src.jpg",
            "https://vgosti.by/files/galleries/174/3530/src.jpg"
        ],
        "description": {
            "composition": [
                "Гипсофил",
                "Зелень",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "от 20-25 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Пробуждение весны",
        "item_link": "https://vgosti.by/cvety-v-korobke/probuzhdenie-vesny.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/1054/icon.jpg",
            "https://vgosti.by/files/galleries/1628/3269/src.jpg",
            "https://vgosti.by/files/galleries/1628/3270/src.jpg",
            "https://vgosti.by/files/galleries/1628/3271/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "кашпо ручной работы в форме яйца ",
            "size": "высота 20-25 см ",
            "about_item": "Композиция весенне-пасхальная "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Ахелия",
        "item_link": "https://vgosti.by/cvety-v-korobke/aheliya.html",
        "cost_byn": "100.0",
        "photos": [
            "https://vgosti.by/files/items/1158/icon.jpg",
            "https://vgosti.by/files/galleries/1787/4037/src.jpg",
            "https://vgosti.by/files/galleries/1787/4038/src.jpg",
            "https://vgosti.by/files/galleries/1787/4039/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Диантус",
                "Роза кустовая",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 25-30 см ",
            "about_item": "Летняя композиция в шляпной коробке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Рождение солнца",
        "item_link": "https://vgosti.by/cvety-v-korobke/rozhdenie-solnca.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1052/icon.jpg",
            "https://vgosti.by/files/galleries/1624/3255/src.jpg",
            "https://vgosti.by/files/galleries/1624/3256/src.jpg",
            "https://vgosti.by/files/galleries/1624/3257/src.jpg",
            "https://vgosti.by/files/galleries/1624/3258/src.jpg",
            "https://vgosti.by/files/galleries/1624/3259/src.jpg",
            "https://vgosti.by/files/galleries/1624/3260/src.jpg",
            "https://vgosti.by/files/galleries/1624/3261/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Кашпо ",
            "size": "высота 25-35 см ",
            "about_item": "Пасхально-весенняя композиция "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Конверт Джумилия",
        "item_link": "https://vgosti.by/cvety-v-korobke/konvert-dzhumiliya.html",
        "cost_byn": "36.0",
        "photos": [
            "https://vgosti.by/files/items/1205/icon.jpg",
            "https://vgosti.by/files/galleries/1873/4297/src.jpg",
            "https://vgosti.by/files/galleries/1873/4298/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Роза",
                "Эустома"
            ],
            "package": "Конверт ",
            "size": "ширина 17 см высота 25 см ",
            "about_item": "Стильная композиция в конверте "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Коробка с цветами Зефирное облако",
        "item_link": "https://vgosti.by/cvety-v-korobke/korobka-s-cvetami-zefirnoe-oblako.html",
        "cost_byn": "265.0",
        "photos": [
            "https://vgosti.by/files/items/734/icon.jpg",
            "https://vgosti.by/files/galleries/1064/1982/src.jpg",
            "https://vgosti.by/files/galleries/1064/1983/src.jpg",
            "https://vgosti.by/files/galleries/1064/1984/src.jpg"
        ],
        "description": {
            "composition": [
                "Ранункулюс",
                "Эвкалипт"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 25-30 см ",
            "about_item": "Шляпная коробка из роскошных ранункулюсов "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Цветочная волна",
        "item_link": "https://vgosti.by/cvety-v-korobke/cvetochnaya-volna.html",
        "cost_byn": "34.0",
        "photos": [
            "https://vgosti.by/files/items/1533/icon.jpg",
            "https://vgosti.by/files/galleries/2477/5940/src.jpg",
            "https://vgosti.by/files/galleries/2477/5941/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Стильная крафт коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Аквамарин",
        "item_link": "https://vgosti.by/cvety-v-korobke/akvamarin.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/967/icon.jpg",
            "https://vgosti.by/files/galleries/1482/2983/src.jpg",
            "https://vgosti.by/files/galleries/1482/2984/src.jpg",
            "https://vgosti.by/files/galleries/1482/2985/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Гвоздика",
                "Хризантема",
                "Эустома"
            ],
            "package": "Кашпо деревянное ",
            "size": "длина 20 см, высота 25 см ",
            "about_item": "Красивая композиция неоновых оттенков "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Крылья",
        "item_link": "https://vgosti.by/cvety-v-korobke/krylya.html",
        "cost_byn": "43.0",
        "photos": [
            "https://vgosti.by/files/items/610/icon.jpg",
            "https://vgosti.by/files/galleries/848/1769/src.jpg",
            "https://vgosti.by/files/galleries/848/1770/src.jpg"
        ],
        "description": {
            "composition": [
                "Пистация",
                "Питоспорум",
                "Фрезия",
                "Хризантема",
                "Эустома"
            ],
            "package": "Металлическое кашпо ",
            "size": "30 см ",
            "about_item": "Оригинальная композиция в кружевном кашпо "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Карамелька",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/karamelka.html",
        "cost_byn": "167.0",
        "photos": [
            "https://vgosti.by/files/items/1768/icon.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Бархатная шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Интерьерная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Бомбастик",
        "item_link": "https://vgosti.by/cvety-v-korobke/bombastik.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/257/icon.jpg",
            "https://vgosti.by/files/galleries/187/3607/src.jpg",
            "https://vgosti.by/files/galleries/187/3608/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Ранункулюс",
                "Роза кустовая",
                "Скимия",
                "Тюльпаны",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Деревянное кашпо ",
            "size": "25 см ",
            "about_item": "Стильная композиция в деревянном кашпо "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Коробка с макарунами XL+",
        "item_link": "https://vgosti.by/cvety-v-korobke/korobka-s-makarunami-xl.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/791/icon.jpg",
            "https://vgosti.by/files/galleries/1162/2159/src.jpg",
            "https://vgosti.by/files/galleries/1162/2160/src.jpg",
            "https://vgosti.by/files/galleries/1162/2161/src.jpg",
            "https://vgosti.by/files/galleries/1162/2162/src.jpg"
        ],
        "description": {
            "composition": [
                "Макаруны,",
                "Сладости",
                "Ранункулюс",
                "Роза кустовая",
                "Эустома"
            ],
            "package": "Коробка с магнитом ",
            "size": "25-35 см ",
            "about_item": "Сладкий цветочный сюрприз для каждого повода "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Цветочный конверт",
        "item_link": "https://vgosti.by/cvety-v-korobke/cvetochnyj-konvert.html",
        "cost_byn": "35.0",
        "photos": [
            "https://vgosti.by/files/items/1073/icon.jpg",
            "https://vgosti.by/files/galleries/1664/3442/src.jpg",
            "https://vgosti.by/files/galleries/1664/3443/src.jpg",
            "https://vgosti.by/files/galleries/1664/3444/src.jpg",
            "https://vgosti.by/files/galleries/1664/3445/src.jpg",
            "https://vgosti.by/files/galleries/1664/3446/src.jpg"
        ],
        "description": {
            "composition": [
                "Зелень",
                "Роза кустовая"
            ],
            "package": "Конверт ",
            "size": "высота 20-25 см ",
            "about_item": "Нежный конверт с цветами "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Василек",
        "item_link": "https://vgosti.by/cvety-v-korobke/vasilek.html",
        "cost_byn": "78.0",
        "photos": [
            "https://vgosti.by/files/items/758/icon.jpg",
            "https://vgosti.by/files/galleries/1104/2029/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Роза кустовая"
            ],
            "package": "Деревянное кашпо ",
            "size": null,
            "about_item": "Стильное кашпо "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Коробка с макарунами ХL",
        "item_link": "https://vgosti.by/cvety-v-korobke/korobka-s-makarunami-hl.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/307/icon.jpg",
            "https://vgosti.by/files/galleries/287/3605/src.jpg",
            "https://vgosti.by/files/galleries/287/3606/src.jpg"
        ],
        "description": {
            "composition": [
                "Макаруны,",
                "Сладости",
                "Пистация",
                "Роза кустовая",
                "Хризантема",
                "Эустома"
            ],
            "package": "Коробка ",
            "size": "от 25-35 см ",
            "about_item": "Сладкий цветочный сюрприз для каждого повода "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Уютный дом",
        "item_link": "https://vgosti.by/cvety-v-korobke/uyutnyj-dom.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/625/icon.jpg",
            "https://vgosti.by/files/galleries/870/1779/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "керамика ",
            "size": null,
            "about_item": null
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Фортуна",
        "item_link": "https://vgosti.by/cvety-v-korobke/fortuna.html",
        "cost_byn": "27.0",
        "photos": [
            "https://vgosti.by/files/items/231/icon.jpg",
            "https://vgosti.by/files/galleries/164/3332/src.jpg",
            "https://vgosti.by/files/galleries/164/3333/src.jpg",
            "https://vgosti.by/files/galleries/164/3334/src.jpg",
            "https://vgosti.by/files/galleries/164/3335/src.jpg",
            "https://vgosti.by/files/galleries/164/3336/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Роза",
                "Хлопок"
            ],
            "package": "Декорированное кашпо ",
            "size": "высота 17-20 см ",
            "about_item": "Главное качество этого выбора – бюджетно и красиво "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Шамони",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/shamoni.html",
        "cost_byn": "68.0",
        "photos": [
            "https://vgosti.by/files/items/1936/icon.jpg",
            "https://vgosti.by/files/galleries/3218/7136/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Летный ",
            "size": "Длинна до 25-27 см ",
            "about_item": "Букет из лаванды со стабилизированной розой - гарантия 5 лет "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Миллион цветов",
        "item_link": "https://vgosti.by/bukety/million-cvetov.html",
        "cost_byn": "555.0",
        "photos": [
            "https://vgosti.by/files/items/809/icon.jpg",
            "https://vgosti.by/files/galleries/1192/2260/src.jpg",
            "https://vgosti.by/files/galleries/1192/2261/src.jpg",
            "https://vgosti.by/files/galleries/1192/2262/src.jpg",
            "https://vgosti.by/files/galleries/1192/2263/src.jpg",
            "https://vgosti.by/files/galleries/1192/2264/src.jpg",
            "https://vgosti.by/files/galleries/1192/2265/src.jpg",
            "https://vgosti.by/files/galleries/1192/2266/src.jpg",
            "https://vgosti.by/files/galleries/1192/2267/src.jpg",
            "https://vgosti.by/files/galleries/1192/2268/src.jpg",
            "https://vgosti.by/files/galleries/1192/2269/src.jpg",
            "https://vgosti.by/files/galleries/1192/2270/src.jpg",
            "https://vgosti.by/files/galleries/1192/2271/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Астильба",
                "Гортензия",
                "Гвоздика",
                "Диантус",
                "Зелень",
                "Маттиола",
                "Озотамнус",
                "Пион",
                "Пистация",
                "Питоспорум",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Сирень",
                "Скимия",
                "Трахелиум",
                "Фрезия"
            ],
            "package": "Атласные ленты ",
            "size": "100-130 см ",
            "about_item": "Большой букет из огромного количества цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Небесная радость",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/nebesnaya-radost.html",
        "cost_byn": "115.0",
        "photos": [
            "https://vgosti.by/files/items/1921/icon.jpg",
            "https://vgosti.by/files/galleries/3190/7100/src.jpg",
            "https://vgosti.by/files/galleries/3190/7101/src.jpg",
            "https://vgosti.by/files/galleries/3190/7102/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 21 см ",
            "about_item": "Гарантия качества сухоцветов 5 лет "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Благородство",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/blagorodstvo.html",
        "cost_byn": "112.0",
        "photos": [
            "https://vgosti.by/files/items/1529/icon.jpg",
            "https://vgosti.by/files/galleries/2469/5920/src.jpg",
            "https://vgosti.by/files/galleries/2469/5921/src.jpg",
            "https://vgosti.by/files/galleries/2469/5922/src.jpg",
            "https://vgosti.by/files/galleries/2469/5923/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 25-29 см ",
            "about_item": "Композиция из сухоцветов и стабилизированных цветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Энна",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/enna.html",
        "cost_byn": "52.0",
        "photos": [
            "https://vgosti.by/files/items/1575/icon.jpg",
            "https://vgosti.by/files/galleries/2551/6111/src.jpg",
            "https://vgosti.by/files/galleries/2551/6112/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Стильное крафт-кашпо ",
            "size": "Высота 25 см ",
            "about_item": "Стильная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Пикадилли",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/pikadilli.html",
        "cost_byn": "161.0",
        "photos": [
            "https://vgosti.by/files/items/1546/icon.jpg",
            "https://vgosti.by/files/galleries/2503/6009/src.jpg",
            "https://vgosti.by/files/galleries/2503/6010/src.jpg",
            "https://vgosti.by/files/galleries/2503/6011/src.jpg",
            "https://vgosti.by/files/galleries/2503/6012/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Коробка прямоугольной формы ",
            "size": "Высота 27-33 см ",
            "about_item": "Интерьерная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Космическое небо",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/kosmicheskoe-nebo.html",
        "cost_byn": "156.0",
        "photos": [
            "https://vgosti.by/files/items/1724/icon.jpg",
            "https://vgosti.by/files/galleries/2825/6614/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "Диаметр 25 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Фоджа",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/fodzha.html",
        "cost_byn": "66.0",
        "photos": [
            "https://vgosti.by/files/items/1572/icon.jpg",
            "https://vgosti.by/files/galleries/2545/6104/src.jpg",
            "https://vgosti.by/files/galleries/2545/6105/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Стильное керамическое кашпо ",
            "size": "высота 22 см ",
            "about_item": "Стильная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Табаско",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/tabasko.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1398/icon.jpg",
            "https://vgosti.by/files/galleries/2239/5343/src.jpg",
            "https://vgosti.by/files/galleries/2239/5344/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Корейская умная бумага ",
            "size": "высота 25-29 см ",
            "about_item": "Букет из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Альмадин",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/almadin.html",
        "cost_byn": "185.0",
        "photos": [
            "https://vgosti.by/files/items/1598/icon.jpg",
            "https://vgosti.by/files/galleries/2585/6131/src.jpg",
            "https://vgosti.by/files/galleries/2585/6132/src.jpg",
            "https://vgosti.by/files/galleries/2585/6133/src.jpg",
            "https://vgosti.by/files/galleries/2585/6134/src.jpg",
            "https://vgosti.by/files/galleries/2585/6135/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Интерьерная композиция из сухоцветов ",
            "size": "Высота 60-70 см ",
            "about_item": "Стильная яркая композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Летний зной",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/letnij-znoj.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/1776/icon.jpg",
            "https://vgosti.by/files/galleries/2916/6705/src.jpg",
            "https://vgosti.by/files/galleries/2916/6706/src.jpg",
            "https://vgosti.by/files/galleries/2916/6707/src.jpg",
            "https://vgosti.by/files/galleries/2916/6708/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Декоративное кашпо ",
            "size": "Высота 20 см, диаметр 20 см ",
            "about_item": "Стильная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Версаль",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/versal.html",
        "cost_byn": "193.0",
        "photos": [
            "https://vgosti.by/files/items/1544/icon.jpg",
            "https://vgosti.by/files/galleries/2499/6001/src.jpg",
            "https://vgosti.by/files/galleries/2499/6002/src.jpg",
            "https://vgosti.by/files/galleries/2499/6003/src.jpg",
            "https://vgosti.by/files/galleries/2499/6004/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухофрукты"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 25-33см ",
            "about_item": "Объемная композиция из сухоцветов и стабилизированных цветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Николя",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/nikolya.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/1551/icon.jpg",
            "https://vgosti.by/files/galleries/2513/6026/src.jpg",
            "https://vgosti.by/files/galleries/2513/6027/src.jpg",
            "https://vgosti.by/files/galleries/2513/6028/src.jpg",
            "https://vgosti.by/files/galleries/2513/6029/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Декоративное бетонное кашпо ",
            "size": "Высота 55 см ",
            "about_item": "Стабилизированное комнатное растение не требующее никакого ухода "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Марселина",
        "item_link": "https://vgosti.by/bukety/marselina.html",
        "cost_byn": "58.0",
        "photos": [
            "https://vgosti.by/files/items/261/icon.jpg",
            "https://vgosti.by/files/galleries/195/3464/src.jpg",
            "https://vgosti.by/files/galleries/195/3465/src.jpg",
            "https://vgosti.by/files/galleries/195/3466/src.jpg",
            "https://vgosti.by/files/galleries/195/3467/src.jpg",
            "https://vgosti.by/files/galleries/195/3468/src.jpg",
            "https://vgosti.by/files/galleries/195/3469/src.jpg",
            "https://vgosti.by/files/galleries/195/3470/src.jpg",
            "https://vgosti.by/files/galleries/195/3471/src.jpg",
            "https://vgosti.by/files/galleries/195/3472/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус"
            ],
            "package": "Тишью с корейской бумагой ",
            "size": "30-35 см ",
            "about_item": "Букет длительной стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Свежий лайм",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/svezhij-lajm.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1275/icon.jpg",
            "https://vgosti.by/files/galleries/2005/4656/src.jpg",
            "https://vgosti.by/files/galleries/2005/4657/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Умная корейская бумага ",
            "size": "высота 20-25 см ",
            "about_item": "Букет со стойкостью более 5 лет "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Солярис",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/solyaris.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/1272/icon.jpg",
            "https://vgosti.by/files/galleries/1999/4646/src.jpg",
            "https://vgosti.by/files/galleries/1999/4647/src.jpg",
            "https://vgosti.by/files/galleries/1999/4648/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Умная корейская бумага ",
            "size": "высота 20-25 см ",
            "about_item": "Букет из суховетов и стабилизированной розы "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Майорка",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/majorka.html",
        "cost_byn": "149.0",
        "photos": [
            "https://vgosti.by/files/items/1212/icon.jpg",
            "https://vgosti.by/files/galleries/1887/4320/src.jpg",
            "https://vgosti.by/files/galleries/1887/4321/src.jpg",
            "https://vgosti.by/files/galleries/1887/4322/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "15-20 см ",
            "about_item": "Интерьерная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Интерьерная композиция Зима",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/interernaya-kompoziciya-zima.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/1283/icon.jpg",
            "https://vgosti.by/files/galleries/2019/4696/src.jpg",
            "https://vgosti.by/files/galleries/2019/4697/src.jpg",
            "https://vgosti.by/files/galleries/2019/4698/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 60 см ",
            "about_item": "Интерьерная композиция в зимнем стиле "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Графиня",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/grafinya.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/1250/icon.jpg",
            "https://vgosti.by/files/galleries/1955/4552/src.jpg",
            "https://vgosti.by/files/galleries/1955/4553/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Умная корейская бумага ",
            "size": "высота 30-35 см ",
            "about_item": "Букет длительной стойкости более 5 лет "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Карибы",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/kariby.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/1219/icon.jpg",
            "https://vgosti.by/files/galleries/1901/4374/src.jpg",
            "https://vgosti.by/files/galleries/1901/4375/src.jpg",
            "https://vgosti.by/files/galleries/1901/4376/src.jpg",
            "https://vgosti.by/files/galleries/1901/4377/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Корейская умная бумага ",
            "size": "высота 20-25 см ",
            "about_item": "Букет длительной стойкости из лагуруса "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Модерн",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/modern.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/1171/icon.jpg",
            "https://vgosti.by/files/galleries/1813/4126/src.jpg",
            "https://vgosti.by/files/galleries/1813/4127/src.jpg",
            "https://vgosti.by/files/galleries/1813/4128/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Керамическое кашпо ",
            "size": "высота 20 см ",
            "about_item": "Интерьерная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Болонья",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/bolonya.html",
        "cost_byn": "46.0",
        "photos": [
            "https://vgosti.by/files/items/1576/icon.jpg",
            "https://vgosti.by/files/galleries/2553/6113/src.jpg",
            "https://vgosti.by/files/galleries/2553/6114/src.jpg",
            "https://vgosti.by/files/galleries/2553/6115/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Стильное крафт-кашпо ",
            "size": "Высота 25 см ",
            "about_item": "Стильная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Красочная осень",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/krasochnaya-osen.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/962/icon.jpg",
            "https://vgosti.by/files/galleries/1480/2980/src.jpg",
            "https://vgosti.by/files/galleries/1480/2981/src.jpg",
            "https://vgosti.by/files/galleries/1480/2982/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Керамическое кашпо ",
            "size": "высота 20-25 см ",
            "about_item": "Интерьерная композиция из сухоцветов со свечой "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Морской песок",
        "item_link": "https://vgosti.by/cvety-v-korobke/morskoj-pesok.html",
        "cost_byn": "98.0",
        "photos": [
            "https://vgosti.by/files/items/1458/icon.jpg",
            "https://vgosti.by/files/galleries/2353/5664/src.jpg",
            "https://vgosti.by/files/galleries/2353/5665/src.jpg",
            "https://vgosti.by/files/galleries/2353/5666/src.jpg",
            "https://vgosti.by/files/galleries/2353/5667/src.jpg",
            "https://vgosti.by/files/galleries/2353/5668/src.jpg",
            "https://vgosti.by/files/galleries/2353/5669/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт",
                "Маттиола",
                "Орхидея",
                "Озотамнус",
                "Роза кустовая",
                "Роза французская",
                "Роза пионовидная"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 25-30 см ",
            "about_item": "Букет находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Кантри",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/kantri-1.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/1190/icon.jpg",
            "https://vgosti.by/files/galleries/1849/4241/src.jpg",
            "https://vgosti.by/files/galleries/1849/4242/src.jpg",
            "https://vgosti.by/files/galleries/1849/4243/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Керамическое кашпо ",
            "size": "высота 20-25 см ",
            "about_item": "Интерьерная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Весенняя зелень",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/vesennyaya-zelen.html",
        "cost_byn": "29.0",
        "photos": [
            "https://vgosti.by/files/items/1077/icon.jpg",
            "https://vgosti.by/files/galleries/1672/3487/src.jpg",
            "https://vgosti.by/files/galleries/1672/3488/src.jpg",
            "https://vgosti.by/files/galleries/1672/3489/src.jpg",
            "https://vgosti.by/files/galleries/1672/3490/src.jpg",
            "https://vgosti.by/files/galleries/1672/3491/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Корейская бумага ",
            "size": "высота 20 см ",
            "about_item": "Букет из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Арктика",
        "item_link": "https://vgosti.by/8-marta/arktika.html",
        "cost_byn": "165.0",
        "photos": [
            "https://vgosti.by/files/items/1815/icon.jpg",
            "https://vgosti.by/files/galleries/2988/6826/src.jpg",
            "https://vgosti.by/files/galleries/2988/6827/src.jpg",
            "https://vgosti.by/files/galleries/2988/6828/src.jpg",
            "https://vgosti.by/files/galleries/2988/6829/src.jpg",
            "https://vgosti.by/files/galleries/2988/6830/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Декоративная упаковка ",
            "size": "Диаметр 25-30 см ",
            "about_item": "Букет из голландских тюльпанов "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Аромат",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/aromat.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/1075/icon.jpg",
            "https://vgosti.by/files/galleries/1668/3461/src.jpg",
            "https://vgosti.by/files/galleries/1668/3462/src.jpg",
            "https://vgosti.by/files/galleries/1668/3463/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Лаванда",
                "Хлопок"
            ],
            "package": "Корейская бумага ",
            "size": "Высота 25 см ",
            "about_item": "Идеальное сочетание сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Хлопушек",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/hlopushek.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/1072/icon.jpg",
            "https://vgosti.by/files/galleries/1662/3438/src.jpg",
            "https://vgosti.by/files/galleries/1662/3439/src.jpg",
            "https://vgosti.by/files/galleries/1662/3440/src.jpg",
            "https://vgosti.by/files/galleries/1662/3441/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Лаванда",
                "Хлопок"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 15-20 см ",
            "about_item": "Букет из хлопка и лаванды "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Осень",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/osen.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/879/icon.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "без упаковки ",
            "size": "высота 25-35 см ",
            "about_item": "Букет их колосьев "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Лаванда XL",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/lavanda-xl.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/323/icon.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Кружево ",
            "size": null,
            "about_item": null
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Лавандовый венок L",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/lavandovyj-venok-l.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/694/icon.jpg",
            "https://vgosti.by/files/galleries/990/1917/src.jpg"
        ],
        "description": {
            "composition": [
                "Лаванда"
            ],
            "package": null,
            "size": "30 см ",
            "about_item": "Венок из натуральной лаванды "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Лавандовый фраппе",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/lavandovyj-frappe.html",
        "cost_byn": "36.0",
        "photos": [
            "https://vgosti.by/files/items/1293/icon.jpg",
            "https://vgosti.by/files/galleries/2039/4771/src.jpg",
            "https://vgosti.by/files/galleries/2039/4772/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Лаванда"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 20-23 см ",
            "about_item": "Ароматный лавандовый комплимент "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Флорариум",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/florarium.html",
        "cost_byn": "66.0",
        "photos": [
            "https://vgosti.by/files/items/457/icon.jpg"
        ],
        "description": {
            "composition": [
                "Кактус"
            ],
            "package": null,
            "size": null,
            "about_item": null
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Лавандовый венок XL",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/lavandovyj-venok-xl.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/693/icon.jpg",
            "https://vgosti.by/files/galleries/988/1915/src.jpg",
            "https://vgosti.by/files/galleries/988/1916/src.jpg"
        ],
        "description": {
            "composition": [
                "Лаванда"
            ],
            "package": null,
            "size": "диаметр 35 см ",
            "about_item": "Натуральная ароматная лаванда "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Слоновая кость",
        "item_link": "https://vgosti.by/cvety-v-korobke/slonovaya-kost.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/1254/icon.jpg",
            "https://vgosti.by/files/galleries/1963/4567/src.jpg",
            "https://vgosti.by/files/galleries/1963/4568/src.jpg",
            "https://vgosti.by/files/galleries/1963/4569/src.jpg",
            "https://vgosti.by/files/galleries/1963/4570/src.jpg",
            "https://vgosti.by/files/galleries/1963/4571/src.jpg",
            "https://vgosti.by/files/galleries/1963/4572/src.jpg",
            "https://vgosti.by/files/galleries/1963/4573/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Гербера",
                "Зелень",
                "Роза кустовая",
                "Роза пионовидная",
                "Экзотика"
            ],
            "package": "Керамическое кашпо в форме домика ",
            "size": "высота 15-18 см, ширина композиции 27 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Лаванда",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/lavanda.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/609/icon.jpg",
            "https://vgosti.by/files/galleries/847/1768/src.jpg"
        ],
        "description": {
            "composition": [
                "Лаванда",
                "Экзотика"
            ],
            "package": "Французский крафт ",
            "size": "высота 20-25 см ",
            "about_item": "Ароматный букет из лаванды - стойкость 5 лет "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Трепетное сердце",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/trepetnoe-serdce.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/1725/icon.jpg",
            "https://vgosti.by/files/galleries/2827/6615/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная"
            ],
            "package": "Коробка в форме сердца с крышкой ",
            "size": "Диаметр до 20 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Клубничное утро",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/klubnichnoe-utro.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/989/icon.jpg",
            "https://vgosti.by/files/galleries/1516/3051/src.jpg",
            "https://vgosti.by/files/galleries/1516/3052/src.jpg",
            "https://vgosti.by/files/galleries/1516/3053/src.jpg",
            "https://vgosti.by/files/galleries/1516/3054/src.jpg",
            "https://vgosti.by/files/galleries/1516/3055/src.jpg",
            "https://vgosti.by/files/galleries/1516/3056/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "Керамическое кашпо ",
            "size": "15-20 см ",
            "about_item": "Композиция с натуральной клубникой "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Сердечная история",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/serdechnaya-istoriya.html",
        "cost_byn": "142.0",
        "photos": [
            "https://vgosti.by/files/items/1461/icon.jpg"
        ],
        "description": {
            "composition": [
                "Орхидея",
                "Роза",
                "Роза кустовая",
                "Экзотика",
                "Эустома"
            ],
            "package": "без упаковки ",
            "size": "высота 25-30 см ",
            "about_item": "Букет в форме сердца из экзотических цветов "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Букет из 51 розы",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/buket-iz-51-rozi.html",
        "cost_byn": "350.0",
        "photos": [
            "https://vgosti.by/files/items/504/icon.jpg"
        ],
        "description": {
            "composition": [
                "Роза"
            ],
            "package": "Упаковка будет определена по Вашему желанию. ",
            "size": "высота 60-70 см ",
            "about_item": "Цвет розы может быть изменен заказчиком "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Одуванчик",
        "item_link": "https://vgosti.by/korziny-s-cvetami/oduvanchik.html",
        "cost_byn": "101.0",
        "photos": [
            "https://vgosti.by/files/items/468/icon.jpg"
        ],
        "description": {
            "composition": [
                "Астильба"
            ],
            "package": null,
            "size": null,
            "about_item": null
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Маккиато",
        "item_link": "https://vgosti.by/korziny-s-cvetami/makkiato.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/1414/icon.jpg",
            "https://vgosti.by/files/galleries/2271/5430/src.jpg",
            "https://vgosti.by/files/galleries/2271/5431/src.jpg",
            "https://vgosti.by/files/galleries/2271/5432/src.jpg",
            "https://vgosti.by/files/galleries/2271/5433/src.jpg",
            "https://vgosti.by/files/galleries/2271/5434/src.jpg",
            "https://vgosti.by/files/galleries/2271/5435/src.jpg"
        ],
        "description": {
            "composition": [
                "Орхидея"
            ],
            "package": "Декоративное кашпо ",
            "size": "красивый экзотический букет ",
            "about_item": "Букет длительной стойкости "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Сердце из цветов Нежность",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/serdce-iz-cvetov-nezhnost.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/386/icon.jpg",
            "https://vgosti.by/files/galleries/423/592/src.jpg",
            "https://vgosti.by/files/galleries/423/593/src.jpg",
            "https://vgosti.by/files/galleries/423/594/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Сердце декоративное ",
            "size": "до 20 см ",
            "about_item": "Нежная Валентинка из цветов и сердца "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Букет из 49 роз",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/buket-iz-49-roz.html",
        "cost_byn": "335.0",
        "photos": [
            "https://vgosti.by/files/items/503/icon.jpg"
        ],
        "description": {
            "composition": [
                "Роза"
            ],
            "package": "Упаковка будет определена по Вашему желанию. ",
            "size": "высота 60-70 см ",
            "about_item": "Цвет розы может быть изменен заказчиком "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Корзина с цветами Флорида Лакшери",
        "item_link": "https://vgosti.by/korziny-s-cvetami/korsina-s-cvetami-florida.html",
        "cost_byn": "346.0",
        "photos": [
            "https://vgosti.by/files/items/528/icon.jpg",
            "https://vgosti.by/files/galleries/691/1507/src.jpg"
        ],
        "description": {
            "composition": [
                "Пистация",
                "Роза",
                "Роза кустовая"
            ],
            "package": "Корзина ",
            "size": "от 50 до 60 см ",
            "about_item": "Стильная композиция в корзине "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Букет из 15 роз",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/buket-iz-15-roz.html",
        "cost_byn": "115.0",
        "photos": [
            "https://vgosti.by/files/items/499/icon.jpg"
        ],
        "description": {
            "composition": [
                "Роза"
            ],
            "package": "Упаковка будет определена по Вашему желанию. ",
            "size": "высота 60-70 см ",
            "about_item": "Цвет розы может быть изменен заказчиком "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Букет из 25 роз",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/buket-iz-25-roz.html",
        "cost_byn": "175.0",
        "photos": [
            "https://vgosti.by/files/items/501/icon.jpg"
        ],
        "description": {
            "composition": [
                "Роза"
            ],
            "package": "Упаковка будет определена по Вашему желанию. ",
            "size": "высота 60-70 см ",
            "about_item": "Цвет розы может быть изменен заказчиком "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Корзина Flowers",
        "item_link": "https://vgosti.by/korziny-s-cvetami/korzina-flowers.html",
        "cost_byn": "279.0",
        "photos": [
            "https://vgosti.by/files/items/279/icon.jpg",
            "https://vgosti.by/files/galleries/231/1265/src.jpg",
            "https://vgosti.by/files/galleries/231/1266/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Гвоздика",
                "Зелень",
                "Роза",
                "Роза кустовая",
                "Хамелациум",
                "Эвкалипт"
            ],
            "package": "Корзина ",
            "size": "от 35-45 см ",
            "about_item": "Стильная композиция в корзине "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Аквамарин New",
        "item_link": "https://vgosti.by/korziny-s-cvetami/akvamarin-new.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1179/icon.jpg",
            "https://vgosti.by/files/galleries/1829/4173/src.jpg",
            "https://vgosti.by/files/galleries/1829/4174/src.jpg"
        ],
        "description": {
            "composition": [
                "Эвкалипт",
                "Экзотика",
                "Эрингиум",
                "Эустома"
            ],
            "package": "Деревянное кашпо с ручкой ",
            "size": "Ширина 25 см высота 20 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Корзина с розами",
        "item_link": "https://vgosti.by/korziny-s-cvetami/korzina-s-rozami.html",
        "cost_byn": "445.0",
        "photos": [
            "https://vgosti.by/files/items/281/icon.jpg"
        ],
        "description": {
            "composition": [
                "Зелень",
                "Роза"
            ],
            "package": "Корзина ",
            "size": "от 65 см ",
            "about_item": "Стильная композиция в корзине "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Золотое лукошко",
        "item_link": "https://vgosti.by/korziny-s-cvetami/zolotoe-lukoshko.html",
        "cost_byn": "78.0",
        "photos": [
            "https://vgosti.by/files/items/934/icon.jpg",
            "https://vgosti.by/files/galleries/1424/2860/src.jpg",
            "https://vgosti.by/files/galleries/1424/2861/src.jpg",
            "https://vgosti.by/files/galleries/1424/2862/src.jpg"
        ],
        "description": {
            "composition": [
                "Пистация",
                "Роза кустовая",
                "Тласпи",
                "Фрезия",
                "Эустома"
            ],
            "package": "Лукошко ",
            "size": "высота 25см ",
            "about_item": "Композиция из фрезии и кустовой розы "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Медленный танец",
        "item_link": "https://vgosti.by/cvety-v-korobke/medlennyj-tanec.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/1455/icon.jpg",
            "https://vgosti.by/files/galleries/2347/5653/src.jpg",
            "https://vgosti.by/files/galleries/2347/5654/src.jpg",
            "https://vgosti.by/files/galleries/2347/5655/src.jpg",
            "https://vgosti.by/files/galleries/2347/5656/src.jpg",
            "https://vgosti.by/files/galleries/2347/5657/src.jpg",
            "https://vgosti.by/files/galleries/2347/5658/src.jpg"
        ],
        "description": {
            "composition": [
                "Ранункулюс",
                "Роза кустовая",
                "Роза пионовидная",
                "Скимия",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "15-20 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Композиция Солнце",
        "item_link": "https://vgosti.by/korziny-s-cvetami/kompoziciya-solnce.html",
        "cost_byn": "47.0",
        "photos": [
            "https://vgosti.by/files/items/262/icon.jpg",
            "https://vgosti.by/files/galleries/197/1221/src.jpg",
            "https://vgosti.by/files/galleries/197/2171/src.jpg"
        ],
        "description": {
            "composition": [
                "Зелень",
                "Подсолнух"
            ],
            "package": "Деревянное кашпо с ручкой ",
            "size": "от 25-35 см ",
            "about_item": "Стильная композиция в деревянном кашпо "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Розовый тюльпан Том Вебер",
        "item_link": "https://vgosti.by/8-marta/rozovyj-tyulpan-tom-veber.html",
        "cost_byn": "3.5",
        "photos": [
            "https://vgosti.by/files/items/1481/icon.jpg",
            "https://vgosti.by/files/galleries/2399/5769/src.jpg",
            "https://vgosti.by/files/galleries/2399/5770/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": null,
            "size": "Высота 35-40 см ",
            "about_item": "Тюльпан пр-во Польша "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Кремовый тюльпан Верона",
        "item_link": "https://vgosti.by/8-marta/kremovyj-tyulpan-verona.html",
        "cost_byn": "4.0",
        "photos": [
            "https://vgosti.by/files/items/1479/icon.jpg",
            "https://vgosti.by/files/galleries/2395/5765/src.jpg",
            "https://vgosti.by/files/galleries/2395/5766/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": null,
            "size": "Высота 35-40 см ",
            "about_item": "Пионовидный тюльпан пр-во Голландия "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Аранжировка Бродвей",
        "item_link": "https://vgosti.by/8-marta/aranzhirovka-brodvej.html",
        "cost_byn": "29.0",
        "photos": [
            "https://vgosti.by/files/items/1741/icon.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "Декоративное кашпо с декором ",
            "size": "Высота 15 - 17 см ",
            "about_item": "Аранжировка из гиацинтов, мускари "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Аранжировка Индиго",
        "item_link": "https://vgosti.by/8-marta/aranzhirovka-indigo.html",
        "cost_byn": "33.0",
        "photos": [
            "https://vgosti.by/files/items/1745/icon.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "Декоративное деревянное кашпо ",
            "size": "высота 15-20 см ",
            "about_item": "Ароматные гиацинты в декоративном кашпо "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Корзина с тюльпанами",
        "item_link": "https://vgosti.by/8-marta/korzina-s-tyulpanami.html",
        "cost_byn": "685.0",
        "photos": [
            "https://vgosti.by/files/items/1760/icon.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Корзина из натуральных материалов ",
            "size": "диаметр 40-45 см ",
            "about_item": "250 тюльпанов находятся во флористической губке "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Малиновый тюльпан Барселона",
        "item_link": "https://vgosti.by/8-marta/malinovyj-tyulpan-barselona.html",
        "cost_byn": "3.5",
        "photos": [
            "https://vgosti.by/files/items/1754/icon.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Без упаковки ",
            "size": "Высота 35-40 см ",
            "about_item": "Тюльпан пр-во Голландия "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Иволга",
        "item_link": "https://vgosti.by/8-marta/ivolga.html",
        "cost_byn": "25.0",
        "photos": [
            "https://vgosti.by/files/items/1446/icon.jpg",
            "https://vgosti.by/files/galleries/2329/5614/src.jpg",
            "https://vgosti.by/files/galleries/2329/5615/src.jpg",
            "https://vgosti.by/files/galleries/2329/5616/src.jpg",
            "https://vgosti.by/files/galleries/2329/5617/src.jpg",
            "https://vgosti.by/files/galleries/2329/5618/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Деревянный скворечник ",
            "size": "15-20 см ",
            "about_item": "Луковичное растение в декоративном скворечнике "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Весенний аромат",
        "item_link": "https://vgosti.by/8-marta/vesennij-aromat.html",
        "cost_byn": "25.0",
        "photos": [
            "https://vgosti.by/files/items/1047/icon.jpg",
            "https://vgosti.by/files/galleries/1620/3247/src.jpg",
            "https://vgosti.by/files/galleries/1620/3248/src.jpg",
            "https://vgosti.by/files/galleries/1620/3249/src.jpg",
            "https://vgosti.by/files/galleries/1620/3250/src.jpg",
            "https://vgosti.by/files/galleries/1620/3251/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "Корейская бумага ",
            "size": "высота 20-25 см ",
            "about_item": "Ароматный букет из гиацинтов "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "9 тюльпанов",
        "item_link": "https://vgosti.by/8-marta/9-tyulpanov.html",
        "cost_byn": "29.0",
        "photos": [
            "https://vgosti.by/files/items/708/icon.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Натуральный крафт ",
            "size": "высота букета не более 35 см ",
            "about_item": "Цвет тюльпана может быть заменен по желанию заказчика "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "25 тюльпанов",
        "item_link": "https://vgosti.by/8-marta/25-tyulpanov.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/698/icon.jpg",
            "https://vgosti.by/files/galleries/998/1935/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Лента ",
            "size": "до 40 см ",
            "about_item": null
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Азалия в ассортименте",
        "item_link": "https://vgosti.by/8-marta/azaliya.html",
        "cost_byn": "25.0",
        "photos": [
            "https://vgosti.by/files/items/1042/icon.jpg",
            "https://vgosti.by/files/galleries/1610/3214/src.jpg",
            "https://vgosti.by/files/galleries/1610/3215/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Декорированное кашпо ",
            "size": "20 см ",
            "about_item": "Горшечное растение "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Нарциссы",
        "item_link": "https://vgosti.by/8-marta/narcissy.html",
        "cost_byn": "9.0",
        "photos": [
            "https://vgosti.by/files/items/756/icon.jpg"
        ],
        "description": {
            "composition": [
                "Нарцисс"
            ],
            "package": "Декоративное кашпо ",
            "size": null,
            "about_item": "луковичное растение "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Мускари",
        "item_link": "https://vgosti.by/8-marta/muskari.html",
        "cost_byn": "8.5",
        "photos": [
            "https://vgosti.by/files/items/755/icon.jpg",
            "https://vgosti.by/files/galleries/1098/2022/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Декоративное кашпо ",
            "size": null,
            "about_item": "луковичное растение "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "29 тюльпанов",
        "item_link": "https://vgosti.by/8-marta/29-tyulpanov.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/718/icon.jpg",
            "https://vgosti.by/files/galleries/1038/6637/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Натуральный крафт ",
            "size": "высота букета не более 45 см ",
            "about_item": "Букет из трех цветов тюльпана "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Букет тюльпанов микс",
        "item_link": "https://vgosti.by/8-marta/buket-tyulpanov-miks.html",
        "cost_byn": "64.0",
        "photos": [
            "https://vgosti.by/files/items/700/icon.jpg",
            "https://vgosti.by/files/galleries/1002/1938/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Натуральный крафт ",
            "size": null,
            "about_item": "19 разноцветных тюльпанов в стильной упаковке "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Тюльпаны 15 шт",
        "item_link": "https://vgosti.by/8-marta/tyulpany-15-sht.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/404/icon.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Крафт с лентой ",
            "size": null,
            "about_item": null
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Уютное рождество",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/uyutnoe-rozhdestvo.html",
        "cost_byn": "195.0",
        "photos": [
            "https://vgosti.by/files/items/1642/icon.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Стильное керамическое кашпо на 3-х ножках ",
            "size": "Высота 35-40 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Этюд",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/etyud.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/1688/icon.jpg",
            "https://vgosti.by/files/galleries/2755/6499/src.jpg",
            "https://vgosti.by/files/galleries/2755/6500/src.jpg",
            "https://vgosti.by/files/galleries/2755/6501/src.jpg",
            "https://vgosti.by/files/galleries/2755/6502/src.jpg",
            "https://vgosti.by/files/galleries/2755/6503/src.jpg",
            "https://vgosti.by/files/galleries/2755/6504/src.jpg",
            "https://vgosti.by/files/galleries/2755/6505/src.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "Крафт-пакет ",
            "size": "Высота 40 см ",
            "about_item": "Елка из стеклянных шаров ручной работы "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Аура",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/aura.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1690/icon.jpg",
            "https://vgosti.by/files/galleries/2759/6510/src.jpg",
            "https://vgosti.by/files/galleries/2759/6511/src.jpg",
            "https://vgosti.by/files/galleries/2759/6512/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Керамическое кашпо ",
            "size": "ширина 27 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "45 тюльпанов",
        "item_link": "https://vgosti.by/8-marta/45-tyulpanov.html",
        "cost_byn": "146.0",
        "photos": [
            "https://vgosti.by/files/items/707/icon.jpg",
            "https://vgosti.by/files/galleries/1016/6639/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Лента ",
            "size": "высота букета не более 45 см ",
            "about_item": "Букет из бело-фиолетовых тюльпанов "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Елка Январская вьюга",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/elka-yanvarskaya-vyuga.html",
        "cost_byn": "115.0",
        "photos": [
            "https://vgosti.by/files/items/1653/icon.jpg",
            "https://vgosti.by/files/galleries/2691/6360/src.jpg",
            "https://vgosti.by/files/galleries/2691/6361/src.jpg",
            "https://vgosti.by/files/galleries/2691/6362/src.jpg",
            "https://vgosti.by/files/galleries/2691/6363/src.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "крафт-пакет ",
            "size": "высота 50 см ",
            "about_item": "Елка из натуральной канадской пихты ( не осыпается) "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Букет ирисов",
        "item_link": "https://vgosti.by/8-marta/buket-irisov.html",
        "cost_byn": "67.0",
        "photos": [
            "https://vgosti.by/files/items/699/icon.jpg",
            "https://vgosti.by/files/galleries/1000/1937/src.jpg"
        ],
        "description": {
            "composition": [
                "Ирис"
            ],
            "package": "Натуральный крафт ",
            "size": null,
            "about_item": null
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Венок Морозная свежесть",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/venok-moroznaya-svezhest.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/1654/icon.jpg",
            "https://vgosti.by/files/galleries/2693/6364/src.jpg",
            "https://vgosti.by/files/galleries/2693/6365/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "крафт-пакет ",
            "size": "Диаметр венка 40-45 см ",
            "about_item": "Венок из нобилиса (не обсыпается) "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Венок Нортон",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/venok-norton.html",
        "cost_byn": "30.0",
        "photos": [
            "https://vgosti.by/files/items/1668/icon.jpg",
            "https://vgosti.by/files/galleries/2721/6420/src.jpg",
            "https://vgosti.by/files/galleries/2721/6421/src.jpg",
            "https://vgosti.by/files/galleries/2721/6422/src.jpg",
            "https://vgosti.by/files/galleries/2721/6423/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "Крафт-пакет ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Композиция из натуральных материалов "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Елка Ноэль",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/elka-noel.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/1651/icon.jpg",
            "https://vgosti.by/files/galleries/2687/6357/src.jpg",
            "https://vgosti.by/files/galleries/2687/6358/src.jpg",
            "https://vgosti.by/files/galleries/2687/6359/src.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "крафт-пакет ",
            "size": "Высота 55 см ",
            "about_item": "Елка декоративная из натуральной канадской пихты "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Венок Новогоднее ралли",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/venok-novogodnee-ralli.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1664/icon.jpg",
            "https://vgosti.by/files/galleries/2713/6404/src.jpg",
            "https://vgosti.by/files/galleries/2713/6405/src.jpg",
            "https://vgosti.by/files/galleries/2713/6406/src.jpg",
            "https://vgosti.by/files/galleries/2713/6407/src.jpg",
            "https://vgosti.by/files/galleries/2713/6408/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "крафт-пакет ",
            "size": "диаметр 40 см ",
            "about_item": "Венок из нобилиса (не обсыпается) "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Герда",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/gerda.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/1624/icon.jpg",
            "https://vgosti.by/files/galleries/2637/6253/src.jpg",
            "https://vgosti.by/files/galleries/2637/6254/src.jpg",
            "https://vgosti.by/files/galleries/2637/6255/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Керамическая кружка ",
            "size": "высота 22 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Композиция Далида",
        "item_link": "https://vgosti.by/cvety-v-korobke/kompoziciya-dalida.html",
        "cost_byn": "175.0",
        "photos": [
            "https://vgosti.by/files/items/490/icon.jpg",
            "https://vgosti.by/files/galleries/617/3597/src.jpg",
            "https://vgosti.by/files/galleries/617/3598/src.jpg",
            "https://vgosti.by/files/galleries/617/3599/src.jpg",
            "https://vgosti.by/files/galleries/617/3600/src.jpg",
            "https://vgosti.by/files/galleries/617/3601/src.jpg",
            "https://vgosti.by/files/galleries/617/3602/src.jpg",
            "https://vgosti.by/files/galleries/617/3603/src.jpg",
            "https://vgosti.by/files/galleries/617/3604/src.jpg"
        ],
        "description": {
            "composition": [
                "Пистация",
                "Роза",
                "Хризантема",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Декоративная коробка-книга ",
            "size": "50 см ",
            "about_item": "Стильная композиция в декоративном кашпо "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Паровоз желаний",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/parovoz-zhelanij.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1354/icon.jpg",
            "https://vgosti.by/files/galleries/2155/5046/src.jpg",
            "https://vgosti.by/files/galleries/2155/5047/src.jpg",
            "https://vgosti.by/files/galleries/2155/5048/src.jpg",
            "https://vgosti.by/files/galleries/2155/5049/src.jpg",
            "https://vgosti.by/files/galleries/2155/5050/src.jpg",
            "https://vgosti.by/files/galleries/2155/5051/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Крафт-пакет ",
            "size": "диаметр 30 см ",
            "about_item": "Композиция с декором из натуральной пихты "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Венок Зимнее небо",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/venok-zimnee-nebo.html",
        "cost_byn": "30.0",
        "photos": [
            "https://vgosti.by/files/items/1330/icon.jpg",
            "https://vgosti.by/files/galleries/2109/4941/src.jpg",
            "https://vgosti.by/files/galleries/2109/4942/src.jpg",
            "https://vgosti.by/files/galleries/2109/4943/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "Коробка ",
            "size": "диаметр 20-25 см ",
            "about_item": "Рождественский венок длительного использования "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Ёлочка Деко",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/yolochka-deko.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/1296/icon.jpg",
            "https://vgosti.by/files/galleries/2045/4782/src.jpg",
            "https://vgosti.by/files/galleries/2045/4783/src.jpg",
            "https://vgosti.by/files/galleries/2045/4784/src.jpg",
            "https://vgosti.by/files/galleries/2045/4785/src.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "Крафт-пакет ",
            "size": "Высота 27-30 см ",
            "about_item": "Елочка Hand made длительного использования "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Лесной олень",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/lesnoj-olen.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1318/icon.jpg",
            "https://vgosti.by/files/galleries/2085/4888/src.jpg",
            "https://vgosti.by/files/galleries/2085/4889/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Крафт-пакет ",
            "size": "ширина 20 -23 см ",
            "about_item": "Новогодняя композиция со стабилизированными цветами "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Елка-дом",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/elka-dom.html",
        "cost_byn": "82.0",
        "photos": [
            "https://vgosti.by/files/items/1323/icon.jpg",
            "https://vgosti.by/files/galleries/2095/4903/src.jpg",
            "https://vgosti.by/files/galleries/2095/4904/src.jpg",
            "https://vgosti.by/files/galleries/2095/4905/src.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "Керамическое кашпо ",
            "size": "высота 25-30 см ",
            "about_item": "Креативная елка в керамическом домике "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Рождественский венок Нобилис",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/rozhdestvenskij-venok-nobilis.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1333/icon.jpg",
            "https://vgosti.by/files/galleries/2115/4947/src.jpg",
            "https://vgosti.by/files/galleries/2115/4948/src.jpg",
            "https://vgosti.by/files/galleries/2115/4949/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "Коробка ",
            "size": "диаметр 35 см ",
            "about_item": "Рождественский венок из нобилиса "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Основа для рождественского венка",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/osnova-dlya-rozhdestvenskogo-venka.html",
        "cost_byn": "25.0",
        "photos": [
            "https://vgosti.by/files/items/1673/icon.jpg",
            "https://vgosti.by/files/galleries/2731/6436/src.jpg",
            "https://vgosti.by/files/galleries/2731/6437/src.jpg",
            "https://vgosti.by/files/galleries/2731/6438/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "Крафт-пакет ",
            "size": "Высота 35-40 см ",
            "about_item": "Натуральная основа из нобилиса для самостоятельного создания венка "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Композиция Наив",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/kompoziciya-naiv.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/1292/icon.jpg",
            "https://vgosti.by/files/galleries/2037/4770/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами",
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 25-29 см ",
            "about_item": "Интерьерная композиция в зимнем стиле "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Композиция Дуэт",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/kompoziciya-duet.html",
        "cost_byn": "58.0",
        "photos": [
            "https://vgosti.by/files/items/1324/icon.jpg",
            "https://vgosti.by/files/galleries/2097/4906/src.jpg",
            "https://vgosti.by/files/galleries/2097/4907/src.jpg",
            "https://vgosti.by/files/galleries/2097/4908/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Плетеная корзина ",
            "size": "ширина 25-30 см ",
            "about_item": "Рождественская композиция со свечами "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Ёлочка Яркая зима",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/yolochka-yarkaya-zima.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/1307/icon.jpg",
            "https://vgosti.by/files/galleries/2067/4825/src.jpg",
            "https://vgosti.by/files/galleries/2067/4826/src.jpg",
            "https://vgosti.by/files/galleries/2067/4827/src.jpg",
            "https://vgosti.by/files/galleries/2067/4828/src.jpg",
            "https://vgosti.by/files/galleries/2067/4829/src.jpg",
            "https://vgosti.by/files/galleries/2067/4830/src.jpg",
            "https://vgosti.by/files/galleries/2067/4831/src.jpg",
            "https://vgosti.by/files/galleries/2067/4832/src.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 25-35 см ",
            "about_item": "Елочка Hand made длительного использования "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Фредерика",
        "item_link": "https://vgosti.by/bukety/frederika.html",
        "cost_byn": "175.0",
        "photos": [
            "https://vgosti.by/files/items/1845/icon.jpg",
            "https://vgosti.by/files/galleries/3046/6929/src.jpg",
            "https://vgosti.by/files/galleries/3046/6930/src.jpg",
            "https://vgosti.by/files/galleries/3046/6931/src.jpg",
            "https://vgosti.by/files/galleries/3046/6932/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны",
                "Фрезия"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 20-25 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Пьяная ёлочка",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/pyanaya-yolochka.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/905/icon.jpg",
            "https://vgosti.by/files/galleries/1368/2784/src.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "Подарочный пакет ",
            "size": "высота 25-35 см ",
            "about_item": "Декор бутылки пива, вина, шампанского "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Елка Тиффани",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/elka-tiffani.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/631/icon.jpg",
            "https://vgosti.by/files/galleries/882/5160/src.jpg",
            "https://vgosti.by/files/galleries/882/5161/src.jpg",
            "https://vgosti.by/files/galleries/882/5162/src.jpg",
            "https://vgosti.by/files/galleries/882/5163/src.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "Керамическое кашпо ",
            "size": "высота 35 см ",
            "about_item": "Елка из сухоцветов "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Зимние пожелания",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/zimnie-pozhelaniya.html",
        "cost_byn": "39.0",
        "photos": [
            "https://vgosti.by/files/items/1331/icon.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Плетеное кашпо ",
            "size": "высота 17-22 см ",
            "about_item": "Композиция во флористической губке с нобилисом "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Комплект Иней",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/komplekt-inej.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/661/icon.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "натуральной дерево, искусственный материал ",
            "size": "Диаметр венка 35см , композиция 10х10 см ",
            "about_item": "В комплект входит рождественский венок и композиция на стол "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Композиция Снежная",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/kompoziciya-snezhnaya.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/663/icon.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Кашпо декоративное ",
            "size": "диаметр 9 см ",
            "about_item": "Зимняя композиция создаст волшебство в вашем доме "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Композиция со свечами Тандем",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/kompoziciya-so-svechami-tandem.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/632/icon.jpg",
            "https://vgosti.by/files/galleries/884/1815/src.jpg",
            "https://vgosti.by/files/galleries/884/1816/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Керамическое кашпо ",
            "size": "ширина 25 см ",
            "about_item": "Богемная композиция к Рождеству и Новому году "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Композиция Заячий хвостик",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/kompoziciya-zayachij-hvostik.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/681/icon.jpg"
        ],
        "description": {
            "composition": [
                "Хлопок",
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Деревянное кашпо ",
            "size": "кашпо 9 х 9 ",
            "about_item": "Интерьерная композиция из хлопка, лагуруса и шаров "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Письмо Деду Морозу VIP",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/pismo-dedu-morozu-vip.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/893/icon.jpg",
            "https://vgosti.by/files/galleries/1344/2690/src.jpg",
            "https://vgosti.by/files/galleries/1344/2691/src.jpg",
            "https://vgosti.by/files/galleries/1344/2692/src.jpg",
            "https://vgosti.by/files/galleries/1344/2693/src.jpg",
            "https://vgosti.by/files/galleries/1344/2694/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Конверт ",
            "size": "ширина 20 см высота 30 см ",
            "about_item": "Композиция длительного использования "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Хлопок",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/hlopok.html",
        "cost_byn": "23.0",
        "photos": [
            "https://vgosti.by/files/items/674/icon.jpg"
        ],
        "description": {
            "composition": [
                "Хлопок"
            ],
            "package": "нет ",
            "size": "60 см ",
            "about_item": "Ветка натурального хлопка "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Рождественский венок Иней",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/rozhdestvenskij-venok-inej.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/675/icon.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "нет ",
            "size": "диаметр 35 см ",
            "about_item": "Венок изготовлен из искусственного материала "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Композиция со свечой Иней",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/kompoziciya-so-svechoj-inej.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/690/icon.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Деревянное кашпо ",
            "size": "10х10 ",
            "about_item": "Искусственный материал, ручная работа "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Фаворит",
        "item_link": "https://vgosti.by/bukety/favorit.html",
        "cost_byn": "225.0",
        "photos": [
            "https://vgosti.by/files/items/1813/icon.jpg",
            "https://vgosti.by/files/galleries/2984/6817/src.jpg",
            "https://vgosti.by/files/galleries/2984/6818/src.jpg",
            "https://vgosti.by/files/galleries/2984/6819/src.jpg",
            "https://vgosti.by/files/galleries/2984/6820/src.jpg",
            "https://vgosti.by/files/galleries/2984/6821/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Диантус",
                "Пион",
                "Роза пионовидная",
                "Роза садовая",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 40 см ",
            "about_item": "Букет с легким парфюмированным ароматом "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Магия цветов",
        "item_link": "https://vgosti.by/bukety/magiya-cvetov.html",
        "cost_byn": "550.0",
        "photos": [
            "https://vgosti.by/files/items/1880/icon.jpg",
            "https://vgosti.by/files/galleries/3114/6969/src.jpg",
            "https://vgosti.by/files/galleries/3114/6970/src.jpg",
            "https://vgosti.by/files/galleries/3114/6971/src.jpg",
            "https://vgosti.by/files/galleries/3114/6972/src.jpg",
            "https://vgosti.by/files/galleries/3114/6973/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Маттиола",
                "Хамелациум",
                "Эустома"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 100 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Роман",
        "item_link": "https://vgosti.by/bukety/roman.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/1908/icon.jpg",
            "https://vgosti.by/files/galleries/3164/7059/src.jpg",
            "https://vgosti.by/files/galleries/3164/7060/src.jpg",
            "https://vgosti.by/files/galleries/3164/7061/src.jpg",
            "https://vgosti.by/files/galleries/3164/7062/src.jpg",
            "https://vgosti.by/files/galleries/3164/7063/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Экзотика"
            ],
            "package": "Ленты ",
            "size": "диаметр 30 см ",
            "about_item": "Нежный букет в стиле европейской флористики "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Соблазн",
        "item_link": "https://vgosti.by/bukety/soblazn.html",
        "cost_byn": "245.0",
        "photos": [
            "https://vgosti.by/files/items/1836/icon.jpg",
            "https://vgosti.by/files/galleries/3030/6900/src.jpg",
            "https://vgosti.by/files/galleries/3030/6901/src.jpg",
            "https://vgosti.by/files/galleries/3030/6902/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Астильба",
                "Диантус",
                "Маттиола",
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая",
                "Экзотика"
            ],
            "package": "ленты ",
            "size": "диаметр 35 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Время весны",
        "item_link": "https://vgosti.by/bukety/vremya-vesny.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1807/icon.jpg",
            "https://vgosti.by/files/galleries/2972/6791/src.jpg",
            "https://vgosti.by/files/galleries/2972/6792/src.jpg",
            "https://vgosti.by/files/galleries/2972/6793/src.jpg",
            "https://vgosti.by/files/galleries/2972/6794/src.jpg",
            "https://vgosti.by/files/galleries/2972/6795/src.jpg",
            "https://vgosti.by/files/galleries/2972/6796/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Роза кустовая",
                "Роза пионовидная",
                "Сирень",
                "Хризантема",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 30-35 см ",
            "about_item": "Букет с сиренью (по предзаказу) "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Сансет",
        "item_link": "https://vgosti.by/bukety/sanset.html",
        "cost_byn": "255.0",
        "photos": [
            "https://vgosti.by/files/items/1832/icon.jpg",
            "https://vgosti.by/files/galleries/3022/6887/src.jpg",
            "https://vgosti.by/files/galleries/3022/6888/src.jpg",
            "https://vgosti.by/files/galleries/3022/6889/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Каллы",
                "Маттиола",
                "Пион",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 40-45 см ",
            "about_item": "Европейский букет из экзотических цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Благородство",
        "item_link": "https://vgosti.by/bukety/blagorodstvo-1.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1930/icon.jpg",
            "https://vgosti.by/files/galleries/3206/7120/src.jpg",
            "https://vgosti.by/files/galleries/3206/7121/src.jpg",
            "https://vgosti.by/files/galleries/3206/7122/src.jpg",
            "https://vgosti.by/files/galleries/3206/7123/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Хризантема",
                "Экзотика"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 30 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Ароматный март",
        "item_link": "https://vgosti.by/bukety/aromatnyj-mart.html",
        "cost_byn": "110.0",
        "photos": [
            "https://vgosti.by/files/items/1844/icon.jpg",
            "https://vgosti.by/files/galleries/3044/6926/src.jpg",
            "https://vgosti.by/files/galleries/3044/6927/src.jpg",
            "https://vgosti.by/files/galleries/3044/6928/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт",
                "Тюльпаны"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 20-25 см ",
            "about_item": "Ароматный букет из гиацинтов и тюльпанов - высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Осенний вальс",
        "item_link": "https://vgosti.by/bukety/osennij-vals.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/1916/icon.jpg",
            "https://vgosti.by/files/galleries/3180/7084/src.jpg",
            "https://vgosti.by/files/galleries/3180/7085/src.jpg",
            "https://vgosti.by/files/galleries/3180/7086/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 35-40 см ",
            "about_item": "Осенний букет подходящий к любому поводу "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Аксиома",
        "item_link": "https://vgosti.by/bukety/aksioma.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/1837/icon.jpg",
            "https://vgosti.by/files/galleries/3032/6903/src.jpg",
            "https://vgosti.by/files/galleries/3032/6904/src.jpg",
            "https://vgosti.by/files/galleries/3032/6905/src.jpg",
            "https://vgosti.by/files/galleries/3032/6906/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 30 см ",
            "about_item": "Универсальный букет подходящий к любому поводу "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Анита",
        "item_link": "https://vgosti.by/bukety/anita.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1804/icon.jpg",
            "https://vgosti.by/files/galleries/2966/6779/src.jpg",
            "https://vgosti.by/files/galleries/2966/6780/src.jpg",
            "https://vgosti.by/files/galleries/2966/6781/src.jpg",
            "https://vgosti.by/files/galleries/2966/6782/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт",
                "Тюльпаны",
                "Хамелациум",
                "Хризантема",
                "Цинерария"
            ],
            "package": "Умная корейская бумага ",
            "size": "высота 40-45 см ",
            "about_item": "Ароматный весенний букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Полонез",
        "item_link": "https://vgosti.by/bukety/polonez.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/1820/icon.jpg",
            "https://vgosti.by/files/galleries/2998/6850/src.jpg",
            "https://vgosti.by/files/galleries/2998/6851/src.jpg",
            "https://vgosti.by/files/galleries/2998/6853/src.jpg",
            "https://vgosti.by/files/galleries/2998/6852/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Зелень",
                "Ирис",
                "Маттиола",
                "Хризантема"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 30 см ",
            "about_item": "Универсальный букет подходящий к любому поводу "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Венди",
        "item_link": "https://vgosti.by/bukety/vendi.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/1814/icon.jpg",
            "https://vgosti.by/files/galleries/2986/6822/src.jpg",
            "https://vgosti.by/files/galleries/2986/6823/src.jpg",
            "https://vgosti.by/files/galleries/2986/6824/src.jpg",
            "https://vgosti.by/files/galleries/2986/6825/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт",
                "Диантус",
                "Ранункулюс"
            ],
            "package": "Умная корейская бумага с французской тишью ",
            "size": "диаметр 30 см ",
            "about_item": "Ароматный весенний букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Ириана",
        "item_link": "https://vgosti.by/bukety/iriana.html",
        "cost_byn": "200.0",
        "photos": [
            "https://vgosti.by/files/items/1800/icon.jpg",
            "https://vgosti.by/files/galleries/2958/6758/src.jpg",
            "https://vgosti.by/files/galleries/2958/6759/src.jpg",
            "https://vgosti.by/files/galleries/2958/6760/src.jpg",
            "https://vgosti.by/files/galleries/2958/6761/src.jpg",
            "https://vgosti.by/files/galleries/2958/6762/src.jpg"
        ],
        "description": {
            "composition": [
                "Ирис"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 30 см ",
            "about_item": "Монобукет из ирисов в стильной упаковке "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Фиалка",
        "item_link": "https://vgosti.by/bukety/fialka.html",
        "cost_byn": "139.0",
        "photos": [
            "https://vgosti.by/files/items/1833/icon.jpg",
            "https://vgosti.by/files/galleries/3024/6890/src.jpg",
            "https://vgosti.by/files/galleries/3024/6891/src.jpg",
            "https://vgosti.by/files/galleries/3024/6892/src.jpg",
            "https://vgosti.by/files/galleries/3024/6893/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Нигелла",
                "Оксипеталум",
                "Пион",
                "Роза кустовая",
                "Роза садовая",
                "Экзотика",
                "Эустома"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Универсальный букет подходящий к любому поводу "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Винная ягода",
        "item_link": "https://vgosti.by/bukety/vinnaya-yagoda.html",
        "cost_byn": "139.0",
        "photos": [
            "https://vgosti.by/files/items/1805/icon.jpg",
            "https://vgosti.by/files/galleries/2968/6783/src.jpg",
            "https://vgosti.by/files/galleries/2968/6784/src.jpg",
            "https://vgosti.by/files/galleries/2968/6785/src.jpg",
            "https://vgosti.by/files/galleries/2968/6786/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Диантус",
                "Орхидея",
                "Роза",
                "Роза кустовая",
                "Фрезия",
                "Хамелациум",
                "Экзотика"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Вишневый смузи",
        "item_link": "https://vgosti.by/bukety/vishnevyj-smuzi.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/1915/icon.jpg",
            "https://vgosti.by/files/galleries/3178/7079/src.jpg",
            "https://vgosti.by/files/galleries/3178/7080/src.jpg",
            "https://vgosti.by/files/galleries/3178/7081/src.jpg",
            "https://vgosti.by/files/galleries/3178/7082/src.jpg",
            "https://vgosti.by/files/galleries/3178/7083/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Лимонад",
        "item_link": "https://vgosti.by/bukety/limonad.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1828/icon.jpg",
            "https://vgosti.by/files/galleries/3014/6875/src.jpg",
            "https://vgosti.by/files/galleries/3014/6876/src.jpg",
            "https://vgosti.by/files/galleries/3014/6877/src.jpg",
            "https://vgosti.by/files/galleries/3014/6878/src.jpg",
            "https://vgosti.by/files/galleries/3014/6879/src.jpg",
            "https://vgosti.by/files/galleries/3014/6880/src.jpg",
            "https://vgosti.by/files/galleries/3014/6881/src.jpg",
            "https://vgosti.by/files/galleries/3014/6882/src.jpg"
        ],
        "description": {
            "composition": [
                "Оксипеталум",
                "Роза кустовая",
                "Хамелациум",
                "Хризантема"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 30 см ",
            "about_item": "Универсальный букет подходящий к любому поводу "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Небо Лондона",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/nebo-londona.html",
        "cost_byn": "98.0",
        "photos": [
            "https://vgosti.by/files/items/1549/icon.jpg",
            "https://vgosti.by/files/galleries/2509/6017/src.jpg",
            "https://vgosti.by/files/galleries/2509/6018/src.jpg",
            "https://vgosti.by/files/galleries/2509/6019/src.jpg",
            "https://vgosti.by/files/galleries/2509/6020/src.jpg",
            "https://vgosti.by/files/galleries/2509/6021/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 25-30 см ",
            "about_item": "Композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Атмосфера лета",
        "item_link": "https://vgosti.by/bukety/atmosfera-leta.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1835/icon.jpg",
            "https://vgosti.by/files/galleries/3028/6897/src.jpg",
            "https://vgosti.by/files/galleries/3028/6898/src.jpg",
            "https://vgosti.by/files/galleries/3028/6899/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Подсолнух",
                "Роза кустовая",
                "Роза пионовидная",
                "Экзотика",
                "Эустома"
            ],
            "package": "ленты ",
            "size": "диаметр 35 см ",
            "about_item": "Европейский букет из экзотических цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Морская волна",
        "item_link": "https://vgosti.by/bukety/morskaya-volna.html",
        "cost_byn": "92.0",
        "photos": [
            "https://vgosti.by/files/items/1809/icon.jpg",
            "https://vgosti.by/files/galleries/2976/6797/src.jpg",
            "https://vgosti.by/files/galleries/2976/6798/src.jpg",
            "https://vgosti.by/files/galleries/2976/6799/src.jpg",
            "https://vgosti.by/files/galleries/2976/6800/src.jpg",
            "https://vgosti.by/files/galleries/2976/6801/src.jpg",
            "https://vgosti.by/files/galleries/2976/6802/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт",
                "Диантус",
                "Ранункулюс",
                "Роза кустовая",
                "Роза пионовидная",
                "Хамелациум",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Ароматный букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Яркий старт",
        "item_link": "https://vgosti.by/bukety/yarkij-start.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/1903/icon.jpg",
            "https://vgosti.by/files/galleries/3156/7038/src.jpg",
            "https://vgosti.by/files/galleries/3156/7039/src.jpg",
            "https://vgosti.by/files/galleries/3156/7040/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Подсолнух",
                "Роза кустовая"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 35 см ",
            "about_item": "Стильный яркий букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Осенняя карамель",
        "item_link": "https://vgosti.by/bukety/osennyaya-karamel.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/1928/icon.jpg",
            "https://vgosti.by/files/galleries/3202/7116/src.jpg",
            "https://vgosti.by/files/galleries/3202/7117/src.jpg",
            "https://vgosti.by/files/galleries/3202/7118/src.jpg",
            "https://vgosti.by/files/galleries/3202/7119/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза садовая",
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Миссис Бонд",
        "item_link": "https://vgosti.by/bukety/missis-bond.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/1917/icon.jpg",
            "https://vgosti.by/files/galleries/3182/7087/src.jpg",
            "https://vgosti.by/files/galleries/3182/7088/src.jpg",
            "https://vgosti.by/files/galleries/3182/7089/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Гвоздика",
                "Роза кустовая",
                "Роза пионовидная"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 30 см ",
            "about_item": "Композиция высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Весеннее ожерелье",
        "item_link": "https://vgosti.by/bukety/vesennee-ozherele.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/1802/icon.jpg",
            "https://vgosti.by/files/galleries/2962/6767/src.jpg",
            "https://vgosti.by/files/galleries/2962/6768/src.jpg",
            "https://vgosti.by/files/galleries/2962/6769/src.jpg",
            "https://vgosti.by/files/galleries/2962/6770/src.jpg",
            "https://vgosti.by/files/galleries/2962/6771/src.jpg",
            "https://vgosti.by/files/galleries/2962/6772/src.jpg",
            "https://vgosti.by/files/galleries/2962/6773/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Гиацинт",
                "Диантус"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 20-25 см ",
            "about_item": "Ароматный весенний букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Весенняя любовь",
        "item_link": "https://vgosti.by/bukety/vesennyaya-lyubov.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/1847/icon.jpg",
            "https://vgosti.by/files/galleries/3050/6934/src.jpg",
            "https://vgosti.by/files/galleries/3050/6935/src.jpg",
            "https://vgosti.by/files/galleries/3050/6936/src.jpg",
            "https://vgosti.by/files/galleries/3050/6937/src.jpg"
        ],
        "description": {
            "composition": [
                "Ранункулюс",
                "Тюльпаны"
            ],
            "package": null,
            "size": null,
            "about_item": null
        },
        "category": "Букеты"
    },
    {
        "item_name": "Медовая луна",
        "item_link": "https://vgosti.by/bukety/medovaya-luna.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/1803/icon.jpg",
            "https://vgosti.by/files/galleries/2964/6774/src.jpg",
            "https://vgosti.by/files/galleries/2964/6775/src.jpg",
            "https://vgosti.by/files/galleries/2964/6776/src.jpg",
            "https://vgosti.by/files/galleries/2964/6777/src.jpg",
            "https://vgosti.by/files/galleries/2964/6778/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Гиацинт",
                "Диантус",
                "Хамелациум",
                "Эвкалипт"
            ],
            "package": "Умная корейская бумага с французской тишью ",
            "size": "Диаметр 20-25 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Патриция",
        "item_link": "https://vgosti.by/bukety/patriciya.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/1798/icon.jpg",
            "https://vgosti.by/files/galleries/2954/6755/src.jpg",
            "https://vgosti.by/files/galleries/2954/6756/src.jpg",
            "https://vgosti.by/files/galleries/2954/6757/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Маттиола",
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая",
                "Хризантема",
                "Эустома"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 40 см ",
            "about_item": "Стильный букет из экзотических сотовых цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Сладкий момент",
        "item_link": "https://vgosti.by/bukety/sladkij-moment.html",
        "cost_byn": "215.0",
        "photos": [
            "https://vgosti.by/files/items/1806/icon.jpg",
            "https://vgosti.by/files/galleries/2970/6787/src.jpg",
            "https://vgosti.by/files/galleries/2970/6788/src.jpg",
            "https://vgosti.by/files/galleries/2970/6789/src.jpg",
            "https://vgosti.by/files/galleries/2970/6790/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Гербера",
                "Диантус",
                "Маттиола",
                "Ранункулюс",
                "Роза кустовая",
                "Роза пионовидная",
                "Хамелациум",
                "Хризантема",
                "Цинерария"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 40-45 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Мохито",
        "item_link": "https://vgosti.by/bukety/mohito.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/1824/icon.jpg",
            "https://vgosti.by/files/galleries/3006/6866/src.jpg",
            "https://vgosti.by/files/galleries/3006/6867/src.jpg",
            "https://vgosti.by/files/galleries/3006/6868/src.jpg"
        ],
        "description": {
            "composition": [
                "Гербера",
                "Диантус",
                "Роза",
                "Экзотика",
                "Эустома"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 25-30 см ",
            "about_item": "Универсальный букет подходящий к любому поводу "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Гармония",
        "item_link": "https://vgosti.by/bukety/garmoniya.html",
        "cost_byn": "115.0",
        "photos": [
            "https://vgosti.by/files/items/1830/icon.jpg",
            "https://vgosti.by/files/galleries/3018/6883/src.jpg",
            "https://vgosti.by/files/galleries/3018/6884/src.jpg",
            "https://vgosti.by/files/galleries/3018/6885/src.jpg",
            "https://vgosti.by/files/galleries/3018/6886/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Диантус",
                "Каллы",
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая",
                "Эустома"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Букет наполнен экзотическими сортами цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Соленая карамель",
        "item_link": "https://vgosti.by/bukety/solenaya-karamel.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/1713/icon.jpg",
            "https://vgosti.by/files/galleries/2803/6576/src.jpg",
            "https://vgosti.by/files/galleries/2803/6577/src.jpg",
            "https://vgosti.by/files/galleries/2803/6578/src.jpg",
            "https://vgosti.by/files/galleries/2803/6579/src.jpg",
            "https://vgosti.by/files/galleries/2803/6580/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Диантус",
                "Ранункулюс",
                "Тюльпаны",
                "Хамелациум",
                "Хризантема"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 25-32 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Цветущий сад",
        "item_link": "https://vgosti.by/bukety/cvetucshij-sad.html",
        "cost_byn": "165.0",
        "photos": [
            "https://vgosti.by/files/items/1708/icon.jpg",
            "https://vgosti.by/files/galleries/2793/6561/src.jpg",
            "https://vgosti.by/files/galleries/2793/6562/src.jpg",
            "https://vgosti.by/files/galleries/2793/6563/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Маттиола",
                "Орхидея",
                "Роза пионовидная",
                "Хризантема",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Шопен",
        "item_link": "https://vgosti.by/bukety/shopen.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/1881/icon.jpg",
            "https://vgosti.by/files/galleries/3116/6974/src.jpg",
            "https://vgosti.by/files/galleries/3116/6975/src.jpg",
            "https://vgosti.by/files/galleries/3116/6976/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Роза пионовидная",
                "Ромашки"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 30 см ",
            "about_item": "Универсальный букет подходящий к любому поводу "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Пиония",
        "item_link": "https://vgosti.by/bukety/pioniya.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/1821/icon.jpg",
            "https://vgosti.by/files/galleries/3000/6857/src.jpg",
            "https://vgosti.by/files/galleries/3000/6858/src.jpg",
            "https://vgosti.by/files/galleries/3000/6859/src.jpg",
            "https://vgosti.by/files/galleries/3000/6860/src.jpg",
            "https://vgosti.by/files/galleries/3000/6861/src.jpg",
            "https://vgosti.by/files/galleries/3000/6862/src.jpg"
        ],
        "description": {
            "composition": [
                "Пион",
                "Хамелациум"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 20-25 см ",
            "about_item": "Ароматный букет из пионов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Рубиновая нежность",
        "item_link": "https://vgosti.by/bukety/rubinovaya-nezhnost.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/1711/icon.jpg",
            "https://vgosti.by/files/galleries/2799/6568/src.jpg",
            "https://vgosti.by/files/galleries/2799/6569/src.jpg",
            "https://vgosti.by/files/galleries/2799/6570/src.jpg",
            "https://vgosti.by/files/galleries/2799/6571/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Маттиола",
                "Роза",
                "Скимия",
                "Тюльпаны",
                "Хризантема",
                "Эустома"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 35-40 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Тиффани",
        "item_link": "https://vgosti.by/cvety-v-korobke/tiffani.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1165/icon.jpg",
            "https://vgosti.by/files/galleries/1801/4079/src.jpg",
            "https://vgosti.by/files/galleries/1801/4080/src.jpg",
            "https://vgosti.by/files/galleries/1801/4081/src.jpg",
            "https://vgosti.by/files/galleries/1801/4082/src.jpg",
            "https://vgosti.by/files/galleries/1801/4083/src.jpg",
            "https://vgosti.by/files/galleries/1801/4084/src.jpg",
            "https://vgosti.by/files/galleries/1801/4085/src.jpg",
            "https://vgosti.by/files/galleries/1801/4086/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Ромашки",
                "Хризантема",
                "Экзотика",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Безмятежность",
        "item_link": "https://vgosti.by/bukety/bezmyatezhnost.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/1701/icon.jpg",
            "https://vgosti.by/files/galleries/2779/6545/src.jpg",
            "https://vgosti.by/files/galleries/2779/6546/src.jpg",
            "https://vgosti.by/files/galleries/2779/6547/src.jpg"
        ],
        "description": {
            "composition": [
                "Маттиола",
                "Орхидея",
                "Хризантема",
                "Экзотика",
                "Эустома"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Манхэттен",
        "item_link": "https://vgosti.by/cvety-v-korobke/manhetten.html",
        "cost_byn": "119.0",
        "photos": [
            "https://vgosti.by/files/items/1088/icon.jpg",
            "https://vgosti.by/files/galleries/1694/3666/src.jpg",
            "https://vgosti.by/files/galleries/1694/3667/src.jpg",
            "https://vgosti.by/files/galleries/1694/3668/src.jpg",
            "https://vgosti.by/files/galleries/1694/3669/src.jpg",
            "https://vgosti.by/files/galleries/1694/3670/src.jpg",
            "https://vgosti.by/files/galleries/1694/3671/src.jpg",
            "https://vgosti.by/files/galleries/1694/3672/src.jpg",
            "https://vgosti.by/files/galleries/1694/3673/src.jpg",
            "https://vgosti.by/files/galleries/1694/3674/src.jpg",
            "https://vgosti.by/files/galleries/1694/3675/src.jpg",
            "https://vgosti.by/files/galleries/1694/3676/src.jpg",
            "https://vgosti.by/files/galleries/1694/3677/src.jpg",
            "https://vgosti.by/files/galleries/1694/3678/src.jpg",
            "https://vgosti.by/files/galleries/1694/3679/src.jpg",
            "https://vgosti.by/files/galleries/1694/3680/src.jpg"
        ],
        "description": {
            "composition": [
                "Пион",
                "Роза пионовидная",
                "Хамелациум",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 30-35 см ",
            "about_item": "Ароматная композиция из прекрасных цветов "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Неожиданная зима",
        "item_link": "https://vgosti.by/bukety/neozhidannaya-zima.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1684/icon.jpg",
            "https://vgosti.by/files/galleries/2747/6472/src.jpg",
            "https://vgosti.by/files/galleries/2747/6473/src.jpg",
            "https://vgosti.by/files/galleries/2747/6474/src.jpg",
            "https://vgosti.by/files/galleries/2747/6475/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Скимия",
                "Суккуленты",
                "Хлопок",
                "Елка"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 35-39 см ",
            "about_item": "Зимний букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Город влюбленных",
        "item_link": "https://vgosti.by/bukety/gorod-vlyublennyh.html",
        "cost_byn": "149.0",
        "photos": [
            "https://vgosti.by/files/items/1716/icon.jpg",
            "https://vgosti.by/files/galleries/2809/6584/src.jpg",
            "https://vgosti.by/files/galleries/2809/6585/src.jpg",
            "https://vgosti.by/files/galleries/2809/6586/src.jpg",
            "https://vgosti.by/files/galleries/2809/6587/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Диантус",
                "Ранункулюс",
                "Эвкалипт"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 30-32 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Осенние чувства",
        "item_link": "https://vgosti.by/bukety/osennie-chuvstva.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/1646/icon.jpg",
            "https://vgosti.by/files/galleries/2681/6350/src.jpg",
            "https://vgosti.by/files/galleries/2681/6351/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Роза кустовая",
                "Хамелациум",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Сладкий ноябрь",
        "item_link": "https://vgosti.by/bukety/sladkij-noyabr.html",
        "cost_byn": "119.0",
        "photos": [
            "https://vgosti.by/files/items/1610/icon.jpg",
            "https://vgosti.by/files/galleries/2609/6182/src.jpg",
            "https://vgosti.by/files/galleries/2609/6183/src.jpg",
            "https://vgosti.by/files/galleries/2609/6184/src.jpg",
            "https://vgosti.by/files/galleries/2609/6185/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Альстромерия",
                "Гортензия",
                "Диантус",
                "Цинерария",
                "Экзотика",
                "Эустома"
            ],
            "package": "Брендовая упаковка Louis Vuitton ",
            "size": "Диаметр 35-39 см ",
            "about_item": "Осенняя гамма в стильном букете "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Королева осени",
        "item_link": "https://vgosti.by/bukety/koroleva-oseni.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/1608/icon.jpg",
            "https://vgosti.by/files/galleries/2605/6172/src.jpg",
            "https://vgosti.by/files/galleries/2605/6173/src.jpg",
            "https://vgosti.by/files/galleries/2605/6174/src.jpg",
            "https://vgosti.by/files/galleries/2605/6175/src.jpg",
            "https://vgosti.by/files/galleries/2605/6176/src.jpg",
            "https://vgosti.by/files/galleries/2605/6177/src.jpg",
            "https://vgosti.by/files/galleries/2605/6178/src.jpg",
            "https://vgosti.by/files/galleries/2605/6179/src.jpg",
            "https://vgosti.by/files/galleries/2605/6180/src.jpg",
            "https://vgosti.by/files/galleries/2605/6181/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Скимия",
                "Хамелациум",
                "Хризантема"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 35-40 см ",
            "about_item": "Осенние оттенки в роскошном букете "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Нимфа",
        "item_link": "https://vgosti.by/bukety/nimfa.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1680/icon.jpg",
            "https://vgosti.by/files/galleries/2739/6452/src.jpg",
            "https://vgosti.by/files/galleries/2739/6453/src.jpg",
            "https://vgosti.by/files/galleries/2739/6454/src.jpg",
            "https://vgosti.by/files/galleries/2739/6455/src.jpg",
            "https://vgosti.by/files/galleries/2739/6456/src.jpg",
            "https://vgosti.by/files/galleries/2739/6457/src.jpg"
        ],
        "description": {
            "composition": [
                "Амариллис",
                "Анемон",
                "Роза",
                "Скимия",
                "Экзотика",
                "Елка"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 40-45 см ",
            "about_item": "Зимний букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Ванильное небо",
        "item_link": "https://vgosti.by/bukety/vanilnoe-nebo.html",
        "cost_byn": "109.0",
        "photos": [
            "https://vgosti.by/files/items/1698/icon.jpg",
            "https://vgosti.by/files/galleries/2773/6538/src.jpg",
            "https://vgosti.by/files/galleries/2773/6539/src.jpg",
            "https://vgosti.by/files/galleries/2773/6540/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Диантус",
                "Роза пионовидная",
                "Хлопок",
                "Хризантема",
                "Эустома"
            ],
            "package": "Умная корейская бумага ",
            "size": "Высота 35-40 см ",
            "about_item": "Цветочный состав высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Бордо",
        "item_link": "https://vgosti.by/cvety-v-korobke/bordo.html",
        "cost_byn": "120.0",
        "photos": [
            "https://vgosti.by/files/items/832/icon.jpg",
            "https://vgosti.by/files/galleries/1232/2383/src.jpg",
            "https://vgosti.by/files/galleries/1232/2384/src.jpg",
            "https://vgosti.by/files/galleries/1232/2385/src.jpg",
            "https://vgosti.by/files/galleries/1232/2386/src.jpg",
            "https://vgosti.by/files/galleries/1232/2387/src.jpg",
            "https://vgosti.by/files/galleries/1232/2388/src.jpg",
            "https://vgosti.by/files/galleries/1232/2389/src.jpg",
            "https://vgosti.by/files/galleries/1232/2390/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Георгина",
                "Диантус",
                "Зелень",
                "Ирис",
                "Маттиола",
                "Пистация",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Квадратная коробка с ручками ",
            "size": "Высота коробки 23 см ",
            "about_item": "Стильная коробка с цветами, отличается высокой стойкостью "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Джуди",
        "item_link": "https://vgosti.by/bukety/dzhudi.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/1879/icon.jpg",
            "https://vgosti.by/files/galleries/3112/6963/src.jpg",
            "https://vgosti.by/files/galleries/3112/6964/src.jpg",
            "https://vgosti.by/files/galleries/3112/6965/src.jpg",
            "https://vgosti.by/files/galleries/3112/6966/src.jpg",
            "https://vgosti.by/files/galleries/3112/6967/src.jpg",
            "https://vgosti.by/files/galleries/3112/6968/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Хамелациум"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 30 см ",
            "about_item": "Универсальный букет подходящий к любому поводу "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Эскиз",
        "item_link": "https://vgosti.by/bukety/eskiz.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/1785/icon.jpg"
        ],
        "description": {
            "composition": [
                "Подсолнух",
                "Ромашки",
                "Хризантема",
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "Диаметр 20-25 см ",
            "about_item": "Летний букет в стильной упаковке "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Парфюм весны",
        "item_link": "https://vgosti.by/bukety/parfyum-vesny.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/1734/icon.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "Умная корейская бумага ",
            "size": "Высота 25-30 см ",
            "about_item": "Ароматный букет из гиацинтов - высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Окно в лето",
        "item_link": "https://vgosti.by/bukety/okno-v-leto.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1707/icon.jpg",
            "https://vgosti.by/files/galleries/2791/6558/src.jpg",
            "https://vgosti.by/files/galleries/2791/6559/src.jpg",
            "https://vgosti.by/files/galleries/2791/6560/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Гиацинт",
                "Роза кустовая",
                "Роза пионовидная",
                "Тюльпаны"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 30см ",
            "about_item": "Ароматный букет из пионовидной розы и весенних цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Фэшн",
        "item_link": "https://vgosti.by/bukety/feshn.html",
        "cost_byn": "109.0",
        "photos": [
            "https://vgosti.by/files/items/1594/icon.jpg",
            "https://vgosti.by/files/galleries/2577/6116/src.jpg",
            "https://vgosti.by/files/galleries/2577/6117/src.jpg",
            "https://vgosti.by/files/galleries/2577/6118/src.jpg",
            "https://vgosti.by/files/galleries/2577/6119/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Маттиола",
                "Роза кустовая",
                "Роза французская",
                "Роза пионовидная",
                "Экзотика",
                "Эустома",
                "Ягоды"
            ],
            "package": "Брендовая упаковка Yves Saint Laurent ",
            "size": "Диаметр 35-40 см ",
            "about_item": "Стильный букет в трендовой упаковке "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Осенний джаз",
        "item_link": "https://vgosti.by/bukety/osennij-dzhaz.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/1611/icon.jpg",
            "https://vgosti.by/files/galleries/2611/6186/src.jpg",
            "https://vgosti.by/files/galleries/2611/6187/src.jpg",
            "https://vgosti.by/files/galleries/2611/6188/src.jpg"
        ],
        "description": {
            "composition": [
                "Подсолнух",
                "Экзотика",
                "Ягоды"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Букет выполнен в осенней гамме "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Тыковка Глициния",
        "item_link": "https://vgosti.by/bukety/tykovka-gliciniya.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1627/icon.jpg",
            "https://vgosti.by/files/galleries/2643/6265/src.jpg",
            "https://vgosti.by/files/galleries/2643/6266/src.jpg",
            "https://vgosti.by/files/galleries/2643/6267/src.jpg",
            "https://vgosti.by/files/galleries/2643/6268/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Хамелациум",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Тыква ",
            "size": "Диаметр 25-27 см ",
            "about_item": "Композиция в тыкве "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Ароматный букет",
        "item_link": "https://vgosti.by/bukety/aromatnyj-buket.html",
        "cost_byn": "139.0",
        "photos": [
            "https://vgosti.by/files/items/1712/icon.jpg",
            "https://vgosti.by/files/galleries/2801/6572/src.jpg",
            "https://vgosti.by/files/galleries/2801/6573/src.jpg",
            "https://vgosti.by/files/galleries/2801/6574/src.jpg",
            "https://vgosti.by/files/galleries/2801/6575/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Букет из парфюмированной пионовидной розы "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Весеннее свидание",
        "item_link": "https://vgosti.by/bukety/vesennee-svidanie.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1720/icon.jpg",
            "https://vgosti.by/files/galleries/2817/6599/src.jpg",
            "https://vgosti.by/files/galleries/2817/6600/src.jpg",
            "https://vgosti.by/files/galleries/2817/6601/src.jpg",
            "https://vgosti.by/files/galleries/2817/6602/src.jpg",
            "https://vgosti.by/files/galleries/2817/6603/src.jpg",
            "https://vgosti.by/files/galleries/2817/6604/src.jpg",
            "https://vgosti.by/files/galleries/2817/6605/src.jpg",
            "https://vgosti.by/files/galleries/2817/6606/src.jpg",
            "https://vgosti.by/files/galleries/2817/6607/src.jpg"
        ],
        "description": {
            "composition": [
                "Ирис",
                "Тюльпаны"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 25-27 см ",
            "about_item": "Букет из весенних цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Шарм осени",
        "item_link": "https://vgosti.by/bukety/sharm-oseni.html",
        "cost_byn": "67.0",
        "photos": [
            "https://vgosti.by/files/items/1613/icon.jpg",
            "https://vgosti.by/files/galleries/2615/6193/src.jpg",
            "https://vgosti.by/files/galleries/2615/6194/src.jpg"
        ],
        "description": {
            "composition": [
                "Эвкалипт",
                "Экзотика",
                "Ягоды"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 25-30 см ",
            "about_item": "Яркий осенений букет с лотосом "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Влечение",
        "item_link": "https://vgosti.by/bukety/vlechenie.html",
        "cost_byn": "525.0",
        "photos": [
            "https://vgosti.by/files/items/1227/icon.jpg",
            "https://vgosti.by/files/galleries/1917/4410/src.jpg",
            "https://vgosti.by/files/galleries/1917/4411/src.jpg",
            "https://vgosti.by/files/galleries/1917/4412/src.jpg",
            "https://vgosti.by/files/galleries/1917/4413/src.jpg",
            "https://vgosti.by/files/galleries/1917/4414/src.jpg",
            "https://vgosti.by/files/galleries/1917/4415/src.jpg",
            "https://vgosti.by/files/galleries/1917/4416/src.jpg",
            "https://vgosti.by/files/galleries/1917/4417/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза кустовая",
                "Роза французская",
                "Роза пионовидная",
                "Роза садовая",
                "Экзотика"
            ],
            "package": "Ленты ",
            "size": "Диаметр 50-55 см ",
            "about_item": "Экзотический состав букета с парфюмированной розой "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Невада",
        "item_link": "https://vgosti.by/cvety-v-korobke/nevada.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/1196/icon.jpg",
            "https://vgosti.by/files/galleries/1861/4259/src.jpg",
            "https://vgosti.by/files/galleries/1861/4260/src.jpg",
            "https://vgosti.by/files/galleries/1861/4261/src.jpg",
            "https://vgosti.by/files/galleries/1861/4262/src.jpg",
            "https://vgosti.by/files/galleries/1861/4263/src.jpg",
            "https://vgosti.by/files/galleries/1861/4264/src.jpg",
            "https://vgosti.by/files/galleries/1861/4265/src.jpg",
            "https://vgosti.by/files/galleries/1861/4266/src.jpg",
            "https://vgosti.by/files/galleries/1861/4267/src.jpg",
            "https://vgosti.by/files/galleries/1861/4268/src.jpg",
            "https://vgosti.by/files/galleries/1861/4269/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Декорированное кашпо ",
            "size": "высота 20-25 см ",
            "about_item": "Стильная композиция в декоративном кашпо "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Осенний листопад",
        "item_link": "https://vgosti.by/bukety/osennij-listopad.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1259/icon.jpg",
            "https://vgosti.by/files/galleries/1973/4590/src.jpg",
            "https://vgosti.by/files/galleries/1973/4591/src.jpg",
            "https://vgosti.by/files/galleries/1973/4592/src.jpg",
            "https://vgosti.by/files/galleries/1973/4593/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Букет в осенней тематике "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Конверт Априкот",
        "item_link": "https://vgosti.by/cvety-v-korobke/konvert-aprikot.html",
        "cost_byn": "35.0",
        "photos": [
            "https://vgosti.by/files/items/1206/icon.jpg",
            "https://vgosti.by/files/galleries/1875/4299/src.jpg",
            "https://vgosti.by/files/galleries/1875/4300/src.jpg",
            "https://vgosti.by/files/galleries/1875/4301/src.jpg",
            "https://vgosti.by/files/galleries/1875/4302/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Роза кустовая",
                "Роза пионовидная",
                "Хризантема"
            ],
            "package": "Конверт ",
            "size": "ширина 17 см высота 25 см ",
            "about_item": "Стильная композиция в конверте "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Априкот",
        "item_link": "https://vgosti.by/bukety/aprikot-1.html",
        "cost_byn": "169.0",
        "photos": [
            "https://vgosti.by/files/items/857/icon.jpg",
            "https://vgosti.by/files/galleries/1282/2527/src.jpg",
            "https://vgosti.by/files/galleries/1282/2528/src.jpg",
            "https://vgosti.by/files/galleries/1282/2529/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Роза",
                "Роза кустовая",
                "Тласпи",
                "Хризантема",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 40-45 см ",
            "about_item": "Нежный букет из экзотических цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Флоренция",
        "item_link": "https://vgosti.by/bukety/florenciya.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/1121/icon.jpg",
            "https://vgosti.by/files/galleries/1734/3924/src.jpg",
            "https://vgosti.by/files/galleries/1734/3927/src.jpg",
            "https://vgosti.by/files/galleries/1734/3926/src.jpg",
            "https://vgosti.by/files/galleries/1734/3928/src.jpg",
            "https://vgosti.by/files/galleries/1734/3929/src.jpg",
            "https://vgosti.by/files/galleries/1734/3930/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Роза кустовая",
                "Сирень",
                "Эустома"
            ],
            "package": "ленты ",
            "size": "диаметр 35-40 см ",
            "about_item": "Букет в европейском стиле без упаковки "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Романс",
        "item_link": "https://vgosti.by/bukety/romans.html",
        "cost_byn": "119.0",
        "photos": [
            "https://vgosti.by/files/items/1473/icon.jpg",
            "https://vgosti.by/files/galleries/2383/5740/src.jpg",
            "https://vgosti.by/files/galleries/2383/5741/src.jpg",
            "https://vgosti.by/files/galleries/2383/5742/src.jpg",
            "https://vgosti.by/files/galleries/2383/5743/src.jpg",
            "https://vgosti.by/files/galleries/2383/5744/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт",
                "Тюльпаны",
                "Хамелациум"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 30 см ",
            "about_item": "Весенний букет из гиацинтов и пионовидных тюльпанов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Застенчивость",
        "item_link": "https://vgosti.by/bukety/zastenchivost.html",
        "cost_byn": "275.0",
        "photos": [
            "https://vgosti.by/files/items/780/icon.jpg",
            "https://vgosti.by/files/galleries/1140/2143/src.jpg",
            "https://vgosti.by/files/galleries/1140/2144/src.jpg",
            "https://vgosti.by/files/galleries/1140/2145/src.jpg",
            "https://vgosti.by/files/galleries/1140/2146/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Зелень",
                "Пион",
                "Пистация",
                "Протея",
                "Ранункулюс",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Тюльпаны",
                "Тюльпан",
                "IceCream",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "Корейская бумага ",
            "size": "60-70 см ",
            "about_item": "Букет насыщен экзотическими цветами, большого размера "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Лавандовые оттенки",
        "item_link": "https://vgosti.by/bukety/lavandovye-ottenki.html",
        "cost_byn": "175.0",
        "photos": [
            "https://vgosti.by/files/items/935/icon.jpg",
            "https://vgosti.by/files/galleries/1426/2863/src.jpg",
            "https://vgosti.by/files/galleries/1426/2864/src.jpg",
            "https://vgosti.by/files/galleries/1426/2865/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Гвоздика",
                "Диантус",
                "Роза кустовая",
                "Хризантема",
                "Эвкалипт",
                "Эрингиум"
            ],
            "package": "Корейская бумага ",
            "size": "диаметр 45 см ",
            "about_item": "Букет высокой стойкости в лавандовых оттенках "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Парижский поцелуй",
        "item_link": "https://vgosti.by/bukety/parizhskij-poceluj.html",
        "cost_byn": "295.0",
        "photos": [
            "https://vgosti.by/files/items/933/icon.jpg",
            "https://vgosti.by/files/galleries/1422/2856/src.jpg",
            "https://vgosti.by/files/galleries/1422/2857/src.jpg",
            "https://vgosti.by/files/galleries/1422/2858/src.jpg",
            "https://vgosti.by/files/galleries/1422/2859/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза французская",
                "Скимия",
                "Эвкалипт"
            ],
            "package": "Корейская бумага ",
            "size": "диаметр более 45 см ",
            "about_item": "Роскошный букет из французской розы "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Бланш",
        "item_link": "https://vgosti.by/bukety/blansh.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/845/icon.jpg",
            "https://vgosti.by/files/galleries/1258/2466/src.jpg",
            "https://vgosti.by/files/galleries/1258/2467/src.jpg",
            "https://vgosti.by/files/galleries/1258/2468/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Гвоздика",
                "Диантус",
                "Пион",
                "Роза кустовая",
                "Роза пионовидная",
                "Сирень",
                "Эвкалипт"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 35-40 см ",
            "about_item": "Стильный весенний букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Скандинавия",
        "item_link": "https://vgosti.by/bukety/skandinaviya.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/996/icon.jpg",
            "https://vgosti.by/files/galleries/1530/3089/src.jpg",
            "https://vgosti.by/files/galleries/1530/3090/src.jpg",
            "https://vgosti.by/files/galleries/1530/3091/src.jpg",
            "https://vgosti.by/files/galleries/1530/3092/src.jpg",
            "https://vgosti.by/files/galleries/1530/3093/src.jpg"
        ],
        "description": {
            "composition": [
                "Питоспорум",
                "Тюльпаны"
            ],
            "package": "Джутовое волокно ",
            "size": "диаметр 25, 30 см ",
            "about_item": "Букет из тюльпанов с зеленью "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Адель",
        "item_link": "https://vgosti.by/bukety/adel.html",
        "cost_byn": "149.0",
        "photos": [
            "https://vgosti.by/files/items/1180/icon.jpg",
            "https://vgosti.by/files/galleries/1831/4175/src.jpg",
            "https://vgosti.by/files/galleries/1831/4176/src.jpg",
            "https://vgosti.by/files/galleries/1831/4177/src.jpg",
            "https://vgosti.by/files/galleries/1831/4178/src.jpg",
            "https://vgosti.by/files/galleries/1831/4179/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Роза",
                "Суккуленты",
                "Экзотика",
                "Эрингиум"
            ],
            "package": "Корейская умная бумага ",
            "size": "Диаметр 40-45 см ",
            "about_item": "Роскошный насыщенный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Орфей",
        "item_link": "https://vgosti.by/bukety/orfej.html",
        "cost_byn": "48.0",
        "photos": [
            "https://vgosti.by/files/items/1561/icon.jpg",
            "https://vgosti.by/files/galleries/2523/6049/src.jpg",
            "https://vgosti.by/files/galleries/2523/6050/src.jpg",
            "https://vgosti.by/files/galleries/2523/6051/src.jpg"
        ],
        "description": {
            "composition": [
                "Мужской состав",
                "Гербера",
                "Дельфиниум",
                "Зелень"
            ],
            "package": "ленты ",
            "size": "Высота 55 см ",
            "about_item": "Стильный вытянутый букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Розовые мечты",
        "item_link": "https://vgosti.by/bukety/rozovye-mechty.html",
        "cost_byn": "105.0",
        "photos": [
            "https://vgosti.by/files/items/1677/icon.jpg",
            "https://vgosti.by/files/galleries/2733/6439/src.jpg",
            "https://vgosti.by/files/galleries/2733/6440/src.jpg",
            "https://vgosti.by/files/galleries/2733/6441/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Роза кустовая",
                "Хамелациум",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Эдельвейс",
        "item_link": "https://vgosti.by/bukety/edelvejs.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/1368/icon.jpg",
            "https://vgosti.by/files/galleries/2183/5175/src.jpg",
            "https://vgosti.by/files/galleries/2183/5176/src.jpg",
            "https://vgosti.by/files/galleries/2183/5177/src.jpg",
            "https://vgosti.by/files/galleries/2183/5178/src.jpg",
            "https://vgosti.by/files/galleries/2183/5179/src.jpg",
            "https://vgosti.by/files/galleries/2183/5180/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая",
                "Скимия",
                "Хлопок",
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35-40 см ",
            "about_item": "Букет длительной стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Вернисаж",
        "item_link": "https://vgosti.by/cvety-v-korobke/vernisazh.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/1067/icon.jpg",
            "https://vgosti.by/files/galleries/1652/3391/src.jpg",
            "https://vgosti.by/files/galleries/1652/3392/src.jpg",
            "https://vgosti.by/files/galleries/1652/3393/src.jpg",
            "https://vgosti.by/files/galleries/1652/3394/src.jpg",
            "https://vgosti.by/files/galleries/1652/3395/src.jpg",
            "https://vgosti.by/files/galleries/1652/3396/src.jpg",
            "https://vgosti.by/files/galleries/1652/3397/src.jpg",
            "https://vgosti.by/files/galleries/1652/3398/src.jpg",
            "https://vgosti.by/files/galleries/1652/3399/src.jpg",
            "https://vgosti.by/files/galleries/1652/3400/src.jpg",
            "https://vgosti.by/files/galleries/1652/3401/src.jpg",
            "https://vgosti.by/files/galleries/1652/3402/src.jpg",
            "https://vgosti.by/files/galleries/1652/3403/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Стильная композиция в шляпной коробке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Наслаждение",
        "item_link": "https://vgosti.by/bukety/naslazhdenie.html",
        "cost_byn": "149.0",
        "photos": [
            "https://vgosti.by/files/items/881/icon.jpg",
            "https://vgosti.by/files/galleries/1322/2612/src.jpg",
            "https://vgosti.by/files/galleries/1322/2613/src.jpg",
            "https://vgosti.by/files/galleries/1322/2614/src.jpg",
            "https://vgosti.by/files/galleries/1322/2615/src.jpg",
            "https://vgosti.by/files/galleries/1322/2616/src.jpg",
            "https://vgosti.by/files/galleries/1322/2617/src.jpg",
            "https://vgosti.by/files/galleries/1322/2618/src.jpg",
            "https://vgosti.by/files/galleries/1322/2619/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Георгина",
                "Каллы",
                "Ранункулюс",
                "Роза кустовая",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Ленты ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Букет в европейском стиле без упаковки "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Рипсалис",
        "item_link": "https://vgosti.by/bukety/ripsalis.html",
        "cost_byn": "88.0",
        "photos": [
            "https://vgosti.by/files/items/1174/icon.jpg",
            "https://vgosti.by/files/galleries/1819/4137/src.jpg",
            "https://vgosti.by/files/galleries/1819/4138/src.jpg",
            "https://vgosti.by/files/galleries/1819/4139/src.jpg",
            "https://vgosti.by/files/galleries/1819/4140/src.jpg",
            "https://vgosti.by/files/galleries/1819/4141/src.jpg",
            "https://vgosti.by/files/galleries/1819/4142/src.jpg",
            "https://vgosti.by/files/galleries/1819/4143/src.jpg",
            "https://vgosti.by/files/galleries/1819/4144/src.jpg",
            "https://vgosti.by/files/galleries/1819/4145/src.jpg"
        ],
        "description": {
            "composition": [
                "Мужской состав",
                "Кактус",
                "Суккуленты"
            ],
            "package": "Натуральный крафт ",
            "size": "диаметр 35 см ",
            "about_item": "Букет длительной стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Лавандовый лейс",
        "item_link": "https://vgosti.by/bukety/lavandovyj-lejs.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/782/icon.jpg",
            "https://vgosti.by/files/galleries/1144/2147/src.jpg",
            "https://vgosti.by/files/galleries/1144/2148/src.jpg",
            "https://vgosti.by/files/galleries/1144/2149/src.jpg",
            "https://vgosti.by/files/galleries/1144/2150/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Гортензия",
                "Диантус",
                "Зелень",
                "Роза кустовая",
                "Роза пионовидная",
                "Эустома"
            ],
            "package": "Французский двухсторонний крафт с корейской бумагой ",
            "size": "35-40 см ",
            "about_item": "Нежный цветочный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Москино",
        "item_link": "https://vgosti.by/bukety/moskino.html",
        "cost_byn": "215.0",
        "photos": [
            "https://vgosti.by/files/items/1002/icon.jpg",
            "https://vgosti.by/files/galleries/1542/3127/src.jpg",
            "https://vgosti.by/files/galleries/1542/3128/src.jpg",
            "https://vgosti.by/files/galleries/1542/3129/src.jpg",
            "https://vgosti.by/files/galleries/1542/3130/src.jpg",
            "https://vgosti.by/files/galleries/1542/3131/src.jpg",
            "https://vgosti.by/files/galleries/1542/3132/src.jpg",
            "https://vgosti.by/files/galleries/1542/3133/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Диантус",
                "Роза кустовая",
                "Роза французская",
                "Экзотика"
            ],
            "package": "ленты ",
            "size": "более 45-50 см ",
            "about_item": "Яркий роскошный букет из стойких цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Мадрид",
        "item_link": "https://vgosti.by/bukety/madrid.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/1167/icon.jpg",
            "https://vgosti.by/files/galleries/1805/4098/src.jpg",
            "https://vgosti.by/files/galleries/1805/4099/src.jpg",
            "https://vgosti.by/files/galleries/1805/4100/src.jpg",
            "https://vgosti.by/files/galleries/1805/4101/src.jpg",
            "https://vgosti.by/files/galleries/1805/4102/src.jpg",
            "https://vgosti.by/files/galleries/1805/4103/src.jpg",
            "https://vgosti.by/files/galleries/1805/4104/src.jpg",
            "https://vgosti.by/files/galleries/1805/4105/src.jpg",
            "https://vgosti.by/files/galleries/1805/4106/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Гвоздика",
                "Роза пионовидная",
                "Роза садовая",
                "Хамелациум",
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Ароматный букет нежных оттенков "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Одиссея",
        "item_link": "https://vgosti.by/bukety/odisseya.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/1225/icon.jpg",
            "https://vgosti.by/files/galleries/1913/4402/src.jpg",
            "https://vgosti.by/files/galleries/1913/4403/src.jpg",
            "https://vgosti.by/files/galleries/1913/4404/src.jpg",
            "https://vgosti.by/files/galleries/1913/4405/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Гербера",
                "Георгина",
                "Роза кустовая",
                "Роза пионовидная",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35-40 см ",
            "about_item": "Букет в нежной кремовой гамме "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Крайола",
        "item_link": "https://vgosti.by/bukety/krajola.html",
        "cost_byn": "117.0",
        "photos": [
            "https://vgosti.by/files/items/320/icon.jpg",
            "https://vgosti.by/files/galleries/313/3583/src.jpg",
            "https://vgosti.by/files/galleries/313/3584/src.jpg",
            "https://vgosti.by/files/galleries/313/3585/src.jpg",
            "https://vgosti.by/files/galleries/313/3586/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Маттиола",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная"
            ],
            "package": "Тишью с корейской бумагой ",
            "size": "35-40 см ",
            "about_item": "Нежный букет в насыщенной упаковке "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Амбиция",
        "item_link": "https://vgosti.by/cvety-v-korobke/ambiciya.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/839/icon.jpg",
            "https://vgosti.by/files/galleries/1246/2424/src.jpg",
            "https://vgosti.by/files/galleries/1246/2425/src.jpg",
            "https://vgosti.by/files/galleries/1246/2426/src.jpg",
            "https://vgosti.by/files/galleries/1246/2427/src.jpg",
            "https://vgosti.by/files/galleries/1246/2428/src.jpg",
            "https://vgosti.by/files/galleries/1246/2429/src.jpg",
            "https://vgosti.by/files/galleries/1246/2430/src.jpg"
        ],
        "description": {
            "composition": [
                "Амариллис",
                "Астильба",
                "Гвоздика",
                "Диантус",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Коробка-сумочка с ручками ",
            "size": "высота 15-19 см ",
            "about_item": "Элегантная композиция в сумочке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Мэнсвил парк",
        "item_link": "https://vgosti.by/bukety/mensvil-park.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/1129/icon.jpg",
            "https://vgosti.by/files/galleries/1747/3993/src.jpg",
            "https://vgosti.by/files/galleries/1747/3994/src.jpg",
            "https://vgosti.by/files/galleries/1747/3995/src.jpg",
            "https://vgosti.by/files/galleries/1747/3996/src.jpg",
            "https://vgosti.by/files/galleries/1747/3997/src.jpg",
            "https://vgosti.by/files/galleries/1747/3998/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Диантус",
                "Зелень",
                "Маттиола",
                "Пион",
                "Роза пионовидная",
                "Хризантема"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Насыщенный яркий летний букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Давидов",
        "item_link": "https://vgosti.by/bukety/davidov.html",
        "cost_byn": "275.0",
        "photos": [
            "https://vgosti.by/files/items/1001/icon.jpg",
            "https://vgosti.by/files/galleries/1540/3120/src.jpg",
            "https://vgosti.by/files/galleries/1540/3121/src.jpg",
            "https://vgosti.by/files/galleries/1540/3122/src.jpg",
            "https://vgosti.by/files/galleries/1540/3123/src.jpg",
            "https://vgosti.by/files/galleries/1540/3124/src.jpg",
            "https://vgosti.by/files/galleries/1540/3125/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Гвоздика",
                "Роза",
                "Роза кустовая",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "ленты ",
            "size": "более 45-50 см ",
            "about_item": "Букет насыщенных оттенков "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Индиго",
        "item_link": "https://vgosti.by/bukety/indigo.html",
        "cost_byn": "175.0",
        "photos": [
            "https://vgosti.by/files/items/1226/icon.jpg",
            "https://vgosti.by/files/galleries/1915/4406/src.jpg",
            "https://vgosti.by/files/galleries/1915/4407/src.jpg",
            "https://vgosti.by/files/galleries/1915/4408/src.jpg",
            "https://vgosti.by/files/galleries/1915/4409/src.jpg"
        ],
        "description": {
            "composition": [
                "Пистация",
                "Экзотика",
                "Эустома"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 35-40 см ",
            "about_item": "Букет длительной стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Аметист",
        "item_link": "https://vgosti.by/bukety/ametist.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/732/icon.jpg",
            "https://vgosti.by/files/galleries/1060/1976/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Диантус",
                "Зелень",
                "Ранункулюс",
                "Тюльпаны",
                "Хризантема",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Французский крафт ",
            "size": "35-40 см ",
            "about_item": "Букет цвета аметиста "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Лазурный берег",
        "item_link": "https://vgosti.by/bukety/lazurnyj-bereg.html",
        "cost_byn": "179.0",
        "photos": [
            "https://vgosti.by/files/items/867/icon.jpg",
            "https://vgosti.by/files/galleries/1302/2571/src.jpg",
            "https://vgosti.by/files/galleries/1302/2572/src.jpg",
            "https://vgosti.by/files/galleries/1302/2573/src.jpg",
            "https://vgosti.by/files/galleries/1302/2574/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Диантус",
                "Нигелла",
                "Пион",
                "Протея",
                "Роза кустовая",
                "Хамелациум",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 40-45 см ",
            "about_item": "Нежный букет из экзотических цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Глория",
        "item_link": "https://vgosti.by/bukety/gloriya.html",
        "cost_byn": "82.0",
        "photos": [
            "https://vgosti.by/files/items/272/icon.jpg",
            "https://vgosti.by/files/galleries/217/3306/src.jpg",
            "https://vgosti.by/files/galleries/217/3307/src.jpg",
            "https://vgosti.by/files/galleries/217/3308/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Гербера",
                "Маттиола",
                "Ранункулюс",
                "Роза кустовая",
                "Роза пионовидная",
                "Тюльпаны"
            ],
            "package": "Корейская бумага ",
            "size": "от 30-35 см ",
            "about_item": "Стильный букет из ароматных цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Гуччи",
        "item_link": "https://vgosti.by/bukety/guchchi.html",
        "cost_byn": "655.0",
        "photos": [
            "https://vgosti.by/files/items/1278/icon.jpg",
            "https://vgosti.by/files/galleries/2011/4672/src.jpg",
            "https://vgosti.by/files/galleries/2011/4673/src.jpg",
            "https://vgosti.by/files/galleries/2011/4674/src.jpg",
            "https://vgosti.by/files/galleries/2011/4675/src.jpg",
            "https://vgosti.by/files/galleries/2011/4676/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза французская",
                "Роза пионовидная",
                "Роза садовая",
                "Экзотика"
            ],
            "package": "ленты ",
            "size": "диаметр более 70 см ",
            "about_item": "Парфюмированный букет из экзотических видов роз "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Черный жемчуг",
        "item_link": "https://vgosti.by/bukety/chernyj-zhemchug.html",
        "cost_byn": "115.0",
        "photos": [
            "https://vgosti.by/files/items/856/icon.jpg",
            "https://vgosti.by/files/galleries/1280/2520/src.jpg",
            "https://vgosti.by/files/galleries/1280/2521/src.jpg",
            "https://vgosti.by/files/galleries/1280/2522/src.jpg",
            "https://vgosti.by/files/galleries/1280/2523/src.jpg",
            "https://vgosti.by/files/galleries/1280/2524/src.jpg",
            "https://vgosti.by/files/galleries/1280/2525/src.jpg",
            "https://vgosti.by/files/galleries/1280/2526/src.jpg"
        ],
        "description": {
            "composition": [
                "Астильба",
                "Гербера",
                "Диантус",
                "Экзотика",
                "Эустома"
            ],
            "package": "Ленты ",
            "size": "Диаметр 25-30 см ",
            "about_item": "Букет насыщен экзотическими цветами "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Мегабукет",
        "item_link": "https://vgosti.by/bukety/megabuket.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/1058/icon.jpg",
            "https://vgosti.by/files/galleries/1634/3349/src.jpg",
            "https://vgosti.by/files/galleries/1634/3350/src.jpg",
            "https://vgosti.by/files/galleries/1634/3351/src.jpg",
            "https://vgosti.by/files/galleries/1634/3352/src.jpg",
            "https://vgosti.by/files/galleries/1634/3353/src.jpg",
            "https://vgosti.by/files/galleries/1634/3354/src.jpg"
        ],
        "description": {
            "composition": [
                "Мужской состав",
                "Экзотика"
            ],
            "package": "Корейская бумага ",
            "size": "высота более 100 см ",
            "about_item": "Огромный букет из стойких экзотических цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Загадочная леди",
        "item_link": "https://vgosti.by/bukety/zagadochnaya-ledi.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/1436/icon.jpg",
            "https://vgosti.by/files/galleries/2309/5561/src.jpg",
            "https://vgosti.by/files/galleries/2309/5562/src.jpg",
            "https://vgosti.by/files/galleries/2309/5563/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Орхидея",
                "Фрезия",
                "Хризантема",
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "высота 30 см ",
            "about_item": "Букет длительной стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Аромат гиацинтов",
        "item_link": "https://vgosti.by/bukety/aromat-giacintov.html",
        "cost_byn": "39.0",
        "photos": [
            "https://vgosti.by/files/items/1434/icon.jpg",
            "https://vgosti.by/files/galleries/2305/5554/src.jpg",
            "https://vgosti.by/files/galleries/2305/5555/src.jpg",
            "https://vgosti.by/files/galleries/2305/5556/src.jpg",
            "https://vgosti.by/files/galleries/2305/5557/src.jpg",
            "https://vgosti.by/files/galleries/2305/5558/src.jpg",
            "https://vgosti.by/files/galleries/2305/5559/src.jpg",
            "https://vgosti.by/files/galleries/2305/5560/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт",
                "Хамелациум"
            ],
            "package": "Корейская умная бумага ",
            "size": "высота 35-45 см ",
            "about_item": "Ароматный букет из гиацинтов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Изыск",
        "item_link": "https://vgosti.by/bukety/izysk.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/973/icon.jpg",
            "https://vgosti.by/files/galleries/1488/2991/src.jpg",
            "https://vgosti.by/files/galleries/1488/2992/src.jpg",
            "https://vgosti.by/files/galleries/1488/2993/src.jpg",
            "https://vgosti.by/files/galleries/1488/2994/src.jpg"
        ],
        "description": {
            "composition": [
                "Канадская пихта",
                "Анемон",
                "Маттиола",
                "Экзотика"
            ],
            "package": "Французский крафт ",
            "size": "высота более 40см ",
            "about_item": "Изысканный букет со стойкими цветами "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Воздушное безе",
        "item_link": "https://vgosti.by/bukety/vozdushnoe-beze.html",
        "cost_byn": "130.0",
        "photos": [
            "https://vgosti.by/files/items/381/icon.jpg",
            "https://vgosti.by/files/galleries/413/2041/src.jpg",
            "https://vgosti.by/files/galleries/413/2042/src.jpg",
            "https://vgosti.by/files/galleries/413/2043/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Зелень",
                "Ранункулюс",
                "Роза кустовая",
                "Суккуленты",
                "Фрезия",
                "Хризантема",
                "Эвкалипт"
            ],
            "package": "Корейская бумага ",
            "size": "от 35-45 см ",
            "about_item": "Букет с суккулентом в спокойных тонах "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Солнечные лучи",
        "item_link": "https://vgosti.by/bukety/solnechnye-luchi.html",
        "cost_byn": "149.0",
        "photos": [
            "https://vgosti.by/files/items/1057/icon.jpg",
            "https://vgosti.by/files/galleries/1632/3342/src.jpg",
            "https://vgosti.by/files/galleries/1632/3343/src.jpg",
            "https://vgosti.by/files/galleries/1632/3344/src.jpg",
            "https://vgosti.by/files/galleries/1632/3345/src.jpg",
            "https://vgosti.by/files/galleries/1632/3346/src.jpg",
            "https://vgosti.by/files/galleries/1632/3347/src.jpg",
            "https://vgosti.by/files/galleries/1632/3348/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Гвоздика",
                "Подсолнух",
                "Скимия",
                "Тюльпаны"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 40-45 см ",
            "about_item": "Яркий насыщенный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Вера",
        "item_link": "https://vgosti.by/cvety-v-korobke/vera.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/1186/icon.jpg",
            "https://vgosti.by/files/galleries/1843/4217/src.jpg",
            "https://vgosti.by/files/galleries/1843/4218/src.jpg",
            "https://vgosti.by/files/galleries/1843/4219/src.jpg",
            "https://vgosti.by/files/galleries/1843/4220/src.jpg",
            "https://vgosti.by/files/galleries/1843/4221/src.jpg",
            "https://vgosti.by/files/galleries/1843/4222/src.jpg",
            "https://vgosti.by/files/galleries/1843/4223/src.jpg",
            "https://vgosti.by/files/galleries/1843/4224/src.jpg",
            "https://vgosti.by/files/galleries/1843/4225/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Роза кустовая",
                "Хризантема"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 20 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Богиня",
        "item_link": "https://vgosti.by/bukety/boginya.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/144/icon.jpg",
            "https://vgosti.by/files/galleries/44/3323/src.jpg",
            "https://vgosti.by/files/galleries/44/3324/src.jpg",
            "https://vgosti.by/files/galleries/44/3325/src.jpg",
            "https://vgosti.by/files/galleries/44/3326/src.jpg"
        ],
        "description": {
            "composition": [
                "Ранункулюс",
                "Тюльпаны",
                "Эвкалипт"
            ],
            "package": "Корейская умная бумага ",
            "size": "от 40 см ",
            "about_item": "Великолепный букет прекрасно подходит для торжественного события "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Бургунд",
        "item_link": "https://vgosti.by/bukety/burgund.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/1520/icon.jpg",
            "https://vgosti.by/files/galleries/2451/5864/src.jpg",
            "https://vgosti.by/files/galleries/2451/5865/src.jpg",
            "https://vgosti.by/files/galleries/2451/5866/src.jpg",
            "https://vgosti.by/files/galleries/2451/5867/src.jpg",
            "https://vgosti.by/files/galleries/2451/5868/src.jpg",
            "https://vgosti.by/files/galleries/2451/5869/src.jpg"
        ],
        "description": {
            "composition": [
                "Каллы",
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая",
                "Сирень",
                "Хризантема",
                "Эустома"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35-40 см ",
            "about_item": "Ароматный букет насыщенных оттенков "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Океан солнца",
        "item_link": "https://vgosti.by/bukety/okean-solnca.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1462/icon.jpg",
            "https://vgosti.by/files/galleries/2361/5681/src.jpg",
            "https://vgosti.by/files/galleries/2361/5682/src.jpg",
            "https://vgosti.by/files/galleries/2361/5683/src.jpg",
            "https://vgosti.by/files/galleries/2361/5684/src.jpg",
            "https://vgosti.by/files/galleries/2361/5685/src.jpg",
            "https://vgosti.by/files/galleries/2361/5686/src.jpg"
        ],
        "description": {
            "composition": [
                "Ирис",
                "Фрезия",
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Ароматный букет из весенних цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Шанс",
        "item_link": "https://vgosti.by/bukety/shans.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1465/icon.jpg",
            "https://vgosti.by/files/galleries/2367/5700/src.jpg",
            "https://vgosti.by/files/galleries/2367/5701/src.jpg",
            "https://vgosti.by/files/galleries/2367/5702/src.jpg",
            "https://vgosti.by/files/galleries/2367/5703/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза садовая",
                "Эвкалипт"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Парфюмированный букет из садовой розы "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Японский клен",
        "item_link": "https://vgosti.by/bukety/yaponskij-klen.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/1437/icon.jpg",
            "https://vgosti.by/files/galleries/2311/5564/src.jpg",
            "https://vgosti.by/files/galleries/2311/5565/src.jpg",
            "https://vgosti.by/files/galleries/2311/5566/src.jpg",
            "https://vgosti.by/files/galleries/2311/5567/src.jpg",
            "https://vgosti.by/files/galleries/2311/5568/src.jpg",
            "https://vgosti.by/files/galleries/2311/5569/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Пистация",
                "Роза кустовая",
                "Роза пионовидная"
            ],
            "package": "Корейская бумага ",
            "size": "высота 30-35 см ",
            "about_item": "Яркий насыщенный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Свит",
        "item_link": "https://vgosti.by/cvety-v-korobke/svit.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/1197/icon.jpg",
            "https://vgosti.by/files/galleries/1863/4270/src.jpg",
            "https://vgosti.by/files/galleries/1863/4271/src.jpg",
            "https://vgosti.by/files/galleries/1863/4272/src.jpg",
            "https://vgosti.by/files/galleries/1863/4273/src.jpg",
            "https://vgosti.by/files/galleries/1863/4274/src.jpg",
            "https://vgosti.by/files/galleries/1863/4275/src.jpg",
            "https://vgosti.by/files/galleries/1863/4276/src.jpg",
            "https://vgosti.by/files/galleries/1863/4277/src.jpg",
            "https://vgosti.by/files/galleries/1863/4278/src.jpg",
            "https://vgosti.by/files/galleries/1863/4279/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "С рождением мальчика",
        "item_link": "https://vgosti.by/bukety/s-rozhdeniem-malchika.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/1412/icon.jpg",
            "https://vgosti.by/files/galleries/2267/5416/src.jpg",
            "https://vgosti.by/files/galleries/2267/5417/src.jpg",
            "https://vgosti.by/files/galleries/2267/5418/src.jpg",
            "https://vgosti.by/files/galleries/2267/5419/src.jpg",
            "https://vgosti.by/files/galleries/2267/5420/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Корейская бумага ",
            "size": "высота 35-45 см ",
            "about_item": "Букет с декоративной пустышкой "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Платина",
        "item_link": "https://vgosti.by/cvety-v-korobke/platina.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/826/icon.jpg",
            "https://vgosti.by/files/galleries/1220/2349/src.jpg",
            "https://vgosti.by/files/galleries/1220/2350/src.jpg",
            "https://vgosti.by/files/galleries/1220/2351/src.jpg",
            "https://vgosti.by/files/galleries/1220/2352/src.jpg",
            "https://vgosti.by/files/galleries/1220/2353/src.jpg",
            "https://vgosti.by/files/galleries/1220/2354/src.jpg",
            "https://vgosti.by/files/galleries/1220/2355/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Роза кустовая",
                "Роза пионовидная",
                "Статица",
                "Хризантема",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Коробка-сумочка с ручками ",
            "size": null,
            "about_item": "Небольшая коробочка насыщенная цветами "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Шоколад",
        "item_link": "https://vgosti.by/bukety/shokolad.html",
        "cost_byn": "255.0",
        "photos": [
            "https://vgosti.by/files/items/1464/icon.jpg",
            "https://vgosti.by/files/galleries/2365/5695/src.jpg",
            "https://vgosti.by/files/galleries/2365/5696/src.jpg",
            "https://vgosti.by/files/galleries/2365/5697/src.jpg",
            "https://vgosti.by/files/galleries/2365/5698/src.jpg",
            "https://vgosti.by/files/galleries/2365/5699/src.jpg"
        ],
        "description": {
            "composition": [
                "Орхидея",
                "Роза кустовая",
                "Роза пионовидная",
                "Фрезия",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 45 см ",
            "about_item": "Букет наполнен экзотическими цветами "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Цветочный десерт",
        "item_link": "https://vgosti.by/bukety/cvetochnyj-dessert.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/1786/icon.jpg",
            "https://vgosti.by/files/galleries/2936/6733/src.jpg",
            "https://vgosti.by/files/galleries/2936/6734/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Хризантема",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Корейская умная бумага ",
            "size": "Диаметр 20-27см ",
            "about_item": "Цветочный букет из стойких цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Кружка Глинтвейна",
        "item_link": "https://vgosti.by/cvety-v-korobke/kruzhka-glintvejna.html",
        "cost_byn": "42.0",
        "photos": [
            "https://vgosti.by/files/items/953/icon.jpg",
            "https://vgosti.by/files/galleries/1462/2950/src.jpg",
            "https://vgosti.by/files/galleries/1462/2951/src.jpg",
            "https://vgosti.by/files/galleries/1462/2952/src.jpg",
            "https://vgosti.by/files/galleries/1462/2953/src.jpg",
            "https://vgosti.by/files/galleries/1462/2954/src.jpg",
            "https://vgosti.by/files/galleries/1462/2955/src.jpg",
            "https://vgosti.by/files/galleries/1462/2956/src.jpg",
            "https://vgosti.by/files/galleries/1462/2957/src.jpg"
        ],
        "description": {
            "composition": [
                "Канадская пихта",
                "Лагурус",
                "Роза кустовая",
                "Роза пионовидная"
            ],
            "package": "Керамическая кружка ",
            "size": "высота 15-18 см ",
            "about_item": "Композиция из цветов с птичкой в кружке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Привкус тайны",
        "item_link": "https://vgosti.by/bukety/privkus-tajny.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/1466/icon.jpg",
            "https://vgosti.by/files/galleries/2369/5704/src.jpg",
            "https://vgosti.by/files/galleries/2369/5705/src.jpg",
            "https://vgosti.by/files/galleries/2369/5706/src.jpg",
            "https://vgosti.by/files/galleries/2369/5707/src.jpg",
            "https://vgosti.by/files/galleries/2369/5708/src.jpg"
        ],
        "description": {
            "composition": [
                "Ранункулюс",
                "Хамелациум",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 20-25 см ",
            "about_item": "Букет длительной стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Капелла",
        "item_link": "https://vgosti.by/bukety/kapella.html",
        "cost_byn": "132.0",
        "photos": [
            "https://vgosti.by/files/items/1163/icon.jpg",
            "https://vgosti.by/files/galleries/1797/4064/src.jpg",
            "https://vgosti.by/files/galleries/1797/4065/src.jpg",
            "https://vgosti.by/files/galleries/1797/4066/src.jpg",
            "https://vgosti.by/files/galleries/1797/4067/src.jpg",
            "https://vgosti.by/files/galleries/1797/4068/src.jpg",
            "https://vgosti.by/files/galleries/1797/4069/src.jpg",
            "https://vgosti.by/files/galleries/1797/4070/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Фрезия",
                "Хризантема",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 40 см ",
            "about_item": "Букет из экзотических цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Над уровнем неба",
        "item_link": "https://vgosti.by/bukety/nad-urovnem-neba.html",
        "cost_byn": "149.0",
        "photos": [
            "https://vgosti.by/files/items/775/icon.jpg",
            "https://vgosti.by/files/galleries/1130/2126/src.jpg",
            "https://vgosti.by/files/galleries/1130/2127/src.jpg",
            "https://vgosti.by/files/galleries/1130/2128/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Гвоздика",
                "Гиацинт",
                "Маттиола",
                "Роза",
                "Суккуленты",
                "Хамелациум"
            ],
            "package": "Французский двухсторонний крафт с корейской бумагой ",
            "size": "40-45 см ",
            "about_item": "Букет в нежных небесных тонах "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Полевой букет",
        "item_link": "https://vgosti.by/bukety/polevoj-buket.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1399/icon.jpg",
            "https://vgosti.by/files/galleries/2241/5345/src.jpg",
            "https://vgosti.by/files/galleries/2241/5346/src.jpg",
            "https://vgosti.by/files/galleries/2241/5347/src.jpg"
        ],
        "description": {
            "composition": [
                "Ромашки",
                "Скимия"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Летний полевой романтический букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Сакура",
        "item_link": "https://vgosti.by/bukety/sakura.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1468/icon.jpg",
            "https://vgosti.by/files/galleries/2373/5715/src.jpg",
            "https://vgosti.by/files/galleries/2373/5716/src.jpg",
            "https://vgosti.by/files/galleries/2373/5717/src.jpg",
            "https://vgosti.by/files/galleries/2373/5718/src.jpg",
            "https://vgosti.by/files/galleries/2373/5719/src.jpg",
            "https://vgosti.by/files/galleries/2373/5720/src.jpg"
        ],
        "description": {
            "composition": [
                "Оксипеталум",
                "Ранункулюс",
                "Хамелациум",
                "Хризантема"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 30 см ",
            "about_item": "Букет длительной стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Любовный сон",
        "item_link": "https://vgosti.by/bukety/lyubovnyj-son.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/1411/icon.jpg",
            "https://vgosti.by/files/galleries/2265/5410/src.jpg",
            "https://vgosti.by/files/galleries/2265/5411/src.jpg",
            "https://vgosti.by/files/galleries/2265/5412/src.jpg",
            "https://vgosti.by/files/galleries/2265/5413/src.jpg",
            "https://vgosti.by/files/galleries/2265/5414/src.jpg",
            "https://vgosti.by/files/galleries/2265/5415/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус"
            ],
            "package": "Умная корейская бумага ",
            "size": "высота 27-30 см ",
            "about_item": "Букет длительной стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Тюльпановый рай",
        "item_link": "https://vgosti.by/bukety/tyulpanovyj-raj.html",
        "cost_byn": "359.0",
        "photos": [
            "https://vgosti.by/files/items/1377/icon.jpg",
            "https://vgosti.by/files/galleries/2197/5228/src.jpg",
            "https://vgosti.by/files/galleries/2197/5229/src.jpg",
            "https://vgosti.by/files/galleries/2197/5230/src.jpg",
            "https://vgosti.by/files/galleries/2197/5231/src.jpg",
            "https://vgosti.by/files/galleries/2197/5232/src.jpg",
            "https://vgosti.by/files/galleries/2197/5233/src.jpg",
            "https://vgosti.by/files/galleries/2197/5234/src.jpg"
        ],
        "description": {
            "composition": [
                "Скимия",
                "Тюльпаны"
            ],
            "package": "Корейская умная бумага ",
            "size": "высота 35-45 см ",
            "about_item": "Микс из пионовидных и стандартных тюльпанов пр-во Голландия "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Джеральдин",
        "item_link": "https://vgosti.by/bukety/dzheraldin.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/733/icon.jpg",
            "https://vgosti.by/files/galleries/1062/1977/src.jpg",
            "https://vgosti.by/files/galleries/1062/1978/src.jpg",
            "https://vgosti.by/files/galleries/1062/1979/src.jpg",
            "https://vgosti.by/files/galleries/1062/1980/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Гиацинт",
                "Диантус",
                "Зелень",
                "Пистация",
                "Сирень",
                "Тюльпаны",
                "Хризантема",
                "Эвкалипт"
            ],
            "package": "Корейская бумага Фрост ",
            "size": "35 см ",
            "about_item": "Ароматный букет из весенних цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Атмосферность",
        "item_link": "https://vgosti.by/bukety/atmosfernost.html",
        "cost_byn": "455.0",
        "photos": [
            "https://vgosti.by/files/items/796/icon.jpg",
            "https://vgosti.by/files/galleries/1172/2178/src.jpg",
            "https://vgosti.by/files/galleries/1172/2179/src.jpg",
            "https://vgosti.by/files/galleries/1172/2180/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Зелень",
                "Орхидея",
                "Пион",
                "Протея",
                "Статица",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "Французский двухсторонний крафт с корейской бумагой ",
            "size": "100-150 см ",
            "about_item": "Букет огромного размера насыщен большим количеством экзотических цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Вавилон",
        "item_link": "https://vgosti.by/bukety/vavilon.html",
        "cost_byn": "119.0",
        "photos": [
            "https://vgosti.by/files/items/1257/icon.jpg",
            "https://vgosti.by/files/galleries/1969/4581/src.jpg",
            "https://vgosti.by/files/galleries/1969/4582/src.jpg",
            "https://vgosti.by/files/galleries/1969/4583/src.jpg",
            "https://vgosti.by/files/galleries/1969/4584/src.jpg",
            "https://vgosti.by/files/galleries/1969/4585/src.jpg",
            "https://vgosti.by/files/galleries/1969/4586/src.jpg",
            "https://vgosti.by/files/galleries/1969/4587/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Гвоздика",
                "Зелень",
                "Лагурус",
                "Орхидея",
                "Роза кустовая",
                "Роза пионовидная",
                "Скимия",
                "Хелеборус",
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "Диаметр 40-45 см ",
            "about_item": "Букет в античных оттенках "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Жемчужная россыпь",
        "item_link": "https://vgosti.by/bukety/zhemchuzhnaya-rossyp.html",
        "cost_byn": "165.0",
        "photos": [
            "https://vgosti.by/files/items/844/icon.jpg",
            "https://vgosti.by/files/galleries/1256/2461/src.jpg",
            "https://vgosti.by/files/galleries/1256/2462/src.jpg",
            "https://vgosti.by/files/galleries/1256/2463/src.jpg",
            "https://vgosti.by/files/galleries/1256/2464/src.jpg",
            "https://vgosti.by/files/galleries/1256/2465/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Оксипеталум",
                "Пион",
                "Протея",
                "Роза кустовая",
                "Роза пионовидная",
                "Эвкалипт"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 35-40 см ",
            "about_item": "Нежный букет из экзотических цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Перламутр",
        "item_link": "https://vgosti.by/bukety/perlamutr-1.html",
        "cost_byn": "165.0",
        "photos": [
            "https://vgosti.by/files/items/848/icon.jpg",
            "https://vgosti.by/files/galleries/1264/2480/src.jpg",
            "https://vgosti.by/files/galleries/1264/2481/src.jpg",
            "https://vgosti.by/files/galleries/1264/2482/src.jpg",
            "https://vgosti.by/files/galleries/1264/2483/src.jpg",
            "https://vgosti.by/files/galleries/1264/2484/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Маттиола",
                "Пистация",
                "Роза",
                "Роза кустовая",
                "Сирень",
                "Суккуленты",
                "Тласпи"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 35-40 см ",
            "about_item": "Букет из весенних цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Утренняя роса",
        "item_link": "https://vgosti.by/bukety/utrennyaya-rosa.html",
        "cost_byn": "105.0",
        "photos": [
            "https://vgosti.by/files/items/1375/icon.jpg",
            "https://vgosti.by/files/galleries/2193/5216/src.jpg",
            "https://vgosti.by/files/galleries/2193/5217/src.jpg",
            "https://vgosti.by/files/galleries/2193/5218/src.jpg",
            "https://vgosti.by/files/galleries/2193/5219/src.jpg",
            "https://vgosti.by/files/galleries/2193/5220/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Гиацинт",
                "Лагурус",
                "Тюльпаны",
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Ароматный букет из весенних цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Бидермейер",
        "item_link": "https://vgosti.by/bukety/bidermejer.html",
        "cost_byn": "595.0",
        "photos": [
            "https://vgosti.by/files/items/814/icon.jpg",
            "https://vgosti.by/files/galleries/1202/3272/src.jpg",
            "https://vgosti.by/files/galleries/1202/3273/src.jpg",
            "https://vgosti.by/files/galleries/1202/3274/src.jpg",
            "https://vgosti.by/files/galleries/1202/3275/src.jpg",
            "https://vgosti.by/files/galleries/1202/3276/src.jpg",
            "https://vgosti.by/files/galleries/1202/3277/src.jpg"
        ],
        "description": {
            "composition": [
                "Макаруны,",
                "Сладости",
                "Роза"
            ],
            "package": "Корейская умная бумага ",
            "size": "55-60 см ",
            "about_item": "Букет выполнен в стиле немецкого и австрийского искусства "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Леди",
        "item_link": "https://vgosti.by/cvety-v-korobke/ledi.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/827/icon.jpg",
            "https://vgosti.by/files/galleries/1222/2357/src.jpg",
            "https://vgosti.by/files/galleries/1222/2358/src.jpg",
            "https://vgosti.by/files/galleries/1222/2359/src.jpg",
            "https://vgosti.by/files/galleries/1222/2360/src.jpg",
            "https://vgosti.by/files/galleries/1222/2361/src.jpg",
            "https://vgosti.by/files/galleries/1222/2362/src.jpg",
            "https://vgosti.by/files/galleries/1222/2363/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Сирень",
                "Эвкалипт"
            ],
            "package": "Шляпная коробка с крышкой ",
            "size": "Высота 17 см, диаметр 15 см ",
            "about_item": "Элегантная шляпная коробочка "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Александрит",
        "item_link": "https://vgosti.by/bukety/aleksandrit.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/1173/icon.jpg",
            "https://vgosti.by/files/galleries/1817/4129/src.jpg",
            "https://vgosti.by/files/galleries/1817/4130/src.jpg",
            "https://vgosti.by/files/galleries/1817/4131/src.jpg",
            "https://vgosti.by/files/galleries/1817/4132/src.jpg",
            "https://vgosti.by/files/galleries/1817/4133/src.jpg",
            "https://vgosti.by/files/galleries/1817/4134/src.jpg",
            "https://vgosti.by/files/galleries/1817/4135/src.jpg",
            "https://vgosti.by/files/galleries/1817/4136/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Букет насыщенных оттенков "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Сказочный лес",
        "item_link": "https://vgosti.by/bukety/skazochnyj-les.html",
        "cost_byn": "175.0",
        "photos": [
            "https://vgosti.by/files/items/1264/icon.jpg",
            "https://vgosti.by/files/galleries/1983/4611/src.jpg",
            "https://vgosti.by/files/galleries/1983/4612/src.jpg",
            "https://vgosti.by/files/galleries/1983/4613/src.jpg",
            "https://vgosti.by/files/galleries/1983/4614/src.jpg",
            "https://vgosti.by/files/galleries/1983/4615/src.jpg"
        ],
        "description": {
            "composition": [
                "Экзотика"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 45-50 см ",
            "about_item": "Роскошный букет из королевской протеи высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Париж",
        "item_link": "https://vgosti.by/cvety-v-korobke/parizh-1.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/1080/icon.jpg",
            "https://vgosti.by/files/galleries/1678/3511/src.jpg",
            "https://vgosti.by/files/galleries/1678/3512/src.jpg",
            "https://vgosti.by/files/galleries/1678/3513/src.jpg",
            "https://vgosti.by/files/galleries/1678/3514/src.jpg",
            "https://vgosti.by/files/galleries/1678/3515/src.jpg",
            "https://vgosti.by/files/galleries/1678/3516/src.jpg",
            "https://vgosti.by/files/galleries/1678/3517/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Лагурус",
                "Орхидея",
                "Роза",
                "Роза кустовая",
                "Хамелациум"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 20-25 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Рождение девочки",
        "item_link": "https://vgosti.by/bukety/rozhdenie-devochki.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1376/icon.jpg",
            "https://vgosti.by/files/galleries/2195/5221/src.jpg",
            "https://vgosti.by/files/galleries/2195/5222/src.jpg",
            "https://vgosti.by/files/galleries/2195/5223/src.jpg",
            "https://vgosti.by/files/galleries/2195/5224/src.jpg",
            "https://vgosti.by/files/galleries/2195/5225/src.jpg",
            "https://vgosti.by/files/galleries/2195/5226/src.jpg",
            "https://vgosti.by/files/galleries/2195/5227/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35-45 см ",
            "about_item": "Букет на рождение девочки с декоративной бутылочкой "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Сливочный кофе",
        "item_link": "https://vgosti.by/bukety/slivochnyj-kofe.html",
        "cost_byn": "127.0",
        "photos": [
            "https://vgosti.by/files/items/1247/icon.jpg",
            "https://vgosti.by/files/galleries/1949/4537/src.jpg",
            "https://vgosti.by/files/galleries/1949/4538/src.jpg",
            "https://vgosti.by/files/galleries/1949/4539/src.jpg",
            "https://vgosti.by/files/galleries/1949/4540/src.jpg",
            "https://vgosti.by/files/galleries/1949/4541/src.jpg",
            "https://vgosti.by/files/galleries/1949/4542/src.jpg",
            "https://vgosti.by/files/galleries/1949/4543/src.jpg",
            "https://vgosti.by/files/galleries/1949/4551/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Зелень",
                "Пистация",
                "Хризантема",
                "Экзотика"
            ],
            "package": "Умная корейская бумага ",
            "size": "высота 35-45 см ",
            "about_item": "Букет из экзотических цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Куршавель",
        "item_link": "https://vgosti.by/bukety/kurshavel.html",
        "cost_byn": "495.0",
        "photos": [
            "https://vgosti.by/files/items/1262/icon.jpg",
            "https://vgosti.by/files/galleries/1979/4602/src.jpg",
            "https://vgosti.by/files/galleries/1979/4603/src.jpg",
            "https://vgosti.by/files/galleries/1979/4604/src.jpg",
            "https://vgosti.by/files/galleries/1979/4605/src.jpg",
            "https://vgosti.by/files/galleries/1979/4606/src.jpg",
            "https://vgosti.by/files/galleries/1979/4607/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Роза французская",
                "Роза пионовидная",
                "Роза садовая",
                "Тюльпаны",
                "Хризантема",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "без упаковки ",
            "size": "Диаметр более 60 см ",
            "about_item": "Роскошный букет насыщен экзотическими цветами большого размера "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Секрет радости",
        "item_link": "https://vgosti.by/bukety/sekret-radosti.html",
        "cost_byn": "175.0",
        "photos": [
            "https://vgosti.by/files/items/777/icon.jpg",
            "https://vgosti.by/files/galleries/1134/2129/src.jpg",
            "https://vgosti.by/files/galleries/1134/2130/src.jpg",
            "https://vgosti.by/files/galleries/1134/2131/src.jpg",
            "https://vgosti.by/files/galleries/1134/2132/src.jpg",
            "https://vgosti.by/files/galleries/1134/2133/src.jpg",
            "https://vgosti.by/files/galleries/1134/2134/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Зелень",
                "Подсолнух",
                "Хамелациум",
                "Хризантема"
            ],
            "package": "Французский двухсторонний крафт ",
            "size": "50-55 см ",
            "about_item": "Жизнерадостный букет с подсолнухами "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Свежий бриз",
        "item_link": "https://vgosti.by/bukety/svezhij-briz.html",
        "cost_byn": "142.0",
        "photos": [
            "https://vgosti.by/files/items/1410/icon.jpg",
            "https://vgosti.by/files/galleries/2263/5403/src.jpg",
            "https://vgosti.by/files/galleries/2263/5404/src.jpg",
            "https://vgosti.by/files/galleries/2263/5405/src.jpg",
            "https://vgosti.by/files/galleries/2263/5406/src.jpg",
            "https://vgosti.by/files/galleries/2263/5407/src.jpg",
            "https://vgosti.by/files/galleries/2263/5408/src.jpg",
            "https://vgosti.by/files/galleries/2263/5409/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Корейская бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Букет длительной стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Куркума",
        "item_link": "https://vgosti.by/bukety/kurkuma.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/1161/icon.jpg",
            "https://vgosti.by/files/galleries/1793/4049/src.jpg",
            "https://vgosti.by/files/galleries/1793/4050/src.jpg",
            "https://vgosti.by/files/galleries/1793/4051/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Куркума",
                "Протея",
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Букет наполнен экзотическими цветами "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Фиалковый",
        "item_link": "https://vgosti.by/bukety/fialkovyj.html",
        "cost_byn": "230.0",
        "photos": [
            "https://vgosti.by/files/items/405/icon.jpg",
            "https://vgosti.by/files/galleries/457/3567/src.jpg",
            "https://vgosti.by/files/galleries/457/3568/src.jpg",
            "https://vgosti.by/files/galleries/457/3569/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Астильба",
                "Гортензия",
                "Диантус",
                "Трахелиум",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Корейская умная бумага ",
            "size": "40-45 см ",
            "about_item": "Яркий насыщенный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Апельсин",
        "item_link": "https://vgosti.by/bukety/apelsin.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/1350/icon.jpg",
            "https://vgosti.by/files/galleries/2147/5022/src.jpg",
            "https://vgosti.by/files/galleries/2147/5023/src.jpg",
            "https://vgosti.by/files/galleries/2147/5024/src.jpg",
            "https://vgosti.by/files/galleries/2147/5025/src.jpg",
            "https://vgosti.by/files/galleries/2147/5026/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза пионовидная",
                "Экзотика"
            ],
            "package": "Корейская бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Зимний букет из пихты и цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Шардоне",
        "item_link": "https://vgosti.by/bukety/shardone.html",
        "cost_byn": "109.0",
        "photos": [
            "https://vgosti.by/files/items/1261/icon.jpg",
            "https://vgosti.by/files/galleries/1977/4598/src.jpg",
            "https://vgosti.by/files/galleries/1977/4599/src.jpg",
            "https://vgosti.by/files/galleries/1977/4600/src.jpg",
            "https://vgosti.by/files/galleries/1977/4601/src.jpg"
        ],
        "description": {
            "composition": [
                "Орхидея",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Хризантема"
            ],
            "package": "Корейская умная бумага ",
            "size": "высота 35-45 см ",
            "about_item": "Яркий насыщенный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Николь",
        "item_link": "https://vgosti.by/bukety/nikol.html",
        "cost_byn": "175.0",
        "photos": [
            "https://vgosti.by/files/items/1183/icon.jpg",
            "https://vgosti.by/files/galleries/1837/4196/src.jpg",
            "https://vgosti.by/files/galleries/1837/4197/src.jpg",
            "https://vgosti.by/files/galleries/1837/4198/src.jpg",
            "https://vgosti.by/files/galleries/1837/4199/src.jpg",
            "https://vgosti.by/files/galleries/1837/4200/src.jpg",
            "https://vgosti.by/files/galleries/1837/4201/src.jpg",
            "https://vgosti.by/files/galleries/1837/4202/src.jpg"
        ],
        "description": {
            "composition": [
                "Амариллис",
                "Гортензия",
                "Пистация",
                "Роза пионовидная",
                "Роза садовая",
                "Хамелациум",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Корейская умная бумага ",
            "size": "высота более 45 см ",
            "about_item": "Роскошный букет из экзотических цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Амели",
        "item_link": "https://vgosti.by/bukety/ameli.html",
        "cost_byn": "179.0",
        "photos": [
            "https://vgosti.by/files/items/1463/icon.jpg",
            "https://vgosti.by/files/galleries/2363/5687/src.jpg",
            "https://vgosti.by/files/galleries/2363/5688/src.jpg",
            "https://vgosti.by/files/galleries/2363/5689/src.jpg",
            "https://vgosti.by/files/galleries/2363/5690/src.jpg",
            "https://vgosti.by/files/galleries/2363/5691/src.jpg",
            "https://vgosti.by/files/galleries/2363/5692/src.jpg",
            "https://vgosti.by/files/galleries/2363/5693/src.jpg",
            "https://vgosti.by/files/galleries/2363/5694/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Озотамнус",
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая",
                "Фрезия",
                "Хамелациум",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 40-45см ",
            "about_item": "Букет насыщен экзотическими цветами "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Крем-брюле",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/krem-bryule-1.html",
        "cost_byn": "18.0",
        "photos": [
            "https://vgosti.by/files/items/1270/icon.jpg",
            "https://vgosti.by/files/galleries/1995/4635/src.jpg",
            "https://vgosti.by/files/galleries/1995/4636/src.jpg",
            "https://vgosti.by/files/galleries/1995/4637/src.jpg",
            "https://vgosti.by/files/galleries/1995/4638/src.jpg",
            "https://vgosti.by/files/galleries/1995/4639/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Рожок ",
            "size": "Высота 15 см ",
            "about_item": "Букет-комплимент из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Загадка",
        "item_link": "https://vgosti.by/bukety/zagadka.html",
        "cost_byn": "97.0",
        "photos": [
            "https://vgosti.by/files/items/1199/icon.jpg",
            "https://vgosti.by/files/galleries/1867/4284/src.jpg",
            "https://vgosti.by/files/galleries/1867/4285/src.jpg",
            "https://vgosti.by/files/galleries/1867/4286/src.jpg",
            "https://vgosti.by/files/galleries/1867/4287/src.jpg",
            "https://vgosti.by/files/galleries/1867/4288/src.jpg",
            "https://vgosti.by/files/galleries/1867/4289/src.jpg"
        ],
        "description": {
            "composition": [
                "Бувардия"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Букет из разноцветных гербер "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Яркие краски",
        "item_link": "https://vgosti.by/bukety/yarkie-kraski.html",
        "cost_byn": "175.0",
        "photos": [
            "https://vgosti.by/files/items/1056/icon.jpg",
            "https://vgosti.by/files/galleries/1630/3337/src.jpg",
            "https://vgosti.by/files/galleries/1630/3338/src.jpg",
            "https://vgosti.by/files/galleries/1630/3339/src.jpg",
            "https://vgosti.by/files/galleries/1630/3340/src.jpg",
            "https://vgosti.by/files/galleries/1630/3341/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Анемон",
                "Гортензия",
                "Гвоздика",
                "Маттиола",
                "Роза"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 40-45 см ",
            "about_item": "Яркий стильный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Композиция Волшебство",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/kompoziciya-volshebstvo.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/1313/icon.jpg",
            "https://vgosti.by/files/galleries/2075/4860/src.jpg",
            "https://vgosti.by/files/galleries/2075/4861/src.jpg",
            "https://vgosti.by/files/galleries/2075/4862/src.jpg",
            "https://vgosti.by/files/galleries/2075/4864/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Коробка ",
            "size": "Диаметр 30 см ",
            "about_item": "Роскошная композиция с разнообразными свечами "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Милкшейк XL",
        "item_link": "https://vgosti.by/bukety/milkshejk.html",
        "cost_byn": "87.0",
        "photos": [
            "https://vgosti.by/files/items/1452/icon.jpg",
            "https://vgosti.by/files/galleries/2341/5640/src.jpg",
            "https://vgosti.by/files/galleries/2341/5641/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны",
                "Хамелациум",
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "высота 35-40 см ",
            "about_item": "Весенний тюльпан с добавлением экзотики "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Крем",
        "item_link": "https://vgosti.by/bukety/krem.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/936/icon.jpg",
            "https://vgosti.by/files/galleries/1428/2866/src.jpg",
            "https://vgosti.by/files/galleries/1428/2867/src.jpg",
            "https://vgosti.by/files/galleries/1428/2868/src.jpg",
            "https://vgosti.by/files/galleries/1428/2869/src.jpg",
            "https://vgosti.by/files/galleries/1428/2870/src.jpg",
            "https://vgosti.by/files/galleries/1428/2871/src.jpg",
            "https://vgosti.by/files/galleries/1428/2872/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Озотамнус",
                "Протея",
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая",
                "Эвкалипт"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 45 см ",
            "about_item": "Букет с королевской протеей "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Персиковое кружево",
        "item_link": "https://vgosti.by/bukety/persikovoe-kruzhevo.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/922/icon.jpg",
            "https://vgosti.by/files/galleries/1400/2811/src.jpg",
            "https://vgosti.by/files/galleries/1400/2812/src.jpg",
            "https://vgosti.by/files/galleries/1400/2813/src.jpg",
            "https://vgosti.by/files/galleries/1400/2814/src.jpg"
        ],
        "description": {
            "composition": [
                "Амариллис",
                "Гвоздика",
                "Диантус",
                "Зелень",
                "Нарине",
                "Озотамнус",
                "Пистация",
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая",
                "Хамелациум",
                "Эустома"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 40-45см ",
            "about_item": "Букет необычных оттенков с экзотическими цветами "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Эльза",
        "item_link": "https://vgosti.by/bukety/elza.html",
        "cost_byn": "127.0",
        "photos": [
            "https://vgosti.by/files/items/1131/icon.jpg",
            "https://vgosti.by/files/galleries/1751/4004/src.jpg",
            "https://vgosti.by/files/galleries/1751/4005/src.jpg",
            "https://vgosti.by/files/galleries/1751/4006/src.jpg",
            "https://vgosti.by/files/galleries/1751/4007/src.jpg",
            "https://vgosti.by/files/galleries/1751/4008/src.jpg",
            "https://vgosti.by/files/galleries/1751/4009/src.jpg",
            "https://vgosti.by/files/galleries/1751/4010/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Пион",
                "Фрезия"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Яркий сочный букет с легким ароматов цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Гранатовое сердце",
        "item_link": "https://vgosti.by/cvety-v-korobke/granatovoe-serdce.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/950/icon.jpg",
            "https://vgosti.by/files/galleries/1456/2928/src.jpg",
            "https://vgosti.by/files/galleries/1456/2929/src.jpg",
            "https://vgosti.by/files/galleries/1456/2930/src.jpg",
            "https://vgosti.by/files/galleries/1456/2931/src.jpg",
            "https://vgosti.by/files/galleries/1456/2932/src.jpg",
            "https://vgosti.by/files/galleries/1456/2933/src.jpg",
            "https://vgosti.by/files/galleries/1456/2934/src.jpg",
            "https://vgosti.by/files/galleries/1456/2935/src.jpg",
            "https://vgosti.by/files/galleries/1456/2936/src.jpg",
            "https://vgosti.by/files/galleries/1456/2937/src.jpg",
            "https://vgosti.by/files/galleries/1456/2938/src.jpg",
            "https://vgosti.by/files/galleries/1456/2939/src.jpg",
            "https://vgosti.by/files/galleries/1456/2940/src.jpg",
            "https://vgosti.by/files/galleries/1456/2941/src.jpg",
            "https://vgosti.by/files/galleries/1456/2942/src.jpg",
            "https://vgosti.by/files/galleries/1456/2943/src.jpg",
            "https://vgosti.by/files/galleries/1456/2944/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Роза пионовидная",
                "Эвкалипт"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 30-35 см ",
            "about_item": "Яркая сочная композиция с натуральным вкусным гранатом "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Малиновое сорбе",
        "item_link": "https://vgosti.by/bukety/malinovoe-sorbe.html",
        "cost_byn": "128.0",
        "photos": [
            "https://vgosti.by/files/items/350/icon.jpg",
            "https://vgosti.by/files/galleries/373/2049/src.jpg",
            "https://vgosti.by/files/galleries/373/2050/src.jpg",
            "https://vgosti.by/files/galleries/373/2051/src.jpg",
            "https://vgosti.by/files/galleries/373/2052/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Диантус",
                "Пистация",
                "Ранункулюс",
                "Скимия",
                "Эвкалипт"
            ],
            "package": "Ленты ",
            "size": "от 40-45 см ",
            "about_item": "Роскошная гортензия с букете очарует и заворожит "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Матильда",
        "item_link": "https://vgosti.by/bukety/matilda.html",
        "cost_byn": "175.0",
        "photos": [
            "https://vgosti.by/files/items/1069/icon.jpg",
            "https://vgosti.by/files/galleries/1656/3408/src.jpg",
            "https://vgosti.by/files/galleries/1656/3409/src.jpg",
            "https://vgosti.by/files/galleries/1656/3410/src.jpg",
            "https://vgosti.by/files/galleries/1656/3411/src.jpg",
            "https://vgosti.by/files/galleries/1656/3412/src.jpg",
            "https://vgosti.by/files/galleries/1656/3413/src.jpg"
        ],
        "description": {
            "composition": [
                "Гербера",
                "Ранункулюс",
                "Роза кустовая",
                "Сирень",
                "Хиперикум",
                "Хелеборус",
                "Эустома"
            ],
            "package": "Корейская бумага ",
            "size": "диаметр 45-50 см ",
            "about_item": "Букет из весенних цветов с легким ароматом сирени "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Сидней",
        "item_link": "https://vgosti.by/bukety/sidnej.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/1130/icon.jpg",
            "https://vgosti.by/files/galleries/1749/3999/src.jpg",
            "https://vgosti.by/files/galleries/1749/4000/src.jpg",
            "https://vgosti.by/files/galleries/1749/4001/src.jpg",
            "https://vgosti.by/files/galleries/1749/4002/src.jpg",
            "https://vgosti.by/files/galleries/1749/4003/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Гвоздика",
                "Маттиола",
                "Пион",
                "Эустома"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Летний букет с легким ароматом пиона "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Калифорния",
        "item_link": "https://vgosti.by/bukety/kaliforniya.html",
        "cost_byn": "375.0",
        "photos": [
            "https://vgosti.by/files/items/498/icon.jpg",
            "https://vgosti.by/files/galleries/633/3558/src.jpg",
            "https://vgosti.by/files/galleries/633/3559/src.jpg",
            "https://vgosti.by/files/galleries/633/3560/src.jpg",
            "https://vgosti.by/files/galleries/633/3561/src.jpg"
        ],
        "description": {
            "composition": [
                "Астильба",
                "Диантус",
                "Мускари",
                "Пион",
                "Хамелациум",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Ленты ",
            "size": "40-50 см ",
            "about_item": "Большой букет без упаковки в европейском стиле "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Санни",
        "item_link": "https://vgosti.by/bukety/sanni.html",
        "cost_byn": "87.0",
        "photos": [
            "https://vgosti.by/files/items/1132/icon.jpg",
            "https://vgosti.by/files/galleries/1753/4011/src.jpg",
            "https://vgosti.by/files/galleries/1753/4012/src.jpg",
            "https://vgosti.by/files/galleries/1753/4013/src.jpg",
            "https://vgosti.by/files/galleries/1753/4014/src.jpg",
            "https://vgosti.by/files/galleries/1753/4015/src.jpg",
            "https://vgosti.by/files/galleries/1753/4016/src.jpg",
            "https://vgosti.by/files/galleries/1753/4017/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Зелень",
                "Нигелла",
                "Оксипеталум",
                "Подсолнух",
                "Фрезия"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 40 см ",
            "about_item": "Летний букет с подсолнухом "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Гренаш",
        "item_link": "https://vgosti.by/bukety/grenash.html",
        "cost_byn": "159.0",
        "photos": [
            "https://vgosti.by/files/items/882/icon.jpg",
            "https://vgosti.by/files/galleries/1324/2620/src.jpg",
            "https://vgosti.by/files/galleries/1324/2621/src.jpg",
            "https://vgosti.by/files/galleries/1324/2622/src.jpg",
            "https://vgosti.by/files/galleries/1324/2623/src.jpg",
            "https://vgosti.by/files/galleries/1324/2624/src.jpg",
            "https://vgosti.by/files/galleries/1324/2625/src.jpg",
            "https://vgosti.by/files/galleries/1324/2626/src.jpg",
            "https://vgosti.by/files/galleries/1324/2627/src.jpg",
            "https://vgosti.by/files/galleries/1324/2628/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая",
                "Скимия"
            ],
            "package": "Французский крафт ",
            "size": "Диаметр 40-45 см ",
            "about_item": "Стильный букет насыщенных оттенков "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Винный",
        "item_link": "https://vgosti.by/bukety/vinnyj.html",
        "cost_byn": "90.0",
        "photos": [
            "https://vgosti.by/files/items/861/icon.jpg",
            "https://vgosti.by/files/galleries/1290/2546/src.jpg",
            "https://vgosti.by/files/galleries/1290/2547/src.jpg",
            "https://vgosti.by/files/galleries/1290/2548/src.jpg",
            "https://vgosti.by/files/galleries/1290/2549/src.jpg",
            "https://vgosti.by/files/galleries/1290/2550/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Георгина",
                "Питоспорум",
                "Роза",
                "Скимия"
            ],
            "package": "Французский крафт ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Яркий насыщенный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Амор",
        "item_link": "https://vgosti.by/bukety/amor.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/737/icon.jpg",
            "https://vgosti.by/files/galleries/1068/1985/src.jpg",
            "https://vgosti.by/files/galleries/1068/1986/src.jpg"
        ],
        "description": {
            "composition": [
                "Амариллис",
                "Диантус",
                "Роза кустовая",
                "Хиперикум",
                "Хлопок",
                "Эвкалипт"
            ],
            "package": "Французский крафт ",
            "size": "40 см ",
            "about_item": "Коралловый букет отличается своей стойкостью "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Возрождение",
        "item_link": "https://vgosti.by/bukety/vozrozhdenie.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/860/icon.jpg",
            "https://vgosti.by/files/galleries/1288/2539/src.jpg",
            "https://vgosti.by/files/galleries/1288/2540/src.jpg",
            "https://vgosti.by/files/galleries/1288/2541/src.jpg",
            "https://vgosti.by/files/galleries/1288/2542/src.jpg",
            "https://vgosti.by/files/galleries/1288/2543/src.jpg",
            "https://vgosti.by/files/galleries/1288/2544/src.jpg",
            "https://vgosti.by/files/galleries/1288/2545/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Зелень",
                "Нигелла",
                "Пистация",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Суккуленты",
                "Тласпи",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Ленты ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Европейский букет круглой формы "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Романтика",
        "item_link": "https://vgosti.by/bukety/romantika.html",
        "cost_byn": "149.0",
        "photos": [
            "https://vgosti.by/files/items/994/icon.jpg",
            "https://vgosti.by/files/galleries/1526/3078/src.jpg",
            "https://vgosti.by/files/galleries/1526/3079/src.jpg",
            "https://vgosti.by/files/galleries/1526/3080/src.jpg",
            "https://vgosti.by/files/galleries/1526/3081/src.jpg",
            "https://vgosti.by/files/galleries/1526/3082/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза кустовая",
                "Суккуленты",
                "Хиперикум",
                "Эустома"
            ],
            "package": "Без упаковки ",
            "size": "30 см ",
            "about_item": "Букет в европейском стиле "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Аватар",
        "item_link": "https://vgosti.by/bukety/avatar.html",
        "cost_byn": "87.0",
        "photos": [
            "https://vgosti.by/files/items/489/icon.jpg",
            "https://vgosti.by/files/galleries/615/1436/src.jpg",
            "https://vgosti.by/files/galleries/615/1437/src.jpg",
            "https://vgosti.by/files/galleries/615/1438/src.jpg",
            "https://vgosti.by/files/galleries/615/1439/src.jpg",
            "https://vgosti.by/files/galleries/615/1435/src.jpg"
        ],
        "description": {
            "composition": [
                "Аспидистра",
                "Гортензия",
                "Диантус",
                "Роза",
                "Трахелиум",
                "Хризантема"
            ],
            "package": "Двухсторонний крафт с тишью ",
            "size": "35-45 см ",
            "about_item": "Букет в небесных оттенках красив и роскошен "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Фуксия",
        "item_link": "https://vgosti.by/bukety/fuksiya.html",
        "cost_byn": "285.0",
        "photos": [
            "https://vgosti.by/files/items/584/icon.jpg",
            "https://vgosti.by/files/galleries/801/3536/src.jpg",
            "https://vgosti.by/files/galleries/801/3537/src.jpg",
            "https://vgosti.by/files/galleries/801/3538/src.jpg",
            "https://vgosti.by/files/galleries/801/3539/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Диантус",
                "Пистация",
                "Роза",
                "Роза кустовая",
                "Скимия",
                "Хамелациум",
                "Эвкалипт",
                "Ягоды"
            ],
            "package": "Ленты ",
            "size": "40-45 см ",
            "about_item": "Букет насыщенного цвета в европейском стиле "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Снежный вальс",
        "item_link": "https://vgosti.by/bukety/snezhnyj-vals.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/925/icon.jpg",
            "https://vgosti.by/files/galleries/1406/2824/src.jpg",
            "https://vgosti.by/files/galleries/1406/2825/src.jpg",
            "https://vgosti.by/files/galleries/1406/2826/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Канадская пихта",
                "Гвоздика",
                "Лаванда",
                "Роза садовая",
                "Хлопок"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 35 см ",
            "about_item": "Букет отличается высокой стойкостью и легким ароматом "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Селебрити",
        "item_link": "https://vgosti.by/bukety/selebriti.html",
        "cost_byn": "159.0",
        "photos": [
            "https://vgosti.by/files/items/1133/icon.jpg",
            "https://vgosti.by/files/galleries/1755/4018/src.jpg",
            "https://vgosti.by/files/galleries/1755/4019/src.jpg",
            "https://vgosti.by/files/galleries/1755/4020/src.jpg",
            "https://vgosti.by/files/galleries/1755/4021/src.jpg",
            "https://vgosti.by/files/galleries/1755/4022/src.jpg",
            "https://vgosti.by/files/galleries/1755/4023/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Гвоздика",
                "Зелень",
                "Нигелла",
                "Пион",
                "Пистация"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 45-50 см ",
            "about_item": "Красивый объемный букет из летних цветов с легким ароматом "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Виола",
        "item_link": "https://vgosti.by/bukety/viola.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/843/icon.jpg",
            "https://vgosti.by/files/galleries/1254/2454/src.jpg",
            "https://vgosti.by/files/galleries/1254/2455/src.jpg",
            "https://vgosti.by/files/galleries/1254/2456/src.jpg",
            "https://vgosti.by/files/galleries/1254/2457/src.jpg",
            "https://vgosti.by/files/galleries/1254/2458/src.jpg",
            "https://vgosti.by/files/galleries/1254/2459/src.jpg",
            "https://vgosti.by/files/galleries/1254/2460/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Зелень",
                "Лагурус",
                "Роза",
                "Сирень",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Флористический каркас ручной работы ",
            "size": "Диаметр 35-40 см ",
            "about_item": "Стильный европейский букет из весенних цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Летний домик",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/letnij-domik.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1535/icon.jpg",
            "https://vgosti.by/files/galleries/2481/5948/src.jpg",
            "https://vgosti.by/files/galleries/2481/5949/src.jpg",
            "https://vgosti.by/files/galleries/2481/5950/src.jpg",
            "https://vgosti.by/files/galleries/2481/5951/src.jpg",
            "https://vgosti.by/files/galleries/2481/5952/src.jpg",
            "https://vgosti.by/files/galleries/2481/5953/src.jpg",
            "https://vgosti.by/files/galleries/2481/5954/src.jpg",
            "https://vgosti.by/files/galleries/2481/5955/src.jpg",
            "https://vgosti.by/files/galleries/2481/5956/src.jpg",
            "https://vgosti.by/files/galleries/2481/5957/src.jpg",
            "https://vgosti.by/files/galleries/2481/5958/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Кашпо из натурального дерева в форме домика ",
            "size": "25*15*25 ",
            "about_item": "Композиция из сухоцветов и одуванчиков "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Момент",
        "item_link": "https://vgosti.by/bukety/moment.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/862/icon.jpg",
            "https://vgosti.by/files/galleries/1292/2551/src.jpg",
            "https://vgosti.by/files/galleries/1292/2552/src.jpg",
            "https://vgosti.by/files/galleries/1292/2553/src.jpg",
            "https://vgosti.by/files/galleries/1292/2554/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Гортензия",
                "Гвоздика",
                "Клематис",
                "Маттиола",
                "Питоспорум",
                "Роза",
                "Эустома"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Яркий насыщенный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Италия",
        "item_link": "https://vgosti.by/bukety/italiya.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1059/icon.jpg",
            "https://vgosti.by/files/galleries/1636/3355/src.jpg",
            "https://vgosti.by/files/galleries/1636/3356/src.jpg",
            "https://vgosti.by/files/galleries/1636/3357/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Лагурус",
                "Роза кустовая",
                "Роза пионовидная"
            ],
            "package": "Корейская бумага ",
            "size": "высота 35-45 см ",
            "about_item": "Букет в ярких оттенках "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Изысканность",
        "item_link": "https://vgosti.by/bukety/izyskannost.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/476/icon.jpg",
            "https://vgosti.by/files/galleries/599/3292/src.jpg",
            "https://vgosti.by/files/galleries/599/3293/src.jpg",
            "https://vgosti.by/files/galleries/599/3294/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Анемон",
                "Роза кустовая",
                "Роза пионовидная",
                "Эустома"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 30 см ",
            "about_item": "Букет из стойких цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Зеркало души",
        "item_link": "https://vgosti.by/bukety/zerkalo-dushi.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/948/icon.jpg",
            "https://vgosti.by/files/galleries/1452/2917/src.jpg",
            "https://vgosti.by/files/galleries/1452/2918/src.jpg",
            "https://vgosti.by/files/galleries/1452/2919/src.jpg",
            "https://vgosti.by/files/galleries/1452/2920/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Озотамнус",
                "Роза",
                "Роза кустовая",
                "Эустома"
            ],
            "package": "Корейская бумага и нано-пленка ",
            "size": "диаметр 35 см ",
            "about_item": "Букет насыщен цветами и оформлен нано упаковкой "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Кружка сухоцветов",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/kruzhka-suhocvetov.html",
        "cost_byn": "61.0",
        "photos": [
            "https://vgosti.by/files/items/1530/icon.jpg",
            "https://vgosti.by/files/galleries/2471/5924/src.jpg",
            "https://vgosti.by/files/galleries/2471/5925/src.jpg",
            "https://vgosti.by/files/galleries/2471/5926/src.jpg",
            "https://vgosti.by/files/galleries/2471/5927/src.jpg",
            "https://vgosti.by/files/galleries/2471/5928/src.jpg",
            "https://vgosti.by/files/galleries/2471/5929/src.jpg",
            "https://vgosti.by/files/galleries/2471/5930/src.jpg",
            "https://vgosti.by/files/galleries/2471/5931/src.jpg",
            "https://vgosti.by/files/galleries/2471/5932/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Керамическая кружка ",
            "size": "высота 20-25 см ",
            "about_item": "Стильная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Солнечное утро",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/solnechnoe-utro.html",
        "cost_byn": "149.0",
        "photos": [
            "https://vgosti.by/files/items/1778/icon.jpg",
            "https://vgosti.by/files/galleries/2920/6709/src.jpg",
            "https://vgosti.by/files/galleries/2920/6710/src.jpg",
            "https://vgosti.by/files/galleries/2920/6711/src.jpg",
            "https://vgosti.by/files/galleries/2920/6712/src.jpg",
            "https://vgosti.by/files/galleries/2920/6713/src.jpg",
            "https://vgosti.by/files/galleries/2920/6714/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "Диаметр 22 см, высота 26 см ",
            "about_item": "Композиция из стабилизированных цветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Ниагара",
        "item_link": "https://vgosti.by/bukety/niagara.html",
        "cost_byn": "138.0",
        "photos": [
            "https://vgosti.by/files/items/562/icon.jpg",
            "https://vgosti.by/files/galleries/757/1620/src.jpg",
            "https://vgosti.by/files/galleries/757/1621/src.jpg",
            "https://vgosti.by/files/galleries/757/1622/src.jpg",
            "https://vgosti.by/files/galleries/757/2308/src.jpg"
        ],
        "description": {
            "composition": [
                "Астильба",
                "Бувардия",
                "Гортензия",
                "Пион",
                "Питоспорум",
                "Ранункулюс",
                "Роза кустовая",
                "Тюльпаны",
                "Эвкалипт"
            ],
            "package": "Французский крафт ",
            "size": "35-45 см ",
            "about_item": "Весенний букет для особого повода "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Джулия",
        "item_link": "https://vgosti.by/bukety/dzhuliya.html",
        "cost_byn": "159.0",
        "photos": [
            "https://vgosti.by/files/items/1135/icon.jpg",
            "https://vgosti.by/files/galleries/1759/4027/src.jpg",
            "https://vgosti.by/files/galleries/1759/4028/src.jpg",
            "https://vgosti.by/files/galleries/1759/4029/src.jpg",
            "https://vgosti.by/files/galleries/1759/4030/src.jpg",
            "https://vgosti.by/files/galleries/1759/4031/src.jpg",
            "https://vgosti.by/files/galleries/1759/4032/src.jpg",
            "https://vgosti.by/files/galleries/1759/4033/src.jpg",
            "https://vgosti.by/files/galleries/1759/4034/src.jpg",
            "https://vgosti.by/files/galleries/1759/4035/src.jpg",
            "https://vgosti.by/files/galleries/1759/4036/src.jpg"
        ],
        "description": {
            "composition": [
                "Маттиола",
                "Пион",
                "Роза пионовидная",
                "Фрезия",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Ленты ",
            "size": "диаметр 35-40 см ",
            "about_item": "Букет в европейском стиле без упаковки "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Белоснежные анемоны",
        "item_link": "https://vgosti.by/bukety/belosnezhnye-anemony.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/458/icon.jpg",
            "https://vgosti.by/files/galleries/563/3300/src.jpg",
            "https://vgosti.by/files/galleries/563/3301/src.jpg",
            "https://vgosti.by/files/galleries/563/3302/src.jpg",
            "https://vgosti.by/files/galleries/563/3303/src.jpg",
            "https://vgosti.by/files/galleries/563/3304/src.jpg",
            "https://vgosti.by/files/galleries/563/3305/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон"
            ],
            "package": "Корейская бумага ",
            "size": "диаметр 40 см ",
            "about_item": "Букет из роскошных анемонов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Ультрамарин",
        "item_link": "https://vgosti.by/bukety/ultramarin.html",
        "cost_byn": "355.0",
        "photos": [
            "https://vgosti.by/files/items/539/icon.jpg",
            "https://vgosti.by/files/galleries/713/3551/src.jpg",
            "https://vgosti.by/files/galleries/713/3552/src.jpg",
            "https://vgosti.by/files/galleries/713/3553/src.jpg",
            "https://vgosti.by/files/galleries/713/3554/src.jpg",
            "https://vgosti.by/files/galleries/713/3555/src.jpg",
            "https://vgosti.by/files/galleries/713/3556/src.jpg",
            "https://vgosti.by/files/galleries/713/3557/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Астильба",
                "Гортензия",
                "Диантус",
                "Зелень",
                "Пистация",
                "Хамелациум",
                "Эвкалипт",
                "Эрингиум"
            ],
            "package": "Букет без упаковки ",
            "size": "35-45 см ",
            "about_item": "Стильный европейский букет без упаковки "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Банксия",
        "item_link": "https://vgosti.by/bukety/banksiya.html",
        "cost_byn": "250.0",
        "photos": [
            "https://vgosti.by/files/items/858/icon.jpg",
            "https://vgosti.by/files/galleries/1284/2530/src.jpg",
            "https://vgosti.by/files/galleries/1284/2531/src.jpg",
            "https://vgosti.by/files/galleries/1284/2532/src.jpg",
            "https://vgosti.by/files/galleries/1284/2533/src.jpg",
            "https://vgosti.by/files/galleries/1284/2534/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Астранция",
                "Банксия",
                "Диантус",
                "Корилус",
                "Пистация",
                "Питоспорум",
                "Роза",
                "Роза кустовая",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 45-50 см ",
            "about_item": "Роскошный большой букет, высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Камея",
        "item_link": "https://vgosti.by/bukety/kameya.html",
        "cost_byn": "86.0",
        "photos": [
            "https://vgosti.by/files/items/859/icon.jpg",
            "https://vgosti.by/files/galleries/1286/2535/src.jpg",
            "https://vgosti.by/files/galleries/1286/2536/src.jpg",
            "https://vgosti.by/files/galleries/1286/2537/src.jpg",
            "https://vgosti.by/files/galleries/1286/2538/src.jpg"
        ],
        "description": {
            "composition": [
                "Астильба",
                "Гербера",
                "Диантус",
                "Маттиола",
                "Роза кустовая"
            ],
            "package": "Французский крафт ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Экзотическая гербера покорит ваше сердце "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Август",
        "item_link": "https://vgosti.by/bukety/avgust.html",
        "cost_byn": "109.0",
        "photos": [
            "https://vgosti.by/files/items/852/icon.jpg",
            "https://vgosti.by/files/galleries/1272/2504/src.jpg",
            "https://vgosti.by/files/galleries/1272/2505/src.jpg",
            "https://vgosti.by/files/galleries/1272/2506/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Ирис",
                "Каллы",
                "Лагурус",
                "Скимия",
                "Хризантема"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 35-40 см ",
            "about_item": "Яркий букет с экзотическими цветами "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Персиковая нежность",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/persikovaya-nezhnost.html",
        "cost_byn": "225.0",
        "photos": [
            "https://vgosti.by/files/items/1775/icon.jpg",
            "https://vgosti.by/files/galleries/2914/6700/src.jpg",
            "https://vgosti.by/files/galleries/2914/6701/src.jpg",
            "https://vgosti.by/files/galleries/2914/6702/src.jpg",
            "https://vgosti.by/files/galleries/2914/6703/src.jpg",
            "https://vgosti.by/files/galleries/2914/6704/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Большая шляпная коробка ",
            "size": "Высота 42 см, диаметр 30 см ",
            "about_item": "Гарантия качества сухоцветов и стабилизации 5 лет "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Мужской клуб",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/muzhskoj-klub.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/1282/icon.jpg",
            "https://vgosti.by/files/galleries/2017/4688/src.jpg",
            "https://vgosti.by/files/galleries/2017/4689/src.jpg",
            "https://vgosti.by/files/galleries/2017/4690/src.jpg",
            "https://vgosti.by/files/galleries/2017/4691/src.jpg",
            "https://vgosti.by/files/galleries/2017/4692/src.jpg",
            "https://vgosti.by/files/galleries/2017/4693/src.jpg",
            "https://vgosti.by/files/galleries/2017/4694/src.jpg",
            "https://vgosti.by/files/galleries/2017/4695/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Коробка ",
            "size": "20х25см ",
            "about_item": "Композиция из сухоцветов. Алкогольная продукция в стоимость не входит "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Лагуна",
        "item_link": "https://vgosti.by/bukety/laguna.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/585/icon.jpg",
            "https://vgosti.by/files/galleries/803/2067/src.jpg",
            "https://vgosti.by/files/galleries/803/2068/src.jpg",
            "https://vgosti.by/files/galleries/803/2069/src.jpg",
            "https://vgosti.by/files/galleries/803/2070/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Зелень",
                "Ранункулюс",
                "Роза кустовая",
                "Роза пионовидная",
                "Суккуленты",
                "Шишки",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Ленты ",
            "size": "35-40 см ",
            "about_item": "Нежный роматический букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Пастила",
        "item_link": "https://vgosti.by/bukety/pastila-1.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/352/icon.jpg",
            "https://vgosti.by/files/galleries/377/3578/src.jpg",
            "https://vgosti.by/files/galleries/377/3579/src.jpg",
            "https://vgosti.by/files/galleries/377/3580/src.jpg",
            "https://vgosti.by/files/galleries/377/3581/src.jpg",
            "https://vgosti.by/files/galleries/377/3582/src.jpg"
        ],
        "description": {
            "composition": [
                "Ранункулюс"
            ],
            "package": "Тишью с корейской бумагой ",
            "size": "30 см ",
            "about_item": "Букет длительной стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Совиньон размер ХL",
        "item_link": "https://vgosti.by/bukety/sovinon-razmer-hl.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/866/icon.jpg",
            "https://vgosti.by/files/galleries/1300/2564/src.jpg",
            "https://vgosti.by/files/galleries/1300/2565/src.jpg",
            "https://vgosti.by/files/galleries/1300/2566/src.jpg",
            "https://vgosti.by/files/galleries/1300/2567/src.jpg",
            "https://vgosti.by/files/galleries/1300/2568/src.jpg",
            "https://vgosti.by/files/galleries/1300/2569/src.jpg",
            "https://vgosti.by/files/galleries/1300/2570/src.jpg"
        ],
        "description": {
            "composition": [
                "Астильба",
                "Гортензия",
                "Диантус",
                "Клематис",
                "Котинус",
                "Маттиола",
                "Питоспорум",
                "Тласпи",
                "Эвкалипт"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 40-45 см ",
            "about_item": "Букет представлен в трех размерах "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Жаклин",
        "item_link": "https://vgosti.by/bukety/zhaklin.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/1243/icon.jpg",
            "https://vgosti.by/files/galleries/1941/4521/src.jpg",
            "https://vgosti.by/files/galleries/1941/4522/src.jpg",
            "https://vgosti.by/files/galleries/1941/4523/src.jpg"
        ],
        "description": {
            "composition": [
                "Гербера",
                "Пистация",
                "Роза кустовая",
                "Роза пионовидная",
                "Ромашки"
            ],
            "package": "Корейская бумага ",
            "size": "высота 35-45 см ",
            "about_item": "Стильный букет из экзотических цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Черный шоколад",
        "item_link": "https://vgosti.by/bukety/chernyj-shokolad.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/884/icon.jpg",
            "https://vgosti.by/files/galleries/1328/2633/src.jpg",
            "https://vgosti.by/files/galleries/1328/2634/src.jpg",
            "https://vgosti.by/files/galleries/1328/2635/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Зелень",
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая",
                "Экзотика",
                "Эустома"
            ],
            "package": "Французский крафт с корейской бумагой ",
            "size": "Диаметр 40-45 см ",
            "about_item": "Букет насыщен экзотическими цветами нереальных оттенков "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Валерия",
        "item_link": "https://vgosti.by/bukety/valeriya.html",
        "cost_byn": "285.0",
        "photos": [
            "https://vgosti.by/files/items/842/icon.jpg",
            "https://vgosti.by/files/galleries/1252/2451/src.jpg",
            "https://vgosti.by/files/galleries/1252/2452/src.jpg",
            "https://vgosti.by/files/galleries/1252/2453/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Зелень",
                "Маттиола",
                "Озотамнус",
                "Пион",
                "Пистация",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Сирень",
                "Эвкалипт"
            ],
            "package": "Ленты ",
            "size": "диаметр 70 см ",
            "about_item": "Букет в европейском стиле без упаковки "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Амур",
        "item_link": "https://vgosti.by/bukety/amur.html",
        "cost_byn": "97.0",
        "photos": [
            "https://vgosti.by/files/items/730/icon.jpg",
            "https://vgosti.by/files/galleries/1056/1972/src.jpg",
            "https://vgosti.by/files/galleries/1056/1973/src.jpg",
            "https://vgosti.by/files/galleries/1056/1974/src.jpg",
            "https://vgosti.by/files/galleries/1056/1975/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Гвоздика",
                "Диантус",
                "Зелень",
                "Роза",
                "Роза кустовая",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "французский крафт ",
            "size": "30-35 см ",
            "about_item": "Прекрасный букет насыщенный цветами "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Фиалковая роса",
        "item_link": "https://vgosti.by/bukety/fialkovaya-rosa.html",
        "cost_byn": "39.0",
        "photos": [
            "https://vgosti.by/files/items/1244/icon.jpg",
            "https://vgosti.by/files/galleries/1943/4524/src.jpg",
            "https://vgosti.by/files/galleries/1943/4525/src.jpg",
            "https://vgosti.by/files/galleries/1943/4526/src.jpg",
            "https://vgosti.by/files/galleries/1943/4527/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Роза кустовая",
                "Роза пионовидная",
                "Экзотика"
            ],
            "package": "Корейская бумага ",
            "size": "высота 35-45 см ",
            "about_item": "Стильный букет из экзотических цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Шато де Прованс",
        "item_link": "https://vgosti.by/bukety/shato-de-provans.html",
        "cost_byn": "149.0",
        "photos": [
            "https://vgosti.by/files/items/145/icon.jpg",
            "https://vgosti.by/files/galleries/46/3327/src.jpg",
            "https://vgosti.by/files/galleries/46/3328/src.jpg",
            "https://vgosti.by/files/galleries/46/3329/src.jpg",
            "https://vgosti.by/files/galleries/46/3330/src.jpg",
            "https://vgosti.by/files/galleries/46/3331/src.jpg"
        ],
        "description": {
            "composition": [
                "Лаванда",
                "Тюльпаны"
            ],
            "package": "Корейская бумага ",
            "size": null,
            "about_item": "Ароматное сочетание лаванды и тюльпанов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Молли",
        "item_link": "https://vgosti.by/bukety/molli.html",
        "cost_byn": "245.0",
        "photos": [
            "https://vgosti.by/files/items/870/icon.jpg",
            "https://vgosti.by/files/galleries/1308/2586/src.jpg",
            "https://vgosti.by/files/galleries/1308/2587/src.jpg",
            "https://vgosti.by/files/galleries/1308/2588/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Гвоздика",
                "Гербера",
                "Диантус",
                "Роза",
                "Тласпи",
                "Эустома"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 40-45 см ",
            "about_item": "Букет насыщен экзотическими цветами "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Букет из красных роз",
        "item_link": "https://vgosti.by/bukety/buket-iz-krasnyh-roz-1.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/794/icon.jpg",
            "https://vgosti.by/files/galleries/1168/2172/src.jpg",
            "https://vgosti.by/files/galleries/1168/2173/src.jpg",
            "https://vgosti.by/files/galleries/1168/2174/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза"
            ],
            "package": "Корейская бумага ",
            "size": "30-35 см ",
            "about_item": "Роза высокой стойкости, пр-во Кения "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Искренность",
        "item_link": "https://vgosti.by/bukety/iskrennost.html",
        "cost_byn": "149.0",
        "photos": [
            "https://vgosti.by/files/items/1061/icon.jpg",
            "https://vgosti.by/files/galleries/1640/3361/src.jpg",
            "https://vgosti.by/files/galleries/1640/3362/src.jpg",
            "https://vgosti.by/files/galleries/1640/3363/src.jpg",
            "https://vgosti.by/files/galleries/1640/3364/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны",
                "Фрезия"
            ],
            "package": "Корейская бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Весенний букет из фрезии и тюльпанов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Этруско",
        "item_link": "https://vgosti.by/bukety/etrusko.html",
        "cost_byn": "175.0",
        "photos": [
            "https://vgosti.by/files/items/786/icon.jpg",
            "https://vgosti.by/files/galleries/1152/2153/src.jpg",
            "https://vgosti.by/files/galleries/1152/2154/src.jpg",
            "https://vgosti.by/files/galleries/1152/2155/src.jpg",
            "https://vgosti.by/files/galleries/1152/2156/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Зелень",
                "Протея",
                "Ранункулюс",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Тюльпаны",
                "Тюльпан",
                "IceCream",
                "Хризантема",
                "Эвкалипт"
            ],
            "package": "Корейская бумага ",
            "size": "45-50 см ",
            "about_item": "Букет насыщен экзотическими цветами и королевской протеей "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Совиньон размер L",
        "item_link": "https://vgosti.by/bukety/sovinon-razmer-l.html",
        "cost_byn": "120.0",
        "photos": [
            "https://vgosti.by/files/items/865/icon.jpg",
            "https://vgosti.by/files/galleries/1298/2560/src.jpg",
            "https://vgosti.by/files/galleries/1298/2561/src.jpg",
            "https://vgosti.by/files/galleries/1298/2562/src.jpg",
            "https://vgosti.by/files/galleries/1298/2563/src.jpg"
        ],
        "description": {
            "composition": [
                "Астильба",
                "Гортензия",
                "Диантус",
                "Клематис",
                "Котинус",
                "Маттиола",
                "Роза кустовая",
                "Роза пионовидная",
                "Тласпи",
                "Эвкалипт"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 35-40 см ",
            "about_item": "Букет представлен в трех размерах "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Нигелла",
        "item_link": "https://vgosti.by/bukety/nigella.html",
        "cost_byn": "169.0",
        "photos": [
            "https://vgosti.by/files/items/546/icon.jpg",
            "https://vgosti.by/files/galleries/725/1576/src.jpg",
            "https://vgosti.by/files/galleries/725/1577/src.jpg",
            "https://vgosti.by/files/galleries/725/1575/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Гвоздика",
                "Диантус",
                "Нигелла",
                "Орнитогалум",
                "Пион",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Сирень",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Французский крафт ",
            "size": "65-75 см ",
            "about_item": "Огромный букет из цветов поразит своей красотой и размерами "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Мента",
        "item_link": "https://vgosti.by/bukety/menta.html",
        "cost_byn": "72.0",
        "photos": [
            "https://vgosti.by/files/items/949/icon.jpg",
            "https://vgosti.by/files/galleries/1454/2921/src.jpg",
            "https://vgosti.by/files/galleries/1454/2922/src.jpg",
            "https://vgosti.by/files/galleries/1454/2923/src.jpg",
            "https://vgosti.by/files/galleries/1454/2924/src.jpg",
            "https://vgosti.by/files/galleries/1454/2925/src.jpg",
            "https://vgosti.by/files/galleries/1454/2926/src.jpg",
            "https://vgosti.by/files/galleries/1454/2927/src.jpg",
            "https://vgosti.by/files/galleries/1454/2958/src.jpg"
        ],
        "description": {
            "composition": [
                "Канадская пихта",
                "Лагурус",
                "Озотамнус",
                "Роза",
                "Суккуленты",
                "Хлопок"
            ],
            "package": "Корейская бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Нежный букет из хлопка, лагуруса, суккулента, канадской пихты и нежной розы "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Теплый ноябрь",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/teplyj-noyabr.html",
        "cost_byn": "56.0",
        "photos": [
            "https://vgosti.by/files/items/1630/icon.jpg",
            "https://vgosti.by/files/galleries/2649/6274/src.jpg",
            "https://vgosti.by/files/galleries/2649/6275/src.jpg",
            "https://vgosti.by/files/galleries/2649/6276/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Металлическое декоративное кашпо ",
            "size": "Высота 20-25 см ",
            "about_item": "Композиция из природных материалов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Десерт",
        "item_link": "https://vgosti.by/bukety/desert.html",
        "cost_byn": "225.0",
        "photos": [
            "https://vgosti.by/files/items/846/icon.jpg",
            "https://vgosti.by/files/galleries/1260/2469/src.jpg",
            "https://vgosti.by/files/galleries/1260/2470/src.jpg",
            "https://vgosti.by/files/galleries/1260/2471/src.jpg",
            "https://vgosti.by/files/galleries/1260/2472/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Озотамнус",
                "Пион",
                "Пистация",
                "Роза",
                "Роза кустовая",
                "Эвкалипт"
            ],
            "package": "Ленты ",
            "size": "Диаметр 60-74 см ",
            "about_item": "Роскошный весенний букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Сиреневый",
        "item_link": "https://vgosti.by/bukety/sirenevyj.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/1119/icon.jpg",
            "https://vgosti.by/files/galleries/1730/3909/src.jpg",
            "https://vgosti.by/files/galleries/1730/3910/src.jpg",
            "https://vgosti.by/files/galleries/1730/3911/src.jpg",
            "https://vgosti.by/files/galleries/1730/3912/src.jpg",
            "https://vgosti.by/files/galleries/1730/3913/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза французская",
                "Роза пионовидная",
                "Роза садовая",
                "Ромашки",
                "Сирень"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Буке из ароматной сирени "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Первый звонок",
        "item_link": "https://vgosti.by/bukety/pervyj-zvonok.html",
        "cost_byn": "35.0",
        "photos": [
            "https://vgosti.by/files/items/1185/icon.jpg",
            "https://vgosti.by/files/galleries/1841/4212/src.jpg",
            "https://vgosti.by/files/galleries/1841/4213/src.jpg",
            "https://vgosti.by/files/galleries/1841/4214/src.jpg",
            "https://vgosti.by/files/galleries/1841/4215/src.jpg",
            "https://vgosti.by/files/galleries/1841/4216/src.jpg"
        ],
        "description": {
            "composition": [
                "Экзотика"
            ],
            "package": "Корейская бумага ",
            "size": "высота более 50-55см ",
            "about_item": "Букет школьника с гладиолусами "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Горячий шоколад",
        "item_link": "https://vgosti.by/bukety/goryachij-shokolad.html",
        "cost_byn": "165.0",
        "photos": [
            "https://vgosti.by/files/items/851/icon.jpg",
            "https://vgosti.by/files/galleries/1270/2498/src.jpg",
            "https://vgosti.by/files/galleries/1270/2499/src.jpg",
            "https://vgosti.by/files/galleries/1270/2500/src.jpg",
            "https://vgosti.by/files/galleries/1270/2501/src.jpg",
            "https://vgosti.by/files/galleries/1270/2502/src.jpg",
            "https://vgosti.by/files/galleries/1270/2503/src.jpg"
        ],
        "description": {
            "composition": [
                "Пион",
                "Пистация",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Эустома"
            ],
            "package": "Французский крафт ",
            "size": "Диаметр 35-40 см ",
            "about_item": "Яркий, насыщенный ароматный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Алиса Лакшери",
        "item_link": "https://vgosti.by/bukety/alisa-luxury.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/495/icon.jpg",
            "https://vgosti.by/files/galleries/627/1472/src.jpg",
            "https://vgosti.by/files/galleries/627/1474/src.jpg",
            "https://vgosti.by/files/galleries/627/1475/src.jpg",
            "https://vgosti.by/files/galleries/627/1476/src.jpg",
            "https://vgosti.by/files/galleries/627/1477/src.jpg",
            "https://vgosti.by/files/galleries/627/1478/src.jpg",
            "https://vgosti.by/files/galleries/627/1479/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Бувардия",
                "Маттиола",
                "Пистация",
                "Питоспорум",
                "Ранункулюс",
                "Роза",
                "Трахелиум",
                "Экзотика"
            ],
            "package": "Французский крафт, тишью ",
            "size": "35-45 см ",
            "about_item": "Нежный букет насыщенный цветами "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Каприз",
        "item_link": "https://vgosti.by/bukety/kapriz.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1367/icon.jpg",
            "https://vgosti.by/files/galleries/2181/5170/src.jpg",
            "https://vgosti.by/files/galleries/2181/5171/src.jpg",
            "https://vgosti.by/files/galleries/2181/5172/src.jpg",
            "https://vgosti.by/files/galleries/2181/5173/src.jpg",
            "https://vgosti.by/files/galleries/2181/5174/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт",
                "Диантус",
                "Эустома"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 25-27 см ",
            "about_item": "Ароматный букет из весенних цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Айскрим",
        "item_link": "https://vgosti.by/bukety/ajskrim.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/779/icon.jpg",
            "https://vgosti.by/files/galleries/1138/2140/src.jpg",
            "https://vgosti.by/files/galleries/1138/2141/src.jpg",
            "https://vgosti.by/files/galleries/1138/2142/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпан",
                "IceCream"
            ],
            "package": "Корейская бумага ",
            "size": "30-35 см ",
            "about_item": "Букет из экзотического тюльпана - раскрывается как пион "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Тоскана",
        "item_link": "https://vgosti.by/bukety/toskana.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/397/icon.jpg",
            "https://vgosti.by/files/galleries/445/1132/src.jpg",
            "https://vgosti.by/files/galleries/445/1131/src.jpg",
            "https://vgosti.by/files/galleries/445/2329/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Диантус",
                "Питоспорум",
                "Роза",
                "Роза кустовая"
            ],
            "package": "Двухсторонний французский крафт ",
            "size": "от 25-35 см ",
            "about_item": "Букет к любому поводу "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Совиньон размер S",
        "item_link": "https://vgosti.by/bukety/sovinon-razmer-s.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/864/icon.jpg",
            "https://vgosti.by/files/galleries/1296/2557/src.jpg",
            "https://vgosti.by/files/galleries/1296/2558/src.jpg",
            "https://vgosti.by/files/galleries/1296/2559/src.jpg"
        ],
        "description": {
            "composition": [
                "Астильба",
                "Гвоздика",
                "Клематис",
                "Котинус",
                "Маттиола",
                "Питоспорум",
                "Роза кустовая",
                "Роза пионовидная",
                "Тласпи"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 20-25 см ",
            "about_item": "Букет представлен в трех размерах "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Карамель",
        "item_link": "https://vgosti.by/bukety/karamel.html",
        "cost_byn": "118.0",
        "photos": [
            "https://vgosti.by/files/items/199/icon.jpg",
            "https://vgosti.by/files/galleries/150/3414/src.jpg",
            "https://vgosti.by/files/galleries/150/3415/src.jpg",
            "https://vgosti.by/files/galleries/150/3416/src.jpg",
            "https://vgosti.by/files/galleries/150/3417/src.jpg",
            "https://vgosti.by/files/galleries/150/3418/src.jpg",
            "https://vgosti.by/files/galleries/150/3419/src.jpg",
            "https://vgosti.by/files/galleries/150/3420/src.jpg"
        ],
        "description": {
            "composition": [
                "Гербера",
                "Диантус",
                "Роза кустовая",
                "Сирень",
                "Хелеборус",
                "Эвкалипт"
            ],
            "package": "Корейская умная бумага ",
            "size": "от 35-45 см ",
            "about_item": "Универсальный букет для любого повода "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Мадам бомбастик",
        "item_link": "https://vgosti.by/bukety/madam-bombastik.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/891/icon.jpg",
            "https://vgosti.by/files/galleries/1342/2685/src.jpg",
            "https://vgosti.by/files/galleries/1342/2686/src.jpg",
            "https://vgosti.by/files/galleries/1342/2687/src.jpg",
            "https://vgosti.by/files/galleries/1342/2688/src.jpg",
            "https://vgosti.by/files/galleries/1342/2689/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Диантус",
                "Роза",
                "Роза кустовая",
                "Хлопок",
                "Эвкалипт"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 35-40 см ",
            "about_item": "Насыщенный цветочный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Эко-картина из эко-мха",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/eko-kartina-iz-eko-mha.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/1891/icon.jpg",
            "https://vgosti.by/files/galleries/3134/7003/src.jpg",
            "https://vgosti.by/files/galleries/3134/7004/src.jpg",
            "https://vgosti.by/files/galleries/3134/7005/src.jpg",
            "https://vgosti.by/files/galleries/3134/7006/src.jpg",
            "https://vgosti.by/files/galleries/3134/7007/src.jpg",
            "https://vgosti.by/files/galleries/3134/7008/src.jpg",
            "https://vgosti.by/files/galleries/3134/7009/src.jpg",
            "https://vgosti.by/files/galleries/3134/7010/src.jpg",
            "https://vgosti.by/files/galleries/3134/7011/src.jpg",
            "https://vgosti.by/files/galleries/3134/7012/src.jpg",
            "https://vgosti.by/files/galleries/3134/7013/src.jpg",
            "https://vgosti.by/files/galleries/3134/7015/src.jpg",
            "https://vgosti.by/files/galleries/3134/7014/src.jpg",
            "https://vgosti.by/files/galleries/3134/7016/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Рамка из натурального дерева ",
            "size": "25 см х 25 см (делаем под размер заказчика) ",
            "about_item": "Стабилизированный скандинавский мох различных цветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Ириска",
        "item_link": "https://vgosti.by/bukety/iriska.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/194/icon.jpg",
            "https://vgosti.by/files/galleries/144/215/src.jpg",
            "https://vgosti.by/files/galleries/144/1017/src.jpg",
            "https://vgosti.by/files/galleries/144/1018/src.jpg"
        ],
        "description": {
            "composition": [
                "Ирис"
            ],
            "package": "Французский крафт ",
            "size": "от 25-35 см ",
            "about_item": "Количество ирисов можно как увеличить, так и уменьшить, также изменить упаковку или форму "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Сливовый мусс",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/slivovyj-muss.html",
        "cost_byn": "81.0",
        "photos": [
            "https://vgosti.by/files/items/1682/icon.jpg",
            "https://vgosti.by/files/galleries/2743/6462/src.jpg",
            "https://vgosti.by/files/galleries/2743/6463/src.jpg",
            "https://vgosti.by/files/galleries/2743/6464/src.jpg",
            "https://vgosti.by/files/galleries/2743/6465/src.jpg",
            "https://vgosti.by/files/galleries/2743/6466/src.jpg",
            "https://vgosti.by/files/galleries/2743/6467/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Коробка в форме сумочки ",
            "size": "размер 11 х 15 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Артишок",
        "item_link": "https://vgosti.by/bukety/artishok.html",
        "cost_byn": "115.0",
        "photos": [
            "https://vgosti.by/files/items/1182/icon.jpg",
            "https://vgosti.by/files/galleries/1835/4189/src.jpg",
            "https://vgosti.by/files/galleries/1835/4190/src.jpg",
            "https://vgosti.by/files/galleries/1835/4191/src.jpg",
            "https://vgosti.by/files/galleries/1835/4192/src.jpg",
            "https://vgosti.by/files/galleries/1835/4193/src.jpg",
            "https://vgosti.by/files/galleries/1835/4194/src.jpg",
            "https://vgosti.by/files/galleries/1835/4195/src.jpg"
        ],
        "description": {
            "composition": [
                "Мужской состав",
                "Сухоцветы",
                "Зелень",
                "Ирис",
                "Экзотика",
                "Эрингиум"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35-40 см ",
            "about_item": "Стильный букет из экзотических цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "50 оттенков серого",
        "item_link": "https://vgosti.by/bukety/50-ottenkov-serogo.html",
        "cost_byn": "159.0",
        "photos": [
            "https://vgosti.by/files/items/853/icon.jpg",
            "https://vgosti.by/files/galleries/1274/2507/src.jpg",
            "https://vgosti.by/files/galleries/1274/2508/src.jpg",
            "https://vgosti.by/files/galleries/1274/2509/src.jpg",
            "https://vgosti.by/files/galleries/1274/2510/src.jpg",
            "https://vgosti.by/files/galleries/1274/2511/src.jpg",
            "https://vgosti.by/files/galleries/1274/2512/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Оксипеталум",
                "Пион",
                "Роза",
                "Скимия",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 40-45 см ",
            "about_item": "Роскошный раскидистый букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Мариска",
        "item_link": "https://vgosti.by/bukety/mariska.html",
        "cost_byn": "98.0",
        "photos": [
            "https://vgosti.by/files/items/1068/icon.jpg",
            "https://vgosti.by/files/galleries/1654/3404/src.jpg",
            "https://vgosti.by/files/galleries/1654/3405/src.jpg",
            "https://vgosti.by/files/galleries/1654/3406/src.jpg",
            "https://vgosti.by/files/galleries/1654/3407/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Гвоздика",
                "Гентиана",
                "Роза",
                "Роза кустовая",
                "Хелеборус",
                "Хлопок"
            ],
            "package": "Корейская бумага ",
            "size": "диаметр 30-35 см ",
            "about_item": "Свежий насыщенный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Спарта",
        "item_link": "https://vgosti.by/bukety/sparta.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/855/icon.jpg",
            "https://vgosti.by/files/galleries/1278/2517/src.jpg",
            "https://vgosti.by/files/galleries/1278/2518/src.jpg",
            "https://vgosti.by/files/galleries/1278/2519/src.jpg"
        ],
        "description": {
            "composition": [
                "Мужской состав",
                "Мимоза",
                "Протея"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 25 см ",
            "about_item": "Лаконичный букет отличается высокой стойкостью "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Букет из белых роз",
        "item_link": "https://vgosti.by/bukety/buket-iz-belyh-roz-1.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/795/icon.jpg",
            "https://vgosti.by/files/galleries/1170/2175/src.jpg",
            "https://vgosti.by/files/galleries/1170/2176/src.jpg",
            "https://vgosti.by/files/galleries/1170/2177/src.jpg"
        ],
        "description": {
            "composition": [
                "Зелень",
                "Роза"
            ],
            "package": "Корейская бумага ",
            "size": "30-35 см ",
            "about_item": "Роза высокой стойкости, пр-во Кения "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Весеннее признание",
        "item_link": "https://vgosti.by/bukety/vesennee-priznanie.html",
        "cost_byn": "39.0",
        "photos": [
            "https://vgosti.by/files/items/978/icon.jpg",
            "https://vgosti.by/files/galleries/1498/3008/src.jpg",
            "https://vgosti.by/files/galleries/1498/3009/src.jpg",
            "https://vgosti.by/files/galleries/1498/3010/src.jpg",
            "https://vgosti.by/files/galleries/1498/3102/src.jpg",
            "https://vgosti.by/files/galleries/1498/3103/src.jpg",
            "https://vgosti.by/files/galleries/1498/3104/src.jpg",
            "https://vgosti.by/files/galleries/1498/3105/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Анемон",
                "Лагурус",
                "Тюльпаны",
                "Хамелациум"
            ],
            "package": "Корейская бумага ",
            "size": "высота 40 см ",
            "about_item": "Букет из весенних цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Айсберг",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/ajsberg.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1234/icon.jpg",
            "https://vgosti.by/files/galleries/1925/4426/src.jpg",
            "https://vgosti.by/files/galleries/1925/4427/src.jpg",
            "https://vgosti.by/files/galleries/1925/4428/src.jpg",
            "https://vgosti.by/files/galleries/1925/4429/src.jpg",
            "https://vgosti.by/files/galleries/1925/4430/src.jpg",
            "https://vgosti.by/files/galleries/1925/4431/src.jpg",
            "https://vgosti.by/files/galleries/1925/4432/src.jpg",
            "https://vgosti.by/files/galleries/1925/4433/src.jpg",
            "https://vgosti.by/files/galleries/1925/4434/src.jpg",
            "https://vgosti.by/files/galleries/1925/4435/src.jpg",
            "https://vgosti.by/files/galleries/1925/4436/src.jpg",
            "https://vgosti.by/files/galleries/1925/4437/src.jpg",
            "https://vgosti.by/files/galleries/1925/4438/src.jpg",
            "https://vgosti.by/files/galleries/1925/4439/src.jpg",
            "https://vgosti.by/files/galleries/1925/4440/src.jpg",
            "https://vgosti.by/files/galleries/1925/4441/src.jpg",
            "https://vgosti.by/files/galleries/1925/4442/src.jpg",
            "https://vgosti.by/files/galleries/1925/4443/src.jpg",
            "https://vgosti.by/files/galleries/1925/4444/src.jpg",
            "https://vgosti.by/files/galleries/1925/4445/src.jpg",
            "https://vgosti.by/files/galleries/1925/4446/src.jpg",
            "https://vgosti.by/files/galleries/1925/4447/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Интерьерная композиция из сухоцветов длительного использования "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Панна-котта",
        "item_link": "https://vgosti.by/bukety/panna-kotta.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/784/icon.jpg",
            "https://vgosti.by/files/galleries/1148/2151/src.jpg",
            "https://vgosti.by/files/galleries/1148/2152/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Роза",
                "Роза кустовая",
                "Тюльпан",
                "IceCream",
                "Фрезия"
            ],
            "package": "Корейская бумага ",
            "size": "25-3 ",
            "about_item": "Нежный цветочный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Капучино",
        "item_link": "https://vgosti.by/bukety/kapuchino.html",
        "cost_byn": "77.0",
        "photos": [
            "https://vgosti.by/files/items/196/icon.jpg",
            "https://vgosti.by/files/galleries/148/3658/src.jpg",
            "https://vgosti.by/files/galleries/148/3659/src.jpg",
            "https://vgosti.by/files/galleries/148/3660/src.jpg",
            "https://vgosti.by/files/galleries/148/3661/src.jpg",
            "https://vgosti.by/files/galleries/148/3662/src.jpg",
            "https://vgosti.by/files/galleries/148/3663/src.jpg",
            "https://vgosti.by/files/galleries/148/3664/src.jpg",
            "https://vgosti.by/files/galleries/148/3665/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Пистация",
                "Роза"
            ],
            "package": "Корейская умная бумага ",
            "size": "от 35-40 см ",
            "about_item": "Универсальный букет для любого повода и без "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Цветущий луг",
        "item_link": "https://vgosti.by/cvety-v-korobke/cvetucshij-lug.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/1702/icon.jpg",
            "https://vgosti.by/files/galleries/2781/6548/src.jpg",
            "https://vgosti.by/files/galleries/2781/6549/src.jpg",
            "https://vgosti.by/files/galleries/2781/6550/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Роза пионовидная",
                "Хлопок",
                "Хризантема",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 25-30 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Барышня",
        "item_link": "https://vgosti.by/cvety-v-korobke/baryshnya.html",
        "cost_byn": "87.0",
        "photos": [
            "https://vgosti.by/files/items/1601/icon.jpg",
            "https://vgosti.by/files/galleries/2591/6146/src.jpg",
            "https://vgosti.by/files/galleries/2591/6147/src.jpg",
            "https://vgosti.by/files/galleries/2591/6148/src.jpg",
            "https://vgosti.by/files/galleries/2591/6149/src.jpg",
            "https://vgosti.by/files/galleries/2591/6150/src.jpg",
            "https://vgosti.by/files/galleries/2591/6151/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Роза",
                "Хризантема",
                "Экзотика",
                "Эустома"
            ],
            "package": "Сумочка ",
            "size": "длинна 24 см, ширина 15 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Жозефина",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/zhozefina.html",
        "cost_byn": "120.0",
        "photos": [
            "https://vgosti.by/files/items/1550/icon.jpg",
            "https://vgosti.by/files/galleries/2511/6022/src.jpg",
            "https://vgosti.by/files/galleries/2511/6023/src.jpg",
            "https://vgosti.by/files/galleries/2511/6024/src.jpg",
            "https://vgosti.by/files/galleries/2511/6025/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Интерьерная композиция из сухоцветов и стабилизированных цветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Интерьерная композиция Стиль",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/interernaya-kompoziciya-stil.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/995/icon.jpg",
            "https://vgosti.by/files/galleries/1528/3083/src.jpg",
            "https://vgosti.by/files/galleries/1528/3084/src.jpg",
            "https://vgosti.by/files/galleries/1528/3085/src.jpg",
            "https://vgosti.by/files/galleries/1528/3086/src.jpg",
            "https://vgosti.by/files/galleries/1528/3087/src.jpg",
            "https://vgosti.by/files/galleries/1528/3088/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Интерьерная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Розовое вино",
        "item_link": "https://vgosti.by/bukety/rozovoe-vino.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1084/icon.jpg",
            "https://vgosti.by/files/galleries/1686/3646/src.jpg",
            "https://vgosti.by/files/galleries/1686/3647/src.jpg",
            "https://vgosti.by/files/galleries/1686/3648/src.jpg",
            "https://vgosti.by/files/galleries/1686/3649/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Гербера"
            ],
            "package": "Корейская бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Яркий роскошный букет из стойких цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Душевный",
        "item_link": "https://vgosti.by/bukety/dushevnyj.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/180/icon.jpg",
            "https://vgosti.by/files/galleries/116/992/src.jpg",
            "https://vgosti.by/files/galleries/116/993/src.jpg",
            "https://vgosti.by/files/galleries/116/994/src.jpg"
        ],
        "description": {
            "composition": [
                "Астранция",
                "Гвоздика",
                "Диантус",
                "Роза",
                "Роза кустовая",
                "Эвкалипт",
                "Ягоды"
            ],
            "package": "Французский крафт ",
            "size": "от 35-45 см ",
            "about_item": "Букет «Душевный» в черничных цветах, вызовут душевный подъём, стремление сделать приятное любимому человеку "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Черничный пунш",
        "item_link": "https://vgosti.by/bukety/chernichnyj-punsh.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/811/icon.jpg",
            "https://vgosti.by/files/galleries/1196/2282/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Пистация",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Французский двухсторонний крафт с корейской бумагой ",
            "size": "35-40 см ",
            "about_item": "Букет с гортензией и пионовидной розой "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Альстромерия XL",
        "item_link": "https://vgosti.by/bukety/alstromeriya-xl.html",
        "cost_byn": "200.0",
        "photos": [
            "https://vgosti.by/files/items/482/icon.jpg",
            "https://vgosti.by/files/galleries/609/915/src.jpg",
            "https://vgosti.by/files/galleries/609/916/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия"
            ],
            "package": "Букет без упаковки ",
            "size": "диаметр 30-40 см, высота 60 см ",
            "about_item": "Роскошный букет из альстомерии подходит для любого торжественного повода "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Ирисы",
        "item_link": "https://vgosti.by/bukety/irisy.html",
        "cost_byn": "42.0",
        "photos": [
            "https://vgosti.by/files/items/472/icon.jpg",
            "https://vgosti.by/files/galleries/591/3278/src.jpg",
            "https://vgosti.by/files/galleries/591/3279/src.jpg",
            "https://vgosti.by/files/galleries/591/3280/src.jpg",
            "https://vgosti.by/files/galleries/591/3281/src.jpg"
        ],
        "description": {
            "composition": [
                "Ирис"
            ],
            "package": "Корейская бумага ",
            "size": "высота 45-50 см ",
            "about_item": "Букет из ирисов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Лунный свет",
        "item_link": "https://vgosti.by/bukety/lunnyj-svet.html",
        "cost_byn": "141.0",
        "photos": [
            "https://vgosti.by/files/items/328/icon.jpg",
            "https://vgosti.by/files/galleries/329/1322/src.jpg",
            "https://vgosti.by/files/galleries/329/1323/src.jpg",
            "https://vgosti.by/files/galleries/329/1324/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Анемон",
                "Гвоздика",
                "Диантус",
                "Ранункулюс",
                "Роза",
                "Скимия",
                "Трахелиум",
                "Эвкалипт",
                "Эрингиум",
                "Эустома"
            ],
            "package": "Французский крафт ",
            "size": "от 50 до 60 см ",
            "about_item": "Букет \"Лунный свет\" пробудит романтические чувства! "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Букет ромашек",
        "item_link": "https://vgosti.by/bukety/buket-romashek.html",
        "cost_byn": "199.0",
        "photos": [
            "https://vgosti.by/files/items/149/icon.jpg",
            "https://vgosti.by/files/galleries/54/955/src.jpg",
            "https://vgosti.by/files/galleries/54/6951/src.jpg",
            "https://vgosti.by/files/galleries/54/6952/src.jpg",
            "https://vgosti.by/files/galleries/54/6953/src.jpg",
            "https://vgosti.by/files/galleries/54/6954/src.jpg"
        ],
        "description": {
            "composition": [
                "Ромашки"
            ],
            "package": "Французский крафт, ленты ",
            "size": "от 50 до 60 см ",
            "about_item": "Букет из ромашек - самый романтический букет! "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Букет гортензии",
        "item_link": "https://vgosti.by/bukety/buket-gortenzii.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/763/icon.jpg",
            "https://vgosti.by/files/galleries/1112/2107/src.jpg",
            "https://vgosti.by/files/galleries/1112/2108/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Зелень"
            ],
            "package": "Корейская бумага ",
            "size": "35-40 см ",
            "about_item": "Букет из гортензии может быть различной цветовой гаммы "
        },
        "category": "Букеты"
    },
    {
        "item_name": "51 роза",
        "item_link": "https://vgosti.by/bukety/51-roza.html",
        "cost_byn": "365.0",
        "photos": [
            "https://vgosti.by/files/items/128/icon.jpg",
            "https://vgosti.by/files/galleries/7/34/src.jpg",
            "https://vgosti.by/files/galleries/7/35/src.jpg",
            "https://vgosti.by/files/galleries/7/36/src.jpg",
            "https://vgosti.by/files/galleries/7/37/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "фирменная упаковка с кружевом ",
            "size": "высота 60-70 см ",
            "about_item": "51 красная роза означает - символ земной, страстной и чувственной любви "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Цветочный крем",
        "item_link": "https://vgosti.by/bukety/cvetochnyj-krem.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/762/icon.jpg",
            "https://vgosti.by/files/galleries/1110/2109/src.jpg",
            "https://vgosti.by/files/galleries/1110/2110/src.jpg",
            "https://vgosti.by/files/galleries/1110/2111/src.jpg",
            "https://vgosti.by/files/galleries/1110/2112/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза кустовая",
                "Хризантема",
                "Эустома"
            ],
            "package": "Французский двухсторонний крафт ",
            "size": "35-40 см ",
            "about_item": "Нежный цветочный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Французский букет",
        "item_link": "https://vgosti.by/bukety/francuzskij-buket.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/878/icon.jpg",
            "https://vgosti.by/files/galleries/1316/2597/src.jpg",
            "https://vgosti.by/files/galleries/1316/2598/src.jpg",
            "https://vgosti.by/files/galleries/1316/2599/src.jpg",
            "https://vgosti.by/files/galleries/1316/2600/src.jpg",
            "https://vgosti.by/files/galleries/1316/2601/src.jpg",
            "https://vgosti.by/files/galleries/1316/2602/src.jpg",
            "https://vgosti.by/files/galleries/1316/2603/src.jpg",
            "https://vgosti.by/files/galleries/1316/2604/src.jpg",
            "https://vgosti.by/files/galleries/1316/2606/src.jpg"
        ],
        "description": {
            "composition": [
                "Георгина",
                "Диантус",
                "Зелень",
                "Роза кустовая",
                "Роза французская",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Ленты ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Стильный европейский букет с французской розой "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Солнечный день",
        "item_link": "https://vgosti.by/bukety/solnechnyj-den.html",
        "cost_byn": "39.0",
        "photos": [
            "https://vgosti.by/files/items/1089/icon.jpg",
            "https://vgosti.by/files/galleries/1696/3681/src.jpg",
            "https://vgosti.by/files/galleries/1696/3682/src.jpg",
            "https://vgosti.by/files/galleries/1696/3683/src.jpg",
            "https://vgosti.by/files/galleries/1696/3684/src.jpg",
            "https://vgosti.by/files/galleries/1696/3685/src.jpg",
            "https://vgosti.by/files/galleries/1696/3686/src.jpg"
        ],
        "description": {
            "composition": [
                "Гербера",
                "Ирис"
            ],
            "package": "Корейская бумага ",
            "size": "высота 45 см ",
            "about_item": "Яркий сочный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Луиза",
        "item_link": "https://vgosti.by/bukety/luiza.html",
        "cost_byn": "32.0",
        "photos": [
            "https://vgosti.by/files/items/1242/icon.jpg",
            "https://vgosti.by/files/galleries/1939/4518/src.jpg",
            "https://vgosti.by/files/galleries/1939/4519/src.jpg",
            "https://vgosti.by/files/galleries/1939/4520/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Гвоздика",
                "Зелень",
                "Роза кустовая",
                "Роза пионовидная"
            ],
            "package": "Умная корейская бумага ",
            "size": "высота 35-45 см ",
            "about_item": "Стильный букет в стильной упаковке "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Мужской букет Люкс",
        "item_link": "https://vgosti.by/bukety/muzhskoj-buket-lyuks.html",
        "cost_byn": "225.0",
        "photos": [
            "https://vgosti.by/files/items/954/icon.jpg",
            "https://vgosti.by/files/galleries/1464/2959/src.jpg",
            "https://vgosti.by/files/galleries/1464/2960/src.jpg",
            "https://vgosti.by/files/galleries/1464/2961/src.jpg",
            "https://vgosti.by/files/galleries/1464/2962/src.jpg",
            "https://vgosti.by/files/galleries/1464/2963/src.jpg"
        ],
        "description": {
            "composition": [
                "Мужской состав",
                "Бамбук",
                "Лагурус",
                "Орхидея",
                "Суккуленты",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "ленты ",
            "size": "высота более 45-50 см ",
            "about_item": "Мужской, насыщенный экзотикой, символизирует стремление и развитие "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Клубничная карамель",
        "item_link": "https://vgosti.by/bukety/klubnichnaya-karamel.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/155/icon.jpg",
            "https://vgosti.by/files/galleries/66/2053/src.jpg",
            "https://vgosti.by/files/galleries/66/2054/src.jpg",
            "https://vgosti.by/files/galleries/66/2055/src.jpg",
            "https://vgosti.by/files/galleries/66/2056/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Зелень",
                "Ранункулюс",
                "Роза",
                "Роза кустовая",
                "Скимия",
                "Тюльпаны",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Корейская бумага ",
            "size": "от 40-45 см ",
            "about_item": "Стильный букет в розовой гамме "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Интерьерная композиция Каприз",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/interernaya-kompoziciya-kapriz.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1523/icon.jpg",
            "https://vgosti.by/files/galleries/2457/5873/src.jpg",
            "https://vgosti.by/files/galleries/2457/5874/src.jpg",
            "https://vgosti.by/files/galleries/2457/5875/src.jpg",
            "https://vgosti.by/files/galleries/2457/5876/src.jpg",
            "https://vgosti.by/files/galleries/2457/5877/src.jpg",
            "https://vgosti.by/files/galleries/2457/5878/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Стильное керамическое кашпо ",
            "size": "ширина 27 см высота 30 см ",
            "about_item": "Композиция из сухоцветов с интегрированием живых цветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Яркий",
        "item_link": "https://vgosti.by/bukety/yarkij.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/1083/icon.jpg",
            "https://vgosti.by/files/galleries/1684/3641/src.jpg",
            "https://vgosti.by/files/galleries/1684/3642/src.jpg",
            "https://vgosti.by/files/galleries/1684/3643/src.jpg",
            "https://vgosti.by/files/galleries/1684/3644/src.jpg",
            "https://vgosti.by/files/galleries/1684/3645/src.jpg"
        ],
        "description": {
            "composition": [
                "Подсолнух"
            ],
            "package": "Корейская бумага ",
            "size": "высота 40-45 см ",
            "about_item": "Букет из голландских подсолнухов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Шато Марго",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/shato-margo.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/1538/icon.jpg",
            "https://vgosti.by/files/galleries/2487/5979/src.jpg",
            "https://vgosti.by/files/galleries/2487/5980/src.jpg",
            "https://vgosti.by/files/galleries/2487/5981/src.jpg",
            "https://vgosti.by/files/galleries/2487/5982/src.jpg",
            "https://vgosti.by/files/galleries/2487/5983/src.jpg",
            "https://vgosti.by/files/galleries/2487/5984/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Конусная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Композиция из сухоцветов длительной стойкости "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Букет из кактусов",
        "item_link": "https://vgosti.by/bukety/buket-iz-kaktusov.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1110/icon.jpg",
            "https://vgosti.by/files/galleries/1712/3849/src.jpg",
            "https://vgosti.by/files/galleries/1712/3850/src.jpg",
            "https://vgosti.by/files/galleries/1712/3851/src.jpg",
            "https://vgosti.by/files/galleries/1712/3852/src.jpg",
            "https://vgosti.by/files/galleries/1712/3853/src.jpg"
        ],
        "description": {
            "composition": [
                "Мужской состав",
                "Зелень",
                "Кактус"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Букет из кактусов длительной стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Шартез",
        "item_link": "https://vgosti.by/cvety-v-korobke/shartez.html",
        "cost_byn": "39.0",
        "photos": [
            "https://vgosti.by/files/items/1882/icon.jpg",
            "https://vgosti.by/files/galleries/3118/6977/src.jpg",
            "https://vgosti.by/files/galleries/3118/6978/src.jpg",
            "https://vgosti.by/files/galleries/3118/6979/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Гербера",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная"
            ],
            "package": "Стильная коробочка ",
            "size": "высота до 27 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Тыковка Гламур",
        "item_link": "https://vgosti.by/cvety-v-korobke/tykovka-glamur.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/1918/icon.jpg",
            "https://vgosti.by/files/galleries/3184/7090/src.jpg",
            "https://vgosti.by/files/galleries/3184/7091/src.jpg",
            "https://vgosti.by/files/galleries/3184/7092/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза кустовая",
                "Хризантема",
                "Экзотика",
                "Эустома"
            ],
            "package": "Натуральная декоративная тыква ",
            "size": "диаметр 20-25 см ",
            "about_item": "Композиция высокой стойкости "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Память",
        "item_link": "https://vgosti.by/cvety-v-korobke/pamyat.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1939/icon.jpg",
            "https://vgosti.by/files/galleries/3222/7139/src.jpg",
            "https://vgosti.by/files/galleries/3222/7140/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "крафт-пакет ",
            "size": "диаметр 25 см, высота 15 см ",
            "about_item": "Композиция на возложение "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Попурри",
        "item_link": "https://vgosti.by/bukety/popurri.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/1469/icon.jpg",
            "https://vgosti.by/files/galleries/2375/5721/src.jpg",
            "https://vgosti.by/files/galleries/2375/5722/src.jpg",
            "https://vgosti.by/files/galleries/2375/5723/src.jpg",
            "https://vgosti.by/files/galleries/2375/5724/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Ранункулюс",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая",
                "Фрезия",
                "Хамелациум"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Ароматный букет из пионовидной розы и ранункулюсов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Радуга",
        "item_link": "https://vgosti.by/cvety-v-korobke/raduga.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1843/icon.jpg",
            "https://vgosti.by/files/galleries/3042/6923/src.jpg",
            "https://vgosti.by/files/galleries/3042/6924/src.jpg",
            "https://vgosti.by/files/galleries/3042/6925/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт",
                "Роза кустовая",
                "Фрезия",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 18-25см ",
            "about_item": "Ароматная композиция высокой стойкости "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Куколка",
        "item_link": "https://vgosti.by/cvety-v-korobke/kukolka.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/1840/icon.jpg",
            "https://vgosti.by/files/galleries/3036/6910/src.jpg",
            "https://vgosti.by/files/galleries/3036/6911/src.jpg",
            "https://vgosti.by/files/galleries/3036/6912/src.jpg",
            "https://vgosti.by/files/galleries/3036/6913/src.jpg",
            "https://vgosti.by/files/galleries/3036/6914/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Роза пионовидная",
                "Фрезия",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 18-25 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "День знаний",
        "item_link": "https://vgosti.by/cvety-v-korobke/den-znanij.html",
        "cost_byn": "35.0",
        "photos": [
            "https://vgosti.by/files/items/1818/icon.jpg",
            "https://vgosti.by/files/galleries/2994/6844/src.jpg",
            "https://vgosti.by/files/galleries/2994/6845/src.jpg",
            "https://vgosti.by/files/galleries/2994/6846/src.jpg",
            "https://vgosti.by/files/galleries/2994/6847/src.jpg",
            "https://vgosti.by/files/galleries/2994/6848/src.jpg",
            "https://vgosti.by/files/galleries/2994/6849/src.jpg"
        ],
        "description": {
            "composition": [
                "Пистация",
                "Экзотика",
                "Эустома"
            ],
            "package": "Стильная декоративная упаковка ",
            "size": "высота 18-22 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Дочурке",
        "item_link": "https://vgosti.by/cvety-v-korobke/dochurke.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1790/icon.jpg",
            "https://vgosti.by/files/galleries/2942/6738/src.jpg",
            "https://vgosti.by/files/galleries/2942/6739/src.jpg",
            "https://vgosti.by/files/galleries/2942/6740/src.jpg",
            "https://vgosti.by/files/galleries/2942/6741/src.jpg",
            "https://vgosti.by/files/galleries/2942/6742/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Шляпная коробка ",
            "size": "высота 15-20 см, диаметр 12 см ",
            "about_item": "Композиция с декоративной бутылочкой (есть голубая и розовая на выбор) "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Дежавю",
        "item_link": "https://vgosti.by/cvety-v-korobke/dezhavyu.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/1791/icon.jpg",
            "https://vgosti.by/files/galleries/2944/6743/src.jpg",
            "https://vgosti.by/files/galleries/2944/6744/src.jpg",
            "https://vgosti.by/files/galleries/2944/6745/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Орхидея",
                "Роза пионовидная"
            ],
            "package": "Декоративное кашпо ",
            "size": "Высота 20-25 см ",
            "about_item": null
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Джерси",
        "item_link": "https://vgosti.by/cvety-v-korobke/dzhersi.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/1796/icon.jpg",
            "https://vgosti.by/files/galleries/2950/6750/src.jpg",
            "https://vgosti.by/files/galleries/2950/6751/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Гвоздика",
                "Роза пионовидная"
            ],
            "package": "Декоративное кашпо ",
            "size": "высота 20 -23 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Изумрудный луг",
        "item_link": "https://vgosti.by/cvety-v-korobke/izumrudnyj-lug.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1603/icon.jpg",
            "https://vgosti.by/files/galleries/2595/6155/src.jpg",
            "https://vgosti.by/files/galleries/2595/6156/src.jpg",
            "https://vgosti.by/files/galleries/2595/6157/src.jpg",
            "https://vgosti.by/files/galleries/2595/6158/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Роза пионовидная",
                "Хамелациум",
                "Экзотика",
                "Эустома"
            ],
            "package": "Декоративное кашпо ",
            "size": "высота 22-25 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Кантри Блюз",
        "item_link": "https://vgosti.by/cvety-v-korobke/kantri-blyuz.html",
        "cost_byn": "127.0",
        "photos": [
            "https://vgosti.by/files/items/1604/icon.jpg",
            "https://vgosti.by/files/galleries/2597/6159/src.jpg",
            "https://vgosti.by/files/galleries/2597/6160/src.jpg",
            "https://vgosti.by/files/galleries/2597/6161/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза кустовая",
                "Роза французская",
                "Хризантема",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 25-30 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Нежное дыхание",
        "item_link": "https://vgosti.by/cvety-v-korobke/nezhnoe-dyhanie.html",
        "cost_byn": "169.0",
        "photos": [
            "https://vgosti.by/files/items/1700/icon.jpg",
            "https://vgosti.by/files/galleries/2777/6543/src.jpg",
            "https://vgosti.by/files/galleries/2777/6544/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 25-35 см ",
            "about_item": "Ароматная композиция находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Линда",
        "item_link": "https://vgosti.by/cvety-v-korobke/linda.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1565/icon.jpg",
            "https://vgosti.by/files/galleries/2531/6074/src.jpg",
            "https://vgosti.by/files/galleries/2531/6075/src.jpg",
            "https://vgosti.by/files/galleries/2531/6076/src.jpg",
            "https://vgosti.by/files/galleries/2531/6077/src.jpg"
        ],
        "description": {
            "composition": [
                "Оксипеталум",
                "Роза пионовидная",
                "Экзотика"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 27-30 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Касабланка",
        "item_link": "https://vgosti.by/cvety-v-korobke/kasablanka-1.html",
        "cost_byn": "72.0",
        "photos": [
            "https://vgosti.by/files/items/1795/icon.jpg",
            "https://vgosti.by/files/galleries/2948/6746/src.jpg",
            "https://vgosti.by/files/galleries/2948/6747/src.jpg",
            "https://vgosti.by/files/galleries/2948/6748/src.jpg",
            "https://vgosti.by/files/galleries/2948/6749/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Фрезия",
                "Эустома"
            ],
            "package": "Коробочка в форме сумочки ",
            "size": "диаметр 15-17 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Полиглот",
        "item_link": "https://vgosti.by/cvety-v-korobke/poliglot.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/1842/icon.jpg",
            "https://vgosti.by/files/galleries/3040/6920/src.jpg",
            "https://vgosti.by/files/galleries/3040/6921/src.jpg",
            "https://vgosti.by/files/galleries/3040/6922/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Роза кустовая",
                "Хризантема",
                "Экзотика"
            ],
            "package": "Декоративное кашпо ",
            "size": "диаметр до 20 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Для мамочки",
        "item_link": "https://vgosti.by/cvety-v-korobke/dlya-mamochki.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1615/icon.jpg",
            "https://vgosti.by/files/galleries/2619/6198/src.jpg",
            "https://vgosti.by/files/galleries/2619/6199/src.jpg",
            "https://vgosti.by/files/galleries/2619/6200/src.jpg",
            "https://vgosti.by/files/galleries/2619/6201/src.jpg"
        ],
        "description": {
            "composition": [
                "Орхидея"
            ],
            "package": "Фарфоровая чашка с блюдцем в упаковке ",
            "size": "Диаметр блюдца 15-17см ",
            "about_item": "Высокая стойкость композиции в фарфоровой посуде "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Сердечность",
        "item_link": "https://vgosti.by/cvety-v-korobke/serdechnost.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/1532/icon.jpg",
            "https://vgosti.by/files/galleries/2475/5937/src.jpg",
            "https://vgosti.by/files/galleries/2475/5938/src.jpg",
            "https://vgosti.by/files/galleries/2475/5939/src.jpg"
        ],
        "description": {
            "composition": [
                "Орхидея",
                "Экзотика"
            ],
            "package": "Конусообразное кашпо с лентой ",
            "size": "высота 25-33 см ",
            "about_item": "Букет во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Миндаль",
        "item_link": "https://vgosti.by/cvety-v-korobke/mindal.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1602/icon.jpg",
            "https://vgosti.by/files/galleries/2593/6152/src.jpg",
            "https://vgosti.by/files/galleries/2593/6153/src.jpg",
            "https://vgosti.by/files/galleries/2593/6154/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Роза пионовидная",
                "Хризантема",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 25 -27 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Бокал вина",
        "item_link": "https://vgosti.by/cvety-v-korobke/bokal-vina.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1454/icon.jpg",
            "https://vgosti.by/files/galleries/2345/5649/src.jpg",
            "https://vgosti.by/files/galleries/2345/5650/src.jpg",
            "https://vgosti.by/files/galleries/2345/5651/src.jpg",
            "https://vgosti.by/files/galleries/2345/5652/src.jpg"
        ],
        "description": {
            "composition": [
                "Гербера",
                "Роза",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Мерси",
        "item_link": "https://vgosti.by/bukety/mersi.html",
        "cost_byn": "39.0",
        "photos": [
            "https://vgosti.by/files/items/764/icon.jpg",
            "https://vgosti.by/files/galleries/1114/2103/src.jpg",
            "https://vgosti.by/files/galleries/1114/2104/src.jpg",
            "https://vgosti.by/files/galleries/1114/2105/src.jpg",
            "https://vgosti.by/files/galleries/1114/2106/src.jpg",
            "https://vgosti.by/files/galleries/1114/2485/src.jpg",
            "https://vgosti.by/files/galleries/1114/2486/src.jpg",
            "https://vgosti.by/files/galleries/1114/2487/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Зелень",
                "Краспедия",
                "Роза кустовая",
                "Экзотика"
            ],
            "package": "Корейская бумага ",
            "size": "35-40 см ",
            "about_item": "Цветовая гамма может быть различной, см. фото "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Магнолия",
        "item_link": "https://vgosti.by/bukety/magnolia.html",
        "cost_byn": "130.0",
        "photos": [
            "https://vgosti.by/files/items/731/icon.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Гиацинт",
                "Диантус",
                "Зелень",
                "Пистация",
                "Роза",
                "Роза кустовая",
                "Тюльпаны",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Французский крафт ",
            "size": "диаметр 40-45 см ",
            "about_item": "Роскошный букет цветов коралловых оттенков "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Магнум",
        "item_link": "https://vgosti.by/bukety/magnum.html",
        "cost_byn": "50.0",
        "photos": [
            "https://vgosti.by/files/items/1094/icon.jpg",
            "https://vgosti.by/files/galleries/1702/3699/src.jpg",
            "https://vgosti.by/files/galleries/1702/3700/src.jpg",
            "https://vgosti.by/files/galleries/1702/3701/src.jpg",
            "https://vgosti.by/files/galleries/1702/3702/src.jpg",
            "https://vgosti.by/files/galleries/1702/3703/src.jpg"
        ],
        "description": {
            "composition": [
                "Хризантема"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 30-35 см ",
            "about_item": "Букет длительной стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Свет радости",
        "item_link": "https://vgosti.by/bukety/svet-radosti.html",
        "cost_byn": "37.0",
        "photos": [
            "https://vgosti.by/files/items/772/icon.jpg",
            "https://vgosti.by/files/galleries/1124/2117/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Зелень",
                "Роза кустовая",
                "Хризантема"
            ],
            "package": "Французский двухсторонний крафт с корейской бумагой ",
            "size": "20-25 см ",
            "about_item": "Стильный букет в нежной гамме "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Ревиваль",
        "item_link": "https://vgosti.by/bukety/revival.html",
        "cost_byn": "33.0",
        "photos": [
            "https://vgosti.by/files/items/687/icon.jpg",
            "https://vgosti.by/files/galleries/976/4528/src.jpg",
            "https://vgosti.by/files/galleries/976/4529/src.jpg",
            "https://vgosti.by/files/galleries/976/4530/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза кустовая",
                "Хлопок"
            ],
            "package": "Французский крафт ",
            "size": "20-25 см ",
            "about_item": "Нежный букет из роз "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Корилус",
        "item_link": "https://vgosti.by/bukety/korilus.html",
        "cost_byn": "73.0",
        "photos": [
            "https://vgosti.by/files/items/820/icon.jpg",
            "https://vgosti.by/files/galleries/1214/2309/src.jpg",
            "https://vgosti.by/files/galleries/1214/2310/src.jpg",
            "https://vgosti.by/files/galleries/1214/2311/src.jpg",
            "https://vgosti.by/files/galleries/1214/2312/src.jpg"
        ],
        "description": {
            "composition": [
                "Мужской состав"
            ],
            "package": "Французский двухсторонний крафт ",
            "size": "30-35 см ",
            "about_item": "Мужской букет из кактусов и суккулентов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Ферре",
        "item_link": "https://vgosti.by/bukety/ferre.html",
        "cost_byn": "88.0",
        "photos": [
            "https://vgosti.by/files/items/928/icon.jpg",
            "https://vgosti.by/files/galleries/1412/2833/src.jpg",
            "https://vgosti.by/files/galleries/1412/2834/src.jpg",
            "https://vgosti.by/files/galleries/1412/2835/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Гиацинт",
                "Хризантема",
                "Эустома"
            ],
            "package": "Корейская бумага ",
            "size": "высота 25-35 см ",
            "about_item": "Ароматный букет, отличается высокой стойкостью "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Момент нежности",
        "item_link": "https://vgosti.by/bukety/moment-nezhnosti.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/778/icon.jpg",
            "https://vgosti.by/files/galleries/1136/2163/src.jpg",
            "https://vgosti.by/files/galleries/1136/2164/src.jpg",
            "https://vgosti.by/files/galleries/1136/2165/src.jpg"
        ],
        "description": {
            "composition": [
                "Зелень",
                "Пистация",
                "Роза кустовая",
                "Эвкалипт"
            ],
            "package": "Корейская бумага ",
            "size": "25-30 см ",
            "about_item": "Стильный нежный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Афина",
        "item_link": "https://vgosti.by/cvety-v-korobke/afina-1.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/1562/icon.jpg",
            "https://vgosti.by/files/galleries/2525/6057/src.jpg",
            "https://vgosti.by/files/galleries/2525/6058/src.jpg",
            "https://vgosti.by/files/galleries/2525/6059/src.jpg",
            "https://vgosti.by/files/galleries/2525/6060/src.jpg",
            "https://vgosti.by/files/galleries/2525/6061/src.jpg",
            "https://vgosti.by/files/galleries/2525/6062/src.jpg"
        ],
        "description": {
            "composition": [
                "Пистация",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Хризантема"
            ],
            "package": "Стильная сумка-корзинка ",
            "size": "Высота 30 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Сливочный пудинг",
        "item_link": "https://vgosti.by/cvety-v-korobke/slivochnyj-puding.html",
        "cost_byn": "119.0",
        "photos": [
            "https://vgosti.by/files/items/1224/icon.jpg",
            "https://vgosti.by/files/galleries/1911/4396/src.jpg",
            "https://vgosti.by/files/galleries/1911/4397/src.jpg",
            "https://vgosti.by/files/galleries/1911/4398/src.jpg",
            "https://vgosti.by/files/galleries/1911/4399/src.jpg",
            "https://vgosti.by/files/galleries/1911/4400/src.jpg",
            "https://vgosti.by/files/galleries/1911/4401/src.jpg"
        ],
        "description": {
            "composition": [
                "Гербера",
                "Диантус",
                "Зелень",
                "Роза кустовая",
                "Роза пионовидная"
            ],
            "package": "Интерьерное кашпо ",
            "size": "диаметр 25 см ",
            "about_item": "Интерьерная композиция в стильном керамическом кашпо "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Клубничный смузи",
        "item_link": "https://vgosti.by/cvety-v-korobke/klubnichnyj-smuzi.html",
        "cost_byn": "72.0",
        "photos": [
            "https://vgosti.by/files/items/1696/icon.jpg",
            "https://vgosti.by/files/galleries/2769/6532/src.jpg",
            "https://vgosti.by/files/galleries/2769/6533/src.jpg",
            "https://vgosti.by/files/galleries/2769/6534/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Орхидея",
                "Роза кустовая",
                "Скимия",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Бархатная шляпная коробка ",
            "size": "Диаметр 22-27 см ",
            "about_item": "Композиция насыщенная экзотическими цветами "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Верона",
        "item_link": "https://vgosti.by/cvety-v-korobke/verona.html",
        "cost_byn": "295.0",
        "photos": [
            "https://vgosti.by/files/items/1335/icon.jpg",
            "https://vgosti.by/files/galleries/2117/4950/src.jpg",
            "https://vgosti.by/files/galleries/2117/4951/src.jpg",
            "https://vgosti.by/files/galleries/2117/4952/src.jpg",
            "https://vgosti.by/files/galleries/2117/4953/src.jpg",
            "https://vgosti.by/files/galleries/2117/4954/src.jpg",
            "https://vgosti.by/files/galleries/2117/4955/src.jpg",
            "https://vgosti.by/files/galleries/2117/4956/src.jpg",
            "https://vgosti.by/files/galleries/2117/4957/src.jpg",
            "https://vgosti.by/files/galleries/2117/4958/src.jpg",
            "https://vgosti.by/files/galleries/2117/4959/src.jpg"
        ],
        "description": {
            "composition": [
                "Орхидея",
                "Экзотика"
            ],
            "package": "Квадратная коробка ",
            "size": "25-30 см ",
            "about_item": "Стойкий букет из орхидей "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Фисташковый сироп",
        "item_link": "https://vgosti.by/cvety-v-korobke/fistashkovyj-sirop.html",
        "cost_byn": "76.0",
        "photos": [
            "https://vgosti.by/files/items/1459/icon.jpg",
            "https://vgosti.by/files/galleries/2355/5670/src.jpg",
            "https://vgosti.by/files/galleries/2355/5671/src.jpg",
            "https://vgosti.by/files/galleries/2355/5672/src.jpg",
            "https://vgosti.by/files/galleries/2355/5673/src.jpg",
            "https://vgosti.by/files/galleries/2355/5674/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Фрезия",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Холидей",
        "item_link": "https://vgosti.by/cvety-v-korobke/holidej.html",
        "cost_byn": "115.0",
        "photos": [
            "https://vgosti.by/files/items/1263/icon.jpg",
            "https://vgosti.by/files/galleries/1981/4608/src.jpg",
            "https://vgosti.by/files/galleries/1981/4609/src.jpg",
            "https://vgosti.by/files/galleries/1981/4610/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Шляпная коробка ",
            "size": "высота 25-27 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Французский поцелуй",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/francuzskij-poceluj.html",
        "cost_byn": "175.0",
        "photos": [
            "https://vgosti.by/files/items/1542/icon.jpg",
            "https://vgosti.by/files/galleries/2495/5995/src.jpg",
            "https://vgosti.by/files/galleries/2495/5996/src.jpg",
            "https://vgosti.by/files/galleries/2495/5997/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухофрукты"
            ],
            "package": "Бархатная шляпная коробка ",
            "size": "высота 25-30 см ",
            "about_item": "Композиция из стабилизированной розы и сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Розовый мрамор",
        "item_link": "https://vgosti.by/cvety-v-korobke/rozovyj-mramor.html",
        "cost_byn": "139.0",
        "photos": [
            "https://vgosti.by/files/items/1460/icon.jpg",
            "https://vgosti.by/files/galleries/2357/5675/src.jpg",
            "https://vgosti.by/files/galleries/2357/5676/src.jpg",
            "https://vgosti.by/files/galleries/2357/5677/src.jpg",
            "https://vgosti.by/files/galleries/2357/5678/src.jpg",
            "https://vgosti.by/files/galleries/2357/5679/src.jpg",
            "https://vgosti.by/files/galleries/2357/5680/src.jpg"
        ],
        "description": {
            "composition": [
                "Берграс",
                "Маттиола",
                "Роза пионовидная",
                "Фрезия",
                "Хамелациум",
                "Хризантема",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Декоративное кашпо ",
            "size": "диаметр 23-27 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Поэма",
        "item_link": "https://vgosti.by/cvety-v-korobke/poema.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1222/icon.jpg",
            "https://vgosti.by/files/galleries/1907/4385/src.jpg",
            "https://vgosti.by/files/galleries/1907/4386/src.jpg",
            "https://vgosti.by/files/galleries/1907/4387/src.jpg",
            "https://vgosti.by/files/galleries/1907/4388/src.jpg",
            "https://vgosti.by/files/galleries/1907/4389/src.jpg",
            "https://vgosti.by/files/galleries/1907/4390/src.jpg",
            "https://vgosti.by/files/galleries/1907/4391/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Гербера",
                "Диантус",
                "Скимия"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 25-30 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Амадин",
        "item_link": "https://vgosti.by/cvety-v-korobke/amadin.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1449/icon.jpg",
            "https://vgosti.by/files/galleries/2335/5626/src.jpg",
            "https://vgosti.by/files/galleries/2335/5627/src.jpg",
            "https://vgosti.by/files/galleries/2335/5628/src.jpg",
            "https://vgosti.by/files/galleries/2335/5630/src.jpg",
            "https://vgosti.by/files/galleries/2335/5629/src.jpg",
            "https://vgosti.by/files/galleries/2335/5631/src.jpg",
            "https://vgosti.by/files/galleries/2335/5632/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Хамелациум",
                "Хризантема"
            ],
            "package": "Декоративный деревянный скворечник ",
            "size": "15-20 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Вирджиния",
        "item_link": "https://vgosti.by/cvety-v-korobke/virdzhiniya.html",
        "cost_byn": "295.0",
        "photos": [
            "https://vgosti.by/files/items/1112/icon.jpg",
            "https://vgosti.by/files/galleries/1716/3868/src.jpg",
            "https://vgosti.by/files/galleries/1716/3869/src.jpg",
            "https://vgosti.by/files/galleries/1716/3870/src.jpg",
            "https://vgosti.by/files/galleries/1716/3871/src.jpg",
            "https://vgosti.by/files/galleries/1716/3872/src.jpg",
            "https://vgosti.by/files/galleries/1716/3873/src.jpg"
        ],
        "description": {
            "composition": [
                "Нигелла",
                "Орхидея",
                "Пион",
                "Хризантема"
            ],
            "package": "Шляпная коробка ",
            "size": "Диаметр 30 ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Топаз",
        "item_link": "https://vgosti.by/cvety-v-korobke/topaz.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1178/icon.jpg",
            "https://vgosti.by/files/galleries/1827/4171/src.jpg",
            "https://vgosti.by/files/galleries/1827/4172/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Гвоздика",
                "Роза пионовидная",
                "Цинерария",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Декорированное кашпо ",
            "size": "Высота 25 ширина 20 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Пчёлка",
        "item_link": "https://vgosti.by/cvety-v-korobke/pchyolka.html",
        "cost_byn": "87.0",
        "photos": [
            "https://vgosti.by/files/items/1113/icon.jpg",
            "https://vgosti.by/files/galleries/1718/3874/src.jpg",
            "https://vgosti.by/files/galleries/1718/3875/src.jpg",
            "https://vgosti.by/files/galleries/1718/3876/src.jpg",
            "https://vgosti.by/files/galleries/1718/3877/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Роза пионовидная",
                "Фрезия"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Яркий летний букет в позитивной коробке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Только для тебя",
        "item_link": "https://vgosti.by/cvety-v-korobke/tolko-dlya-tebya.html",
        "cost_byn": "149.0",
        "photos": [
            "https://vgosti.by/files/items/326/icon.jpg",
            "https://vgosti.by/files/galleries/325/2096/src.jpg",
            "https://vgosti.by/files/galleries/325/2097/src.jpg",
            "https://vgosti.by/files/galleries/325/2098/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Дельфиниум",
                "Диантус",
                "Роза",
                "Роза кустовая",
                "Скимия",
                "Хамелациум"
            ],
            "package": "Овальная коробка с прозрачной крышкой ",
            "size": "диаметр 25-40 см ",
            "about_item": "Цветы в коробке длительное время сохраняют свою свежесть "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Хрупкое сердце",
        "item_link": "https://vgosti.by/cvety-v-korobke/hrupkoe-serdce.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/193/icon.jpg",
            "https://vgosti.by/files/galleries/142/3624/src.jpg",
            "https://vgosti.by/files/galleries/142/3625/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Гортензия",
                "Гвоздика",
                "Маттиола",
                "Роза",
                "Трахелиум",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "30-35 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Анкона",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/ankona.html",
        "cost_byn": "46.0",
        "photos": [
            "https://vgosti.by/files/items/1567/icon.jpg",
            "https://vgosti.by/files/galleries/2535/6090/src.jpg",
            "https://vgosti.by/files/galleries/2535/6091/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Стильное крафт-кашпо ",
            "size": "Высота 25 см ",
            "about_item": "композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Пинк Охара",
        "item_link": "https://vgosti.by/cvety-v-korobke/pink-ohara.html",
        "cost_byn": "189.0",
        "photos": [
            "https://vgosti.by/files/items/929/icon.jpg",
            "https://vgosti.by/files/galleries/1414/2836/src.jpg",
            "https://vgosti.by/files/galleries/1414/2837/src.jpg",
            "https://vgosti.by/files/galleries/1414/2838/src.jpg",
            "https://vgosti.by/files/galleries/1414/2839/src.jpg",
            "https://vgosti.by/files/galleries/1414/2840/src.jpg",
            "https://vgosti.by/files/galleries/1414/2841/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Роза садовая",
                "Хамелациум"
            ],
            "package": "шляпная коробка ",
            "size": "высота 25 см диаметр 30 см ",
            "about_item": "Ароматная композиция из садовой розы "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Крылья Ангела",
        "item_link": "https://vgosti.by/cvety-v-korobke/krylya-angela.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/258/icon.jpg",
            "https://vgosti.by/files/galleries/189/3453/src.jpg",
            "https://vgosti.by/files/galleries/189/3454/src.jpg",
            "https://vgosti.by/files/galleries/189/3455/src.jpg",
            "https://vgosti.by/files/galleries/189/3456/src.jpg",
            "https://vgosti.by/files/galleries/189/3457/src.jpg",
            "https://vgosti.by/files/galleries/189/3458/src.jpg",
            "https://vgosti.by/files/galleries/189/3459/src.jpg",
            "https://vgosti.by/files/galleries/189/3460/src.jpg"
        ],
        "description": {
            "composition": [
                "Питоспорум",
                "Роза",
                "Хамелациум",
                "Хелеборус",
                "Экзотика"
            ],
            "package": "Декорированное кашпо ",
            "size": "20-25 см ",
            "about_item": "Стильная композиция в декорированном кашпо "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Совунья",
        "item_link": "https://vgosti.by/cvety-v-korobke/sovunya.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/1213/icon.jpg",
            "https://vgosti.by/files/galleries/1889/4323/src.jpg",
            "https://vgosti.by/files/galleries/1889/4324/src.jpg",
            "https://vgosti.by/files/galleries/1889/4325/src.jpg",
            "https://vgosti.by/files/galleries/1889/4326/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Зелень",
                "Роза кустовая",
                "Эустома"
            ],
            "package": "Деревянное кашпо с ручкой ",
            "size": "размеры 22см х 20 см ",
            "about_item": "Прекрасная композиция для учителей "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Марсала",
        "item_link": "https://vgosti.by/cvety-v-korobke/marsala.html",
        "cost_byn": "83.0",
        "photos": [
            "https://vgosti.by/files/items/332/icon.jpg",
            "https://vgosti.by/files/galleries/337/3592/src.jpg",
            "https://vgosti.by/files/galleries/337/3593/src.jpg",
            "https://vgosti.by/files/galleries/337/3594/src.jpg",
            "https://vgosti.by/files/galleries/337/3595/src.jpg",
            "https://vgosti.by/files/galleries/337/3596/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Роза",
                "Роза кустовая",
                "Экзотика"
            ],
            "package": "Шляпная коробка ",
            "size": "20-25 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Рождение",
        "item_link": "https://vgosti.by/cvety-v-korobke/rozhdenie.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1078/icon.jpg",
            "https://vgosti.by/files/galleries/1674/3492/src.jpg",
            "https://vgosti.by/files/galleries/1674/3493/src.jpg",
            "https://vgosti.by/files/galleries/1674/3494/src.jpg",
            "https://vgosti.by/files/galleries/1674/3495/src.jpg",
            "https://vgosti.by/files/galleries/1674/3496/src.jpg",
            "https://vgosti.by/files/galleries/1674/3497/src.jpg",
            "https://vgosti.by/files/galleries/1674/3498/src.jpg",
            "https://vgosti.by/files/galleries/1674/3499/src.jpg",
            "https://vgosti.by/files/galleries/1674/3500/src.jpg"
        ],
        "description": {
            "composition": [
                "Гербера"
            ],
            "package": "Декоративное кашпо ",
            "size": "Высота 30-35 см ",
            "about_item": "Стильная композиция в нестандартном кашпо "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Сиреневый комплимент",
        "item_link": "https://vgosti.by/cvety-v-korobke/sirenevyj-kompliment.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1097/icon.jpg",
            "https://vgosti.by/files/galleries/1708/3710/src.jpg",
            "https://vgosti.by/files/galleries/1708/3711/src.jpg",
            "https://vgosti.by/files/galleries/1708/3712/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Роза пионовидная",
                "Сирень"
            ],
            "package": "Деревянное кашпо с кучкой ",
            "size": "Высота 25 длинна 22 см ",
            "about_item": "Роскошная композиция с ароматной сиренью "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Сочные краски",
        "item_link": "https://vgosti.by/cvety-v-korobke/sochnye-kraski.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/793/icon.jpg",
            "https://vgosti.by/files/galleries/1166/2168/src.jpg",
            "https://vgosti.by/files/galleries/1166/2169/src.jpg",
            "https://vgosti.by/files/galleries/1166/2170/src.jpg"
        ],
        "description": {
            "composition": [
                "Василёк",
                "Ранункулюс",
                "Фрезия",
                "Хризантема",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Деревянное кашпо с декоративным покрытием ",
            "size": "20-25 см ",
            "about_item": "Яркий, сочная композация "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Ламбада",
        "item_link": "https://vgosti.by/cvety-v-korobke/lambada.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/1256/icon.jpg",
            "https://vgosti.by/files/galleries/1967/4578/src.jpg",
            "https://vgosti.by/files/galleries/1967/4579/src.jpg",
            "https://vgosti.by/files/galleries/1967/4580/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Гербера",
                "Роза кустовая",
                "Роза пионовидная",
                "Экзотика"
            ],
            "package": "Декоративное кашпо ",
            "size": "высота 20-25 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Беатриса",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/beatrisa.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1393/icon.jpg",
            "https://vgosti.by/files/galleries/2229/5307/src.jpg",
            "https://vgosti.by/files/galleries/2229/5308/src.jpg",
            "https://vgosti.by/files/galleries/2229/5309/src.jpg",
            "https://vgosti.by/files/galleries/2229/5310/src.jpg",
            "https://vgosti.by/files/galleries/2229/5311/src.jpg",
            "https://vgosti.by/files/galleries/2229/5312/src.jpg",
            "https://vgosti.by/files/galleries/2229/5313/src.jpg",
            "https://vgosti.by/files/galleries/2229/5314/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Корейская умная бумага ",
            "size": "высота 25-29 см ",
            "about_item": "Букет из сухоцветов и стабилизированной розы "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Мелодия цветов",
        "item_link": "https://vgosti.by/cvety-v-korobke/melodiya-cvetov.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/1074/icon.jpg",
            "https://vgosti.by/files/galleries/1666/3447/src.jpg",
            "https://vgosti.by/files/galleries/1666/3448/src.jpg",
            "https://vgosti.by/files/galleries/1666/3449/src.jpg",
            "https://vgosti.by/files/galleries/1666/3450/src.jpg",
            "https://vgosti.by/files/galleries/1666/3451/src.jpg",
            "https://vgosti.by/files/galleries/1666/3452/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Диантус",
                "Роза кустовая",
                "Роза пионовидная",
                "Экзотика"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 15-20 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Коробка с макарунами S",
        "item_link": "https://vgosti.by/cvety-v-korobke/korobka-s-makarunami-s.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/306/icon.jpg"
        ],
        "description": {
            "composition": [
                "Макаруны,",
                "Сладости",
                "Зелень",
                "Роза кустовая",
                "Эустома"
            ],
            "package": "Коробка ",
            "size": "до 15-20 см ",
            "about_item": "Приятный сладкий сюрприз к любому поводу "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Мистика",
        "item_link": "https://vgosti.by/cvety-v-korobke/mistika.html",
        "cost_byn": "128.0",
        "photos": [
            "https://vgosti.by/files/items/554/icon.jpg",
            "https://vgosti.by/files/galleries/741/3545/src.jpg",
            "https://vgosti.by/files/galleries/741/3546/src.jpg",
            "https://vgosti.by/files/galleries/741/3547/src.jpg",
            "https://vgosti.by/files/galleries/741/3548/src.jpg",
            "https://vgosti.by/files/galleries/741/3549/src.jpg",
            "https://vgosti.by/files/galleries/741/3550/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Пион",
                "Фрезия"
            ],
            "package": "Шляпная коробка прямоугольной формы ",
            "size": "30-35 см ",
            "about_item": "Насыщенные цвета в букете придают мистический оттенок "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Бургундское вино",
        "item_link": "https://vgosti.by/cvety-v-korobke/burgundskoe-vino.html",
        "cost_byn": "139.0",
        "photos": [
            "https://vgosti.by/files/items/421/icon.jpg",
            "https://vgosti.by/files/galleries/489/2080/src.jpg",
            "https://vgosti.by/files/galleries/489/2081/src.jpg",
            "https://vgosti.by/files/galleries/489/2082/src.jpg",
            "https://vgosti.by/files/galleries/489/2083/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Анемон",
                "Гвоздика",
                "Зелень",
                "Каллы",
                "Роза кустовая",
                "Роза пионовидная",
                "Ромашки",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "от 25-35 см ",
            "about_item": "Шляпная коробка с изысканными цветами "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Стиль",
        "item_link": "https://vgosti.by/cvety-v-korobke/stil.html",
        "cost_byn": "42.0",
        "photos": [
            "https://vgosti.by/files/items/612/icon.jpg",
            "https://vgosti.by/files/galleries/852/2247/src.jpg",
            "https://vgosti.by/files/galleries/852/2248/src.jpg",
            "https://vgosti.by/files/galleries/852/2249/src.jpg",
            "https://vgosti.by/files/galleries/852/2250/src.jpg",
            "https://vgosti.by/files/galleries/852/2251/src.jpg",
            "https://vgosti.by/files/galleries/852/2252/src.jpg",
            "https://vgosti.by/files/galleries/852/2253/src.jpg"
        ],
        "description": {
            "composition": [
                "Зелень",
                "Орхидея",
                "Роза кустовая",
                "Хризантема",
                "Эустома"
            ],
            "package": "Металлическое кашпо ",
            "size": "высота 25 см ",
            "about_item": "Милая композиция к особому поводу "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Рафаэлло размер S",
        "item_link": "https://vgosti.by/cvety-v-korobke/rafaello-razmer-s.html",
        "cost_byn": "29.0",
        "photos": [
            "https://vgosti.by/files/items/1096/icon.jpg",
            "https://vgosti.by/files/galleries/1706/3707/src.jpg",
            "https://vgosti.by/files/galleries/1706/3708/src.jpg",
            "https://vgosti.by/files/galleries/1706/3709/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Макаруны,",
                "Сладости",
                "Роза",
                "Роза пионовидная"
            ],
            "package": "Коробка с конфетами ",
            "size": "диаметр 12-15 см ",
            "about_item": "Прекрасное сочетание изысканных конфет Рафаелло и цветов в одном наборе "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Цветочное послание",
        "item_link": "https://vgosti.by/cvety-v-korobke/cvetochnoe-poslanie.html",
        "cost_byn": "35.0",
        "photos": [
            "https://vgosti.by/files/items/773/icon.jpg",
            "https://vgosti.by/files/galleries/1126/2118/src.jpg",
            "https://vgosti.by/files/galleries/1126/2119/src.jpg",
            "https://vgosti.by/files/galleries/1126/2120/src.jpg",
            "https://vgosti.by/files/galleries/1126/2121/src.jpg",
            "https://vgosti.by/files/galleries/1126/2122/src.jpg"
        ],
        "description": {
            "composition": [
                "Гипсофил",
                "Орхидея",
                "Роза кустовая",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Конверт ",
            "size": "ширина 17 высота 29 см ",
            "about_item": "Композиция в конверте "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Ницца",
        "item_link": "https://vgosti.by/cvety-v-korobke/nicca.html",
        "cost_byn": "185.0",
        "photos": [
            "https://vgosti.by/files/items/1128/icon.jpg",
            "https://vgosti.by/files/galleries/1745/3986/src.jpg",
            "https://vgosti.by/files/galleries/1745/3987/src.jpg",
            "https://vgosti.by/files/galleries/1745/3988/src.jpg",
            "https://vgosti.by/files/galleries/1745/3989/src.jpg",
            "https://vgosti.by/files/galleries/1745/3990/src.jpg",
            "https://vgosti.by/files/galleries/1745/3991/src.jpg",
            "https://vgosti.by/files/galleries/1745/3992/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Зелень",
                "Пион",
                "Роза",
                "Роза кустовая",
                "Экзотика"
            ],
            "package": "Шляпная коробка ",
            "size": "Диаметр 30 см ",
            "about_item": "Ароматная коробка с пионами "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Мятный леденец",
        "item_link": "https://vgosti.by/cvety-v-korobke/myatnyj-ledenec.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1614/icon.jpg",
            "https://vgosti.by/files/galleries/2617/6195/src.jpg",
            "https://vgosti.by/files/galleries/2617/6196/src.jpg",
            "https://vgosti.by/files/galleries/2617/6197/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 20 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Эликсир",
        "item_link": "https://vgosti.by/cvety-v-korobke/eliksir.html",
        "cost_byn": "105.0",
        "photos": [
            "https://vgosti.by/files/items/586/icon.jpg",
            "https://vgosti.by/files/galleries/805/3540/src.jpg",
            "https://vgosti.by/files/galleries/805/3541/src.jpg",
            "https://vgosti.by/files/galleries/805/3542/src.jpg",
            "https://vgosti.by/files/galleries/805/3543/src.jpg",
            "https://vgosti.by/files/galleries/805/3544/src.jpg",
            "https://vgosti.by/files/galleries/806/1702/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Гвоздика",
                "Зелень",
                "Роза",
                "Роза кустовая",
                "Хамелациум"
            ],
            "package": "Шляпная коробка ",
            "size": "25-35 см ",
            "about_item": "Романтическая композиция к любому поводу "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Пегас",
        "item_link": "https://vgosti.by/cvety-v-korobke/pegas.html",
        "cost_byn": "29.0",
        "photos": [
            "https://vgosti.by/files/items/1559/icon.jpg",
            "https://vgosti.by/files/galleries/2519/6041/src.jpg",
            "https://vgosti.by/files/galleries/2519/6042/src.jpg",
            "https://vgosti.by/files/galleries/2519/6043/src.jpg",
            "https://vgosti.by/files/galleries/2519/6044/src.jpg",
            "https://vgosti.by/files/galleries/2519/6063/src.jpg",
            "https://vgosti.by/files/galleries/2519/6064/src.jpg",
            "https://vgosti.by/files/galleries/2519/6065/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Стильное крафт-кашпо ",
            "size": "Высота 30 см ",
            "about_item": "Стильная композиция отличается высокой стойкостью "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Снежная мята",
        "item_link": "https://vgosti.by/cvety-v-korobke/snezhnaya-myata.html",
        "cost_byn": "92.0",
        "photos": [
            "https://vgosti.by/files/items/1456/icon.jpg",
            "https://vgosti.by/files/galleries/2349/5659/src.jpg",
            "https://vgosti.by/files/galleries/2349/5660/src.jpg",
            "https://vgosti.by/files/galleries/2349/5661/src.jpg"
        ],
        "description": {
            "composition": [
                "Маттиола",
                "Фрезия",
                "Хризантема",
                "Экзотика",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Композиция длительной стойкости "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Паста",
        "item_link": "https://vgosti.by/cvety-v-korobke/pasta.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/837/icon.jpg",
            "https://vgosti.by/files/galleries/1242/2415/src.jpg",
            "https://vgosti.by/files/galleries/1242/2416/src.jpg",
            "https://vgosti.by/files/galleries/1242/2417/src.jpg",
            "https://vgosti.by/files/galleries/1242/2418/src.jpg"
        ],
        "description": {
            "composition": [
                "Астильба",
                "Гвоздика",
                "Гербера",
                "Питоспорум",
                "Роза",
                "Роза кустовая",
                "Экзотика",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 17 см, диаметр 15 см ",
            "about_item": "Высокая стойкость композиции "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Пифагор",
        "item_link": "https://vgosti.by/cvety-v-korobke/pifagor.html",
        "cost_byn": "47.0",
        "photos": [
            "https://vgosti.by/files/items/1560/icon.jpg",
            "https://vgosti.by/files/galleries/2521/6052/src.jpg",
            "https://vgosti.by/files/galleries/2521/6053/src.jpg",
            "https://vgosti.by/files/galleries/2521/6054/src.jpg",
            "https://vgosti.by/files/galleries/2521/6055/src.jpg",
            "https://vgosti.by/files/galleries/2521/6056/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Роза пионовидная",
                "Хризантема",
                "Экзотика"
            ],
            "package": "Стильная коробочка с ручками ",
            "size": "Высота 30 см ",
            "about_item": "Композиция отличается высокой стойкостью "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Символ мудрости",
        "item_link": "https://vgosti.by/cvety-v-korobke/simvol-mudrosti.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/1229/icon.jpg",
            "https://vgosti.by/files/galleries/1921/4420/src.jpg",
            "https://vgosti.by/files/galleries/1921/4421/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Подсолнух",
                "Роза кустовая",
                "Роза пионовидная"
            ],
            "package": "Деревянное кашпо с ручкой ",
            "size": "Высота 27 см, ширина 13 см ",
            "about_item": "Оригинальный подарок для преподавателя с совушкой "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Небеса",
        "item_link": "https://vgosti.by/cvety-v-korobke/nebesa.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/834/icon.jpg",
            "https://vgosti.by/files/galleries/1236/2395/src.jpg",
            "https://vgosti.by/files/galleries/1236/2396/src.jpg",
            "https://vgosti.by/files/galleries/1236/2397/src.jpg",
            "https://vgosti.by/files/galleries/1236/2398/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 20-23 см ",
            "about_item": "Элегантная шляпная коробочка "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Конверт Розита",
        "item_link": "https://vgosti.by/cvety-v-korobke/konvert-rozita.html",
        "cost_byn": "35.0",
        "photos": [
            "https://vgosti.by/files/items/1208/icon.jpg",
            "https://vgosti.by/files/galleries/1879/4306/src.jpg",
            "https://vgosti.by/files/galleries/1879/4307/src.jpg"
        ],
        "description": {
            "composition": [
                "Орхидея",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Конверт ",
            "size": "ширина 17 см высота 25 см ",
            "about_item": "Стильная композиция в конверте "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Лазурь",
        "item_link": "https://vgosti.by/cvety-v-korobke/lazur.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/325/icon.jpg",
            "https://vgosti.by/files/galleries/323/3614/src.jpg",
            "https://vgosti.by/files/galleries/323/3615/src.jpg",
            "https://vgosti.by/files/galleries/323/3616/src.jpg",
            "https://vgosti.by/files/galleries/323/3617/src.jpg",
            "https://vgosti.by/files/galleries/323/3618/src.jpg"
        ],
        "description": {
            "composition": [
                "Астильба",
                "Гортензия",
                "Диантус",
                "Роза",
                "Роза кустовая",
                "Хлопок",
                "Цинерария",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "от 25-30 см ",
            "about_item": "Нежная композиция под любой повод "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Жаркое лето",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/zharkoe-leto.html",
        "cost_byn": "149.0",
        "photos": [
            "https://vgosti.by/files/items/1783/icon.jpg",
            "https://vgosti.by/files/galleries/2930/6730/src.jpg",
            "https://vgosti.by/files/galleries/2930/6731/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Кашпо -сумочка ",
            "size": "Диаметр 28, высота 25 см ",
            "about_item": "Стильная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Конверт Гипноз",
        "item_link": "https://vgosti.by/cvety-v-korobke/konvert-gipnoz.html",
        "cost_byn": "37.0",
        "photos": [
            "https://vgosti.by/files/items/1207/icon.jpg",
            "https://vgosti.by/files/galleries/1877/4303/src.jpg",
            "https://vgosti.by/files/galleries/1877/4304/src.jpg",
            "https://vgosti.by/files/galleries/1877/4305/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Гвоздика",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Хризантема",
                "Экзотика",
                "Эустома"
            ],
            "package": "Конверт ",
            "size": "ширина 17 см высота 25 см ",
            "about_item": "Стильная композиция в конверте "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Ред Пьяно",
        "item_link": "https://vgosti.by/cvety-v-korobke/red-pyano.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/932/icon.jpg",
            "https://vgosti.by/files/galleries/1420/2853/src.jpg",
            "https://vgosti.by/files/galleries/1420/2854/src.jpg",
            "https://vgosti.by/files/galleries/1420/2855/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза пионовидная",
                "Роза садовая"
            ],
            "package": "шляпная коробка ",
            "size": "высота 25см ",
            "about_item": "Композиция из роскошной пионовидной садовой розы "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Цветы любви",
        "item_link": "https://vgosti.by/cvety-v-korobke/cvety-lyubvi.html",
        "cost_byn": "87.0",
        "photos": [
            "https://vgosti.by/files/items/986/icon.jpg",
            "https://vgosti.by/files/galleries/1510/3024/src.jpg",
            "https://vgosti.by/files/galleries/1510/3025/src.jpg",
            "https://vgosti.by/files/galleries/1510/3026/src.jpg",
            "https://vgosti.by/files/galleries/1510/3027/src.jpg",
            "https://vgosti.by/files/galleries/1510/3028/src.jpg",
            "https://vgosti.by/files/galleries/1510/3029/src.jpg",
            "https://vgosti.by/files/galleries/1510/3030/src.jpg",
            "https://vgosti.by/files/galleries/1510/3031/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза пионовидная",
                "Экзотика",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 18-20 см ",
            "about_item": "Красивый романтический букет с роскошной розой "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Перламутровый бархат",
        "item_link": "https://vgosti.by/cvety-v-korobke/perlamutrovyj-barhat.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/760/icon.jpg",
            "https://vgosti.by/files/galleries/1108/2031/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Гиацинт",
                "Орхидея",
                "Пистация",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная"
            ],
            "package": "Шляпная коробка ",
            "size": "25-30 см ",
            "about_item": "Стильная шляпная коробка с цветами "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Осенние краски",
        "item_link": "https://vgosti.by/cvety-v-korobke/osennie-kraski.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/876/icon.jpg",
            "https://vgosti.by/files/galleries/1312/2591/src.jpg",
            "https://vgosti.by/files/galleries/1312/2592/src.jpg",
            "https://vgosti.by/files/galleries/1312/2593/src.jpg",
            "https://vgosti.by/files/galleries/1312/2594/src.jpg",
            "https://vgosti.by/files/galleries/1312/2595/src.jpg",
            "https://vgosti.by/files/galleries/1312/2596/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Роза пионовидная",
                "Роза садовая",
                "Скимия",
                "Хризантема"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 18-20 см ",
            "about_item": "Шляпная коробка выполнена в осенней гамме "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Признание",
        "item_link": "https://vgosti.by/cvety-v-korobke/priznanie.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/972/icon.jpg",
            "https://vgosti.by/files/galleries/1486/2986/src.jpg",
            "https://vgosti.by/files/galleries/1486/2987/src.jpg",
            "https://vgosti.by/files/galleries/1486/2988/src.jpg",
            "https://vgosti.by/files/galleries/1486/2989/src.jpg",
            "https://vgosti.by/files/galleries/1486/2990/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Экзотика"
            ],
            "package": "Конверт ",
            "size": "15 х 17 см ",
            "about_item": "Композиция в конверте во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Летуаль",
        "item_link": "https://vgosti.by/cvety-v-korobke/letual.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/923/icon.jpg",
            "https://vgosti.by/files/galleries/1402/2815/src.jpg",
            "https://vgosti.by/files/galleries/1402/2816/src.jpg",
            "https://vgosti.by/files/galleries/1402/2817/src.jpg",
            "https://vgosti.by/files/galleries/1402/2818/src.jpg",
            "https://vgosti.by/files/galleries/1402/2819/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Ромашки",
                "Хамелациум",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "шляпная коробка ",
            "size": "высота 25см ",
            "about_item": "Шляпная коробка проста в уходе "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Прайм тайм",
        "item_link": "https://vgosti.by/cvety-v-korobke/prajm-tajm.html",
        "cost_byn": "139.0",
        "photos": [
            "https://vgosti.by/files/items/561/icon.jpg",
            "https://vgosti.by/files/galleries/755/1614/src.jpg",
            "https://vgosti.by/files/galleries/755/1615/src.jpg",
            "https://vgosti.by/files/galleries/755/1616/src.jpg",
            "https://vgosti.by/files/galleries/755/1617/src.jpg",
            "https://vgosti.by/files/galleries/755/1637/src.jpg",
            "https://vgosti.by/files/galleries/756/1636/src.jpg",
            "https://vgosti.by/files/galleries/756/1635/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Гвоздика",
                "Роза",
                "Хамелациум",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Прайм пакет ",
            "size": "35-45 см ",
            "about_item": "Идеальный букет, который находится уже в воде "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Бирюза",
        "item_link": "https://vgosti.by/cvety-v-korobke/biryuza.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/738/icon.jpg",
            "https://vgosti.by/files/galleries/1070/1987/src.jpg",
            "https://vgosti.by/files/galleries/1070/1988/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Гиацинт",
                "Диантус",
                "Орхидея",
                "Пистация",
                "Роза кустовая",
                "Фрезия",
                "Хамелациум",
                "Хлопок",
                "Эвкалипт",
                "Эрингиум"
            ],
            "package": "Шляпная коробка ",
            "size": "25-30 см ",
            "about_item": "Шляпная коробка отличается своей стойкостью "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Лето в ладошке",
        "item_link": "https://vgosti.by/cvety-v-korobke/leto-v-ladoshke.html",
        "cost_byn": "87.0",
        "photos": [
            "https://vgosti.by/files/items/259/icon.jpg",
            "https://vgosti.by/files/galleries/191/3309/src.jpg",
            "https://vgosti.by/files/galleries/191/3310/src.jpg",
            "https://vgosti.by/files/galleries/191/3311/src.jpg",
            "https://vgosti.by/files/galleries/191/3312/src.jpg",
            "https://vgosti.by/files/galleries/191/3313/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Подсолнух",
                "Ромашки",
                "Хамелациум"
            ],
            "package": "Декоративное кашпо ",
            "size": "от 20-25 см ",
            "about_item": "Стильная композиция в декорированном кашпо "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Коробка с цветами Улыбка",
        "item_link": "https://vgosti.by/cvety-v-korobke/korobka-s-cvetami-ulybka.html",
        "cost_byn": "35.0",
        "photos": [
            "https://vgosti.by/files/items/314/icon.jpg",
            "https://vgosti.by/files/galleries/301/6854/src.jpg",
            "https://vgosti.by/files/galleries/301/6855/src.jpg",
            "https://vgosti.by/files/galleries/301/6856/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Хиперикум",
                "Хризантема",
                "Эвкалипт"
            ],
            "package": "Коробка с крышечкой ",
            "size": "до 15-20 см ",
            "about_item": "Приятный сюрприз к любому поводу "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Шкатулка знаний",
        "item_link": "https://vgosti.by/cvety-v-korobke/shkatulka-znanij.html",
        "cost_byn": "32.0",
        "photos": [
            "https://vgosti.by/files/items/1188/icon.jpg",
            "https://vgosti.by/files/galleries/1847/4232/src.jpg",
            "https://vgosti.by/files/galleries/1847/4233/src.jpg",
            "https://vgosti.by/files/galleries/1847/4234/src.jpg",
            "https://vgosti.by/files/galleries/1847/4235/src.jpg",
            "https://vgosti.by/files/galleries/1847/4236/src.jpg",
            "https://vgosti.by/files/galleries/1847/4237/src.jpg",
            "https://vgosti.by/files/galleries/1847/4238/src.jpg",
            "https://vgosti.by/files/galleries/1847/4239/src.jpg",
            "https://vgosti.by/files/galleries/1847/4240/src.jpg"
        ],
        "description": {
            "composition": [
                "Пистация",
                "Роза кустовая",
                "Роза пионовидная",
                "Хризантема"
            ],
            "package": "Квадратная коробка ",
            "size": "20 х 20 ",
            "about_item": "Стильная композиция в нестандартном кашпо "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Золотая осень",
        "item_link": "https://vgosti.by/cvety-v-korobke/zolotaya-osen-1.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/885/icon.jpg",
            "https://vgosti.by/files/galleries/1330/2636/src.jpg",
            "https://vgosti.by/files/galleries/1330/2637/src.jpg",
            "https://vgosti.by/files/galleries/1330/2638/src.jpg",
            "https://vgosti.by/files/galleries/1330/2639/src.jpg",
            "https://vgosti.by/files/galleries/1330/2640/src.jpg",
            "https://vgosti.by/files/galleries/1330/2641/src.jpg",
            "https://vgosti.by/files/galleries/1330/2642/src.jpg",
            "https://vgosti.by/files/galleries/1330/2643/src.jpg",
            "https://vgosti.by/files/galleries/1330/2644/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Роза кустовая",
                "Роза пионовидная",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "Стильная композиция в деревянном кашпо с ручкой ",
            "size": "Высота 27 ширина 30 ",
            "about_item": "Состав может быть изменен "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Рождение весны",
        "item_link": "https://vgosti.by/cvety-v-korobke/rozhdenie-vesny.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1053/icon.jpg",
            "https://vgosti.by/files/galleries/1626/3262/src.jpg",
            "https://vgosti.by/files/galleries/1626/3263/src.jpg",
            "https://vgosti.by/files/galleries/1626/3264/src.jpg",
            "https://vgosti.by/files/galleries/1626/3265/src.jpg",
            "https://vgosti.by/files/galleries/1626/3266/src.jpg",
            "https://vgosti.by/files/galleries/1626/3267/src.jpg",
            "https://vgosti.by/files/galleries/1626/3268/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "кашпо в форме яйца ",
            "size": "высота 25-35 см ",
            "about_item": "Весенне-пасхальная композиция "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Французский прованс",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/francuzskij-provans-1.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1923/icon.jpg"
        ],
        "description": {
            "composition": [
                "Лаванда"
            ],
            "package": "Декоративное интерьерное кашпо ",
            "size": "высота 21 см ",
            "about_item": "Ароматная лаванда в интерьерном кашпо "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Джульетта",
        "item_link": "https://vgosti.by/cvety-v-korobke/dzhuletta.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/927/icon.jpg",
            "https://vgosti.by/files/galleries/1410/2830/src.jpg",
            "https://vgosti.by/files/galleries/1410/2831/src.jpg",
            "https://vgosti.by/files/galleries/1410/2832/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза пионовидная"
            ],
            "package": "шляпная коробка ",
            "size": "высота 25см ",
            "about_item": "Пионовидная кустовая роза в коробке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Доверие",
        "item_link": "https://vgosti.by/cvety-v-korobke/doverie.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/169/icon.jpg",
            "https://vgosti.by/files/galleries/94/2073/src.jpg",
            "https://vgosti.by/files/galleries/94/2074/src.jpg",
            "https://vgosti.by/files/galleries/94/2075/src.jpg",
            "https://vgosti.by/files/galleries/94/2076/src.jpg",
            "https://vgosti.by/files/galleries/94/2077/src.jpg"
        ],
        "description": {
            "composition": [
                "Ананас",
                "Диантус",
                "Зелень",
                "Роза",
                "Роза кустовая",
                "Суккуленты",
                "Хамелациум",
                "Хризантема"
            ],
            "package": "Деревянное кашпо с кучкой в форме домика ",
            "size": "20-30 см ",
            "about_item": "Стойкая композиция в стильном кашпо "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Рафаэлло размер L",
        "item_link": "https://vgosti.by/cvety-v-korobke/rafaello-razmer-l.html",
        "cost_byn": "37.0",
        "photos": [
            "https://vgosti.by/files/items/1095/icon.jpg",
            "https://vgosti.by/files/galleries/1704/3704/src.jpg",
            "https://vgosti.by/files/galleries/1704/3705/src.jpg",
            "https://vgosti.by/files/galleries/1704/3706/src.jpg"
        ],
        "description": {
            "composition": [
                "Макаруны,",
                "Сладости",
                "Роза кустовая",
                "Роза пионовидная"
            ],
            "package": "Коробка с конфетами ",
            "size": "диаметр 15-17 см ",
            "about_item": "Прекрасное сочетание изысканных конфет Рафаелло и цветов в одном наборе "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Валери",
        "item_link": "https://vgosti.by/cvety-v-korobke/valeri.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/836/icon.jpg",
            "https://vgosti.by/files/galleries/1240/2409/src.jpg",
            "https://vgosti.by/files/galleries/1240/2410/src.jpg",
            "https://vgosti.by/files/galleries/1240/2411/src.jpg",
            "https://vgosti.by/files/galleries/1240/2412/src.jpg",
            "https://vgosti.by/files/galleries/1240/2413/src.jpg",
            "https://vgosti.by/files/galleries/1240/2414/src.jpg"
        ],
        "description": {
            "composition": [
                "Астранция",
                "Нигелла",
                "Питоспорум",
                "Роза",
                "Роза кустовая",
                "Хризантема",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 17 см, диаметр 15 см ",
            "about_item": "Букет отличается высокой стойкостью "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Кофейная гуща",
        "item_link": "https://vgosti.by/cvety-v-korobke/kofejnaya-gucsha.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/792/icon.jpg",
            "https://vgosti.by/files/galleries/1164/2166/src.jpg",
            "https://vgosti.by/files/galleries/1164/2167/src.jpg"
        ],
        "description": {
            "composition": [
                "Зелень",
                "Роза кустовая"
            ],
            "package": "Шляпная коробка ",
            "size": "20-25 см ",
            "about_item": "Шляпная коробка из кустовой розы "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Марго",
        "item_link": "https://vgosti.by/cvety-v-korobke/margo.html",
        "cost_byn": "48.0",
        "photos": [
            "https://vgosti.by/files/items/1160/icon.jpg",
            "https://vgosti.by/files/galleries/1791/4045/src.jpg",
            "https://vgosti.by/files/galleries/1791/4046/src.jpg",
            "https://vgosti.by/files/galleries/1791/4047/src.jpg",
            "https://vgosti.by/files/galleries/1791/4048/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза пионовидная"
            ],
            "package": "Керамическое кашпо ",
            "size": "высота 20-25 см ",
            "about_item": "Стильная композиция в декоративном кашпо "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Клуни",
        "item_link": "https://vgosti.by/cvety-v-korobke/kluni.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/265/icon.jpg",
            "https://vgosti.by/files/galleries/203/3609/src.jpg",
            "https://vgosti.by/files/galleries/203/3610/src.jpg",
            "https://vgosti.by/files/galleries/203/3611/src.jpg",
            "https://vgosti.by/files/galleries/203/3612/src.jpg",
            "https://vgosti.by/files/galleries/203/3613/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Гвоздика",
                "Гипсофил",
                "Зелень",
                "Фрезия",
                "Эвкалипт"
            ],
            "package": "Шляпная коробка ",
            "size": "20-25 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Конверт Алиса",
        "item_link": "https://vgosti.by/cvety-v-korobke/konvert-alisa.html",
        "cost_byn": "35.0",
        "photos": [
            "https://vgosti.by/files/items/1204/icon.jpg",
            "https://vgosti.by/files/galleries/1871/4295/src.jpg",
            "https://vgosti.by/files/galleries/1871/4296/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Экзотика",
                "Эустома"
            ],
            "package": "Конверт ",
            "size": "ширина 17 см высота 25 см ",
            "about_item": "Стильная композиция в конверте "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Мечты сбываются",
        "item_link": "https://vgosti.by/cvety-v-korobke/mechty-sbyvayutsya.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/191/icon.jpg",
            "https://vgosti.by/files/galleries/138/2099/src.jpg",
            "https://vgosti.by/files/galleries/138/2100/src.jpg",
            "https://vgosti.by/files/galleries/138/2101/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт",
                "Диантус",
                "Ранункулюс",
                "Роза кустовая",
                "Хризантема"
            ],
            "package": "Деревянное кашпо с кучкой в форме домика ",
            "size": "20-27 см ",
            "about_item": "Универсальная композиция для любого повода "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Розовый жемчуг",
        "item_link": "https://vgosti.by/cvety-v-korobke/rozovyj-zhemchug.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/831/icon.jpg",
            "https://vgosti.by/files/galleries/1230/2377/src.jpg",
            "https://vgosti.by/files/galleries/1230/2378/src.jpg",
            "https://vgosti.by/files/galleries/1230/2379/src.jpg",
            "https://vgosti.by/files/galleries/1230/2380/src.jpg",
            "https://vgosti.by/files/galleries/1230/2381/src.jpg",
            "https://vgosti.by/files/galleries/1230/2382/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Пион",
                "Пистация",
                "Питоспорум",
                "Роза",
                "Роза кустовая",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Круглая низкая шляпная коробка ",
            "size": "Диаметр 20 см, высота 15 см ",
            "about_item": "Высокая стойкость композиции "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Коробка с макарунами XХL",
        "item_link": "https://vgosti.by/cvety-v-korobke/korobka-s-makarunami-xhl.html",
        "cost_byn": "120.0",
        "photos": [
            "https://vgosti.by/files/items/309/icon.jpg",
            "https://vgosti.by/files/galleries/291/430/src.jpg",
            "https://vgosti.by/files/galleries/291/431/src.jpg",
            "https://vgosti.by/files/galleries/291/432/src.jpg"
        ],
        "description": {
            "composition": [
                "Макаруны,",
                "Сладости"
            ],
            "package": null,
            "size": "от 35-45 см ",
            "about_item": "Сладкий цветочный сюрприз для каждого повода "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Коробка с розами L",
        "item_link": "https://vgosti.by/cvety-v-korobke/korobka-s-rozami-l.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/311/icon.jpg",
            "https://vgosti.by/files/galleries/295/1646/src.jpg",
            "https://vgosti.by/files/galleries/295/1647/src.jpg",
            "https://vgosti.by/files/galleries/295/1648/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Эвкалипт"
            ],
            "package": "Шляпная коробка ",
            "size": "20 см ",
            "about_item": "Стильная коробка с цветами к любому поводу "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Композиция Безе",
        "item_link": "https://vgosti.by/cvety-v-korobke/kompoziciya-beze.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/250/icon.jpg",
            "https://vgosti.by/files/galleries/172/1066/src.jpg",
            "https://vgosti.by/files/galleries/172/1067/src.jpg",
            "https://vgosti.by/files/galleries/172/1068/src.jpg",
            "https://vgosti.by/files/galleries/172/1069/src.jpg"
        ],
        "description": {
            "composition": [
                "Зелень",
                "Роза пионовидная",
                "Эустома"
            ],
            "package": "Стильное металлическое кашпо ",
            "size": "от 25-35 см ",
            "about_item": "Стильная композиция в металлическом кашпо "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Византия",
        "item_link": "https://vgosti.by/cvety-v-korobke/vizantiya.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/165/icon.jpg",
            "https://vgosti.by/files/galleries/86/3587/src.jpg",
            "https://vgosti.by/files/galleries/86/3588/src.jpg",
            "https://vgosti.by/files/galleries/86/3589/src.jpg",
            "https://vgosti.by/files/galleries/86/3590/src.jpg",
            "https://vgosti.by/files/galleries/86/3591/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Маттиола",
                "Пистация",
                "Хризантема",
                "Эвкалипт"
            ],
            "package": "Шляпная коробка ",
            "size": "20-25 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Воображение",
        "item_link": "https://vgosti.by/cvety-v-korobke/voobrazhenie.html",
        "cost_byn": "35.0",
        "photos": [
            "https://vgosti.by/files/items/990/icon.jpg",
            "https://vgosti.by/files/galleries/1518/3057/src.jpg",
            "https://vgosti.by/files/galleries/1518/3058/src.jpg",
            "https://vgosti.by/files/galleries/1518/3059/src.jpg"
        ],
        "description": {
            "composition": [
                "Лагурус",
                "Роза",
                "Роза кустовая",
                "Экзотика"
            ],
            "package": "Керамическая кружка ",
            "size": "15-18см ",
            "about_item": "Модная композиция в стильной кружке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Комплимент весны",
        "item_link": "https://vgosti.by/cvety-v-korobke/kompliment-vesny.html",
        "cost_byn": "39.0",
        "photos": [
            "https://vgosti.by/files/items/997/icon.jpg",
            "https://vgosti.by/files/galleries/1532/3094/src.jpg",
            "https://vgosti.by/files/galleries/1532/3095/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Диантус",
                "Роза",
                "Роза кустовая",
                "Хамелациум",
                "Эустома"
            ],
            "package": "Металлическое кашпо ",
            "size": "15-20 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Эйфория",
        "item_link": "https://vgosti.by/cvety-v-korobke/ejforiya.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/419/icon.jpg",
            "https://vgosti.by/files/galleries/485/2084/src.jpg",
            "https://vgosti.by/files/galleries/485/2085/src.jpg",
            "https://vgosti.by/files/galleries/485/2086/src.jpg",
            "https://vgosti.by/files/galleries/485/2087/src.jpg",
            "https://vgosti.by/files/galleries/485/2088/src.jpg",
            "https://vgosti.by/files/galleries/485/2089/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Роза кустовая",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Коробка-чемоданчик ",
            "size": "ширина 18 см длинна 25 см ",
            "about_item": "Чемодан с цветами и прожными "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Анемоновая кружка",
        "item_link": "https://vgosti.by/cvety-v-korobke/anemonovaya-kruzhka.html",
        "cost_byn": "35.0",
        "photos": [
            "https://vgosti.by/files/items/1045/icon.jpg",
            "https://vgosti.by/files/galleries/1616/3233/src.jpg",
            "https://vgosti.by/files/galleries/1616/3234/src.jpg",
            "https://vgosti.by/files/galleries/1616/3235/src.jpg",
            "https://vgosti.by/files/galleries/1616/3236/src.jpg",
            "https://vgosti.by/files/galleries/1616/3237/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Диантус",
                "Тласпи"
            ],
            "package": "Керамическая кружка ",
            "size": "высота 15-17 см ",
            "about_item": "Букет находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Беверли Хиллз",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/beverli-hillz.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/1342/icon.jpg",
            "https://vgosti.by/files/galleries/2131/4984/src.jpg",
            "https://vgosti.by/files/galleries/2131/4985/src.jpg",
            "https://vgosti.by/files/galleries/2131/4986/src.jpg",
            "https://vgosti.by/files/galleries/2131/4987/src.jpg",
            "https://vgosti.by/files/galleries/2131/4988/src.jpg",
            "https://vgosti.by/files/galleries/2131/4989/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 25-30 см ",
            "about_item": "Букет из стабилизированных цветов и сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Новелла",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/novella.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/1339/icon.jpg",
            "https://vgosti.by/files/galleries/2125/4965/src.jpg",
            "https://vgosti.by/files/galleries/2125/4966/src.jpg",
            "https://vgosti.by/files/galleries/2125/4967/src.jpg",
            "https://vgosti.by/files/galleries/2125/4968/src.jpg",
            "https://vgosti.by/files/galleries/2125/4969/src.jpg",
            "https://vgosti.by/files/galleries/2125/4970/src.jpg",
            "https://vgosti.by/files/galleries/2125/4971/src.jpg",
            "https://vgosti.by/files/galleries/2125/4972/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Дизайнерская шляпная коробка ",
            "size": "высота 20-27 см ",
            "about_item": "Интерьерная композиция из сухоцветов длительного использования "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Письмо Счастья",
        "item_link": "https://vgosti.by/cvety-v-korobke/pismo-schastya.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/725/icon.jpg",
            "https://vgosti.by/files/galleries/1046/1963/src.jpg",
            "https://vgosti.by/files/galleries/1046/1964/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Гипсофил",
                "Диантус",
                "Зелень",
                "Ранункулюс",
                "Роза кустовая",
                "Роза пионовидная",
                "Ромашки",
                "Фрезия",
                "Хамелациум",
                "Эустома"
            ],
            "package": "Конверт ",
            "size": "ширина 20 высота 35 см ",
            "about_item": "Стильная композиция в декоративном конверте "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Бергамо",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/bergamo.html",
        "cost_byn": "47.0",
        "photos": [
            "https://vgosti.by/files/items/1568/icon.jpg",
            "https://vgosti.by/files/galleries/2537/6092/src.jpg",
            "https://vgosti.by/files/galleries/2537/6093/src.jpg",
            "https://vgosti.by/files/galleries/2537/6094/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Стильное крафт-кашпо ",
            "size": "Высота 25 см ",
            "about_item": "Стильная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Коробка с макарунами XXХL",
        "item_link": "https://vgosti.by/cvety-v-korobke/korobka-s-makarunami-xxhl.html",
        "cost_byn": "154.0",
        "photos": [
            "https://vgosti.by/files/items/308/icon.jpg",
            "https://vgosti.by/files/galleries/289/1103/src.jpg",
            "https://vgosti.by/files/galleries/289/1104/src.jpg",
            "https://vgosti.by/files/galleries/289/1105/src.jpg"
        ],
        "description": {
            "composition": [
                "Макаруны,",
                "Сладости",
                "Альстромерия",
                "Астильба",
                "Роза пионовидная",
                "Хлопок",
                "Цинерария",
                "Эрингиум",
                "Эустома"
            ],
            "package": "Коробка ",
            "size": "Большая коробка с макарунами размер 33х24 см ",
            "about_item": "Сладкий цветочный сюрприз для каждого повода "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Свой мир",
        "item_link": "https://vgosti.by/cvety-v-korobke/svoj-mir.html",
        "cost_byn": "67.0",
        "photos": [
            "https://vgosti.by/files/items/838/icon.jpg",
            "https://vgosti.by/files/galleries/1244/2419/src.jpg",
            "https://vgosti.by/files/galleries/1244/2420/src.jpg",
            "https://vgosti.by/files/galleries/1244/2421/src.jpg",
            "https://vgosti.by/files/galleries/1244/2422/src.jpg",
            "https://vgosti.by/files/galleries/1244/2423/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Пистация",
                "Роза",
                "Хризантема"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 17 см, диаметр 15 см ",
            "about_item": "Бюджетная коробка цветов "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Коктель из сухоцветов",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/koktel-iz-suhocvetov.html",
        "cost_byn": "29.0",
        "photos": [
            "https://vgosti.by/files/items/1294/icon.jpg",
            "https://vgosti.by/files/galleries/2041/4773/src.jpg",
            "https://vgosti.by/files/galleries/2041/4774/src.jpg",
            "https://vgosti.by/files/galleries/2041/4775/src.jpg",
            "https://vgosti.by/files/galleries/2041/4776/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 20-22 см ",
            "about_item": "Композиция из сухоцветов и стабилизированных цветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Импульс",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/impuls.html",
        "cost_byn": "119.0",
        "photos": [
            "https://vgosti.by/files/items/1338/icon.jpg",
            "https://vgosti.by/files/galleries/2123/4960/src.jpg",
            "https://vgosti.by/files/galleries/2123/4961/src.jpg",
            "https://vgosti.by/files/galleries/2123/4962/src.jpg",
            "https://vgosti.by/files/galleries/2123/4963/src.jpg",
            "https://vgosti.by/files/galleries/2123/4964/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 23-29 см ",
            "about_item": "Интерьерная композиция из сухоцветов - стойкость более 5 лет "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Букет из сухоцветов Крем",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/buket-iz-suhocvetov-krem.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1064/icon.jpg",
            "https://vgosti.by/files/galleries/1646/3372/src.jpg",
            "https://vgosti.by/files/galleries/1646/3373/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Корейская бумага ",
            "size": "высота 20-25 см ",
            "about_item": "Букет из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Крафт школьный",
        "item_link": "https://vgosti.by/cvety-v-korobke/kraft-shkolnyj.html",
        "cost_byn": "27.0",
        "photos": [
            "https://vgosti.by/files/items/1187/icon.jpg",
            "https://vgosti.by/files/galleries/1845/4226/src.jpg",
            "https://vgosti.by/files/galleries/1845/4227/src.jpg",
            "https://vgosti.by/files/galleries/1845/4228/src.jpg",
            "https://vgosti.by/files/galleries/1845/4229/src.jpg",
            "https://vgosti.by/files/galleries/1845/4230/src.jpg",
            "https://vgosti.by/files/galleries/1845/4231/src.jpg"
        ],
        "description": {
            "composition": [
                "Пистация",
                "Роза",
                "Роза пионовидная",
                "Хризантема"
            ],
            "package": "Квадратная коробка ",
            "size": "ширина 16 см высота 17 см ",
            "about_item": "Стильная коробка с цветами во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Эсперанса",
        "item_link": "https://vgosti.by/cvety-v-korobke/esperansa.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/415/icon.jpg",
            "https://vgosti.by/files/galleries/477/3562/src.jpg",
            "https://vgosti.by/files/galleries/477/3563/src.jpg",
            "https://vgosti.by/files/galleries/477/3564/src.jpg",
            "https://vgosti.by/files/galleries/477/3565/src.jpg",
            "https://vgosti.by/files/galleries/477/3566/src.jpg"
        ],
        "description": {
            "composition": [
                "Вероника",
                "Роза",
                "Роза кустовая",
                "Хамелациум",
                "Хризантема"
            ],
            "package": "Керамическое кашпо ",
            "size": "высота 15 см ",
            "about_item": "Букет находится во флористической губке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Розовые облака",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/rozovye-oblaka-1.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/887/icon.jpg",
            "https://vgosti.by/files/galleries/1334/2648/src.jpg",
            "https://vgosti.by/files/galleries/1334/2649/src.jpg",
            "https://vgosti.by/files/galleries/1334/2650/src.jpg",
            "https://vgosti.by/files/galleries/1334/2652/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Лаванда",
                "Лагурус",
                "Хлопок"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20 см диаметр 20 см ",
            "about_item": "Интерьерная композиция с лавандой и хлопком "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Крафт розовый",
        "item_link": "https://vgosti.by/cvety-v-korobke/kraft-rozovyj.html",
        "cost_byn": "29.0",
        "photos": [
            "https://vgosti.by/files/items/1159/icon.jpg",
            "https://vgosti.by/files/galleries/1789/4040/src.jpg",
            "https://vgosti.by/files/galleries/1789/4041/src.jpg",
            "https://vgosti.by/files/galleries/1789/4044/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Квадратная коробка ",
            "size": "ширина 16 см высота 17 см ",
            "about_item": "Стильная композиция в нестандартном кашпо "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Свет души",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/svet-dushi.html",
        "cost_byn": "105.0",
        "photos": [
            "https://vgosti.by/files/items/1782/icon.jpg",
            "https://vgosti.by/files/galleries/2928/6727/src.jpg",
            "https://vgosti.by/files/galleries/2928/6728/src.jpg",
            "https://vgosti.by/files/galleries/2928/6729/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 22 см, диаметр 20 см ",
            "about_item": "Стильная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Морская нежность",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/morskaya-nezhnost.html",
        "cost_byn": "219.0",
        "photos": [
            "https://vgosti.by/files/items/1274/icon.jpg",
            "https://vgosti.by/files/galleries/2003/4653/src.jpg",
            "https://vgosti.by/files/galleries/2003/4654/src.jpg",
            "https://vgosti.by/files/galleries/2003/4655/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Коробка ",
            "size": "диаметр 35 см ",
            "about_item": "Венок из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Клеопатра",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/kleopatra.html",
        "cost_byn": "109.0",
        "photos": [
            "https://vgosti.by/files/items/1255/icon.jpg",
            "https://vgosti.by/files/galleries/1965/4574/src.jpg",
            "https://vgosti.by/files/galleries/1965/4575/src.jpg",
            "https://vgosti.by/files/galleries/1965/4576/src.jpg",
            "https://vgosti.by/files/galleries/1965/4577/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Букет из стабилизированных цветов и сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Савона",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/savona.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/1573/icon.jpg",
            "https://vgosti.by/files/galleries/2547/6106/src.jpg",
            "https://vgosti.by/files/galleries/2547/6107/src.jpg",
            "https://vgosti.by/files/galleries/2547/6108/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Стильное крафт-кашпо ",
            "size": "Высота 25 см ",
            "about_item": "Стильная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Палермо",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/palermo.html",
        "cost_byn": "52.0",
        "photos": [
            "https://vgosti.by/files/items/1569/icon.jpg",
            "https://vgosti.by/files/galleries/2539/6095/src.jpg",
            "https://vgosti.by/files/galleries/2539/6096/src.jpg",
            "https://vgosti.by/files/galleries/2539/6097/src.jpg",
            "https://vgosti.by/files/galleries/2539/6098/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Стильное крафт-кашпо ",
            "size": "Высота 25 см ",
            "about_item": "Стильная композиция в нежных тонах "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Нотинг Хил",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/noting-hil.html",
        "cost_byn": "86.0",
        "photos": [
            "https://vgosti.by/files/items/1540/icon.jpg",
            "https://vgosti.by/files/galleries/2491/5990/src.jpg",
            "https://vgosti.by/files/galleries/2491/5991/src.jpg",
            "https://vgosti.by/files/galleries/2491/5992/src.jpg",
            "https://vgosti.by/files/galleries/2491/5993/src.jpg",
            "https://vgosti.by/files/galleries/2491/5994/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Коробочка-сумочка ",
            "size": "ширина 18-23 см ",
            "about_item": "Интерьерная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Терамо",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/teramo.html",
        "cost_byn": "52.0",
        "photos": [
            "https://vgosti.by/files/items/1570/icon.jpg",
            "https://vgosti.by/files/galleries/2541/6286/src.jpg",
            "https://vgosti.by/files/galleries/2541/6287/src.jpg",
            "https://vgosti.by/files/galleries/2541/6288/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Стильное крафт-кашпо ",
            "size": "Высота 25 см ",
            "about_item": "Стильная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Венера",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/venera.html",
        "cost_byn": "165.0",
        "photos": [
            "https://vgosti.by/files/items/1169/icon.jpg",
            "https://vgosti.by/files/galleries/1809/4108/src.jpg",
            "https://vgosti.by/files/galleries/1809/4109/src.jpg",
            "https://vgosti.by/files/galleries/1809/4110/src.jpg",
            "https://vgosti.by/files/galleries/1809/4111/src.jpg",
            "https://vgosti.by/files/galleries/1809/4112/src.jpg",
            "https://vgosti.by/files/galleries/1809/4113/src.jpg",
            "https://vgosti.by/files/galleries/1809/4114/src.jpg",
            "https://vgosti.by/files/galleries/1809/4115/src.jpg",
            "https://vgosti.by/files/galleries/1809/4116/src.jpg",
            "https://vgosti.by/files/galleries/1809/4117/src.jpg",
            "https://vgosti.by/files/galleries/1809/4118/src.jpg",
            "https://vgosti.by/files/galleries/1809/4119/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "без упаковки ",
            "size": "высота 20 см ",
            "about_item": "Букет может быть использован как свадебный "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Эдем",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/edem.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/1395/icon.jpg",
            "https://vgosti.by/files/galleries/2233/5324/src.jpg",
            "https://vgosti.by/files/galleries/2233/5325/src.jpg",
            "https://vgosti.by/files/galleries/2233/5326/src.jpg",
            "https://vgosti.by/files/galleries/2233/5327/src.jpg",
            "https://vgosti.by/files/galleries/2233/5328/src.jpg",
            "https://vgosti.by/files/galleries/2233/5329/src.jpg",
            "https://vgosti.by/files/galleries/2233/5330/src.jpg",
            "https://vgosti.by/files/galleries/2233/5331/src.jpg",
            "https://vgosti.by/files/galleries/2233/5332/src.jpg",
            "https://vgosti.by/files/galleries/2233/5333/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Корейская умная бумага ",
            "size": "высота 25-30 см ",
            "about_item": "Букет из пионовидной стабилизированной розы и сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Ореховый венок",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/orehovyj-venok.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/664/icon.jpg",
            "https://vgosti.by/files/galleries/940/2723/src.jpg",
            "https://vgosti.by/files/galleries/940/2724/src.jpg",
            "https://vgosti.by/files/galleries/940/2725/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "нет ",
            "size": "диаметр 35 см ",
            "about_item": "Рождественский венок может быть любого заказанного вами диаметра "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Болеро",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/bolero.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/1218/icon.jpg",
            "https://vgosti.by/files/galleries/1899/4370/src.jpg",
            "https://vgosti.by/files/galleries/1899/4371/src.jpg",
            "https://vgosti.by/files/galleries/1899/4372/src.jpg",
            "https://vgosti.by/files/galleries/1899/4373/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Стильная декорированная ваза из стекла ",
            "size": "высота 25-30 см ",
            "about_item": "Интерьерная композиция из сухоцветов с вазой в комплекте "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Знак внимания",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/znak-vnimaniya.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/938/icon.jpg",
            "https://vgosti.by/files/galleries/1432/2885/src.jpg",
            "https://vgosti.by/files/galleries/1432/2886/src.jpg",
            "https://vgosti.by/files/galleries/1432/2887/src.jpg",
            "https://vgosti.by/files/galleries/1432/2888/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Роза"
            ],
            "package": "Металлическое декоративное кашпо ",
            "size": "высота 18-20 см ",
            "about_item": "Композиция из сухоцветов с живой розой "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Аранжировка Блю стар",
        "item_link": "https://vgosti.by/8-marta/aranzhirovka-blyu-star.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/1739/icon.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Металлическое декоративное кашпо ",
            "size": "Диаметр 25 см ",
            "about_item": "Аранжировка из гиацинтов и орнитогалума "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Картина из цветов Морской бриз",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/kartina-iz-cvetov-morskoj-briz.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1127/icon.jpg",
            "https://vgosti.by/files/galleries/1743/3982/src.jpg",
            "https://vgosti.by/files/galleries/1743/3983/src.jpg",
            "https://vgosti.by/files/galleries/1743/3984/src.jpg",
            "https://vgosti.by/files/galleries/1743/3985/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "коробка из натурального дерева ",
            "size": "20 х 22 ",
            "about_item": "Картина из стабилизированных роз и других сухоцветов, стойкость более 5 лет "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Альбатрос",
        "item_link": "https://vgosti.by/8-marta/albatros.html",
        "cost_byn": "235.0",
        "photos": [
            "https://vgosti.by/files/items/1817/icon.jpg",
            "https://vgosti.by/files/galleries/2992/6838/src.jpg",
            "https://vgosti.by/files/galleries/2992/6839/src.jpg",
            "https://vgosti.by/files/galleries/2992/6840/src.jpg",
            "https://vgosti.by/files/galleries/2992/6841/src.jpg",
            "https://vgosti.by/files/galleries/2992/6842/src.jpg",
            "https://vgosti.by/files/galleries/2992/6843/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Букет из 51 голландского тюльпана "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Морской бриз",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/morskoj-briz.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/1079/icon.jpg",
            "https://vgosti.by/files/galleries/1676/3501/src.jpg",
            "https://vgosti.by/files/galleries/1676/3502/src.jpg",
            "https://vgosti.by/files/galleries/1676/3503/src.jpg",
            "https://vgosti.by/files/galleries/1676/3504/src.jpg",
            "https://vgosti.by/files/galleries/1676/3505/src.jpg",
            "https://vgosti.by/files/galleries/1676/3506/src.jpg",
            "https://vgosti.by/files/galleries/1676/3507/src.jpg",
            "https://vgosti.by/files/galleries/1676/3508/src.jpg",
            "https://vgosti.by/files/galleries/1676/3509/src.jpg",
            "https://vgosti.by/files/galleries/1676/3510/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Композиция из сухоцветов с морскими ракушками "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Яркость",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/yarkost.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/977/icon.jpg",
            "https://vgosti.by/files/galleries/1496/3003/src.jpg",
            "https://vgosti.by/files/galleries/1496/3004/src.jpg",
            "https://vgosti.by/files/galleries/1496/3005/src.jpg",
            "https://vgosti.by/files/galleries/1496/3006/src.jpg",
            "https://vgosti.by/files/galleries/1496/3007/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Металлическое кашпо ",
            "size": "высота 18-20 см ",
            "about_item": "Букет из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Домашний уют",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/domashnij-uyut.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/899/icon.jpg",
            "https://vgosti.by/files/galleries/1356/2744/src.jpg",
            "https://vgosti.by/files/galleries/1356/2745/src.jpg",
            "https://vgosti.by/files/galleries/1356/2746/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Керамическое кашпо ",
            "size": "высота 25-35 см ",
            "about_item": "Композиция со свечой длительного использования "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Гиацинт Эдельвейс",
        "item_link": "https://vgosti.by/8-marta/giacint-edelvejs.html",
        "cost_byn": "30.0",
        "photos": [
            "https://vgosti.by/files/items/1737/icon.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "Керамическое кашпо в ассортименте ",
            "size": "высота 15-22 см ",
            "about_item": "Ароматное трио гиацинтов в керамике "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Аранжировка Виктори",
        "item_link": "https://vgosti.by/8-marta/aranzhirovka-viktori.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/1750/icon.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "Деревянное декоративное кашпо ",
            "size": "Диаметр 22-25 см высота от 20 см ",
            "about_item": "Аранжировка из красных ароматных гиацинтов "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Аранжировка Браслав",
        "item_link": "https://vgosti.by/8-marta/aranzhirovka-braslav.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/1749/icon.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Декоративное кашпо в форме уточки ",
            "size": "диаметр 22-27 см ",
            "about_item": "Аранжировка из тюльпанов "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Гиацинты Эдисон",
        "item_link": "https://vgosti.by/8-marta/giacinty-edison.html",
        "cost_byn": "32.0",
        "photos": [
            "https://vgosti.by/files/items/1740/icon.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "Керамическое декоративное кашпо ",
            "size": "Высота 20-28 см ",
            "about_item": "Ароматное трио гиацинтов "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Премьера",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/premera.html",
        "cost_byn": "159.0",
        "photos": [
            "https://vgosti.by/files/items/1767/icon.jpg",
            "https://vgosti.by/files/galleries/2898/6675/src.jpg",
            "https://vgosti.by/files/galleries/2898/6676/src.jpg",
            "https://vgosti.by/files/galleries/2898/6677/src.jpg",
            "https://vgosti.by/files/galleries/2898/6678/src.jpg",
            "https://vgosti.by/files/galleries/2898/6679/src.jpg",
            "https://vgosti.by/files/galleries/2898/6680/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 27-30 см ",
            "about_item": "Композиция из сухоцветов и хлопка "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Секрет",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/sekret.html",
        "cost_byn": "128.0",
        "photos": [
            "https://vgosti.by/files/items/1722/icon.jpg",
            "https://vgosti.by/files/galleries/2821/6611/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 30 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Весеннее пробуждение",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/vesennee-probuzhdenie.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/1784/icon.jpg",
            "https://vgosti.by/files/galleries/2932/6732/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Корейская умная бумага ",
            "size": "Высота 37, диаметр 22 ",
            "about_item": "Стильный букет из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Весенняя романтика",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/vesennyaya-romantika.html",
        "cost_byn": "149.0",
        "photos": [
            "https://vgosti.by/files/items/1779/icon.jpg",
            "https://vgosti.by/files/galleries/2922/6715/src.jpg",
            "https://vgosti.by/files/galleries/2922/6716/src.jpg",
            "https://vgosti.by/files/galleries/2922/6717/src.jpg",
            "https://vgosti.by/files/galleries/2922/6718/src.jpg",
            "https://vgosti.by/files/galleries/2922/6719/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Декоративная шляпная коробка ",
            "size": "Высота 24 см, диаметр 22 см ",
            "about_item": "Стильная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Объятия",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/obyatiya.html",
        "cost_byn": "156.0",
        "photos": [
            "https://vgosti.by/files/items/1704/icon.jpg",
            "https://vgosti.by/files/galleries/2785/6553/src.jpg",
            "https://vgosti.by/files/galleries/2785/6554/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Сумочка ",
            "size": "ширина 20 см высота 15-17 см ",
            "about_item": "Композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Искушение",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/iskushenie.html",
        "cost_byn": "165.0",
        "photos": [
            "https://vgosti.by/files/items/1766/icon.jpg",
            "https://vgosti.by/files/galleries/2896/6669/src.jpg",
            "https://vgosti.by/files/galleries/2896/6670/src.jpg",
            "https://vgosti.by/files/galleries/2896/6671/src.jpg",
            "https://vgosti.by/files/galleries/2896/6672/src.jpg",
            "https://vgosti.by/files/galleries/2896/6673/src.jpg",
            "https://vgosti.by/files/galleries/2896/6674/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Бархатная шляпная коробка ",
            "size": "высота 25 см ",
            "about_item": "Композиция со стабилизированной розой "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Гиацинт Эдельвейс с птичкой",
        "item_link": "https://vgosti.by/8-marta/giacint-edelvejs-s-ptichkoj.html",
        "cost_byn": "34.0",
        "photos": [
            "https://vgosti.by/files/items/1738/icon.jpg",
            "https://vgosti.by/files/galleries/2845/6630/src.jpg",
            "https://vgosti.by/files/galleries/2845/6631/src.jpg",
            "https://vgosti.by/files/galleries/2845/6632/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "Керамическое кашпо ",
            "size": "Высота 12-22 см ",
            "about_item": "Декоративная высадка ароматных гиацинтов с птичкой "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Лавандовый сон",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/lavandovyj-son.html",
        "cost_byn": "159.0",
        "photos": [
            "https://vgosti.by/files/items/1780/icon.jpg",
            "https://vgosti.by/files/galleries/2924/6720/src.jpg",
            "https://vgosti.by/files/galleries/2924/6721/src.jpg",
            "https://vgosti.by/files/galleries/2924/6722/src.jpg",
            "https://vgosti.by/files/galleries/2924/6723/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Декоративная шляпная коробка ",
            "size": "Высота 24 см, диаметр 22 см ",
            "about_item": "Стильная композиция из сухоцветов и стабилизированной розы "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Летний бриз",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/letnij-briz.html",
        "cost_byn": "185.0",
        "photos": [
            "https://vgosti.by/files/items/1774/icon.jpg",
            "https://vgosti.by/files/galleries/2912/6695/src.jpg",
            "https://vgosti.by/files/galleries/2912/6696/src.jpg",
            "https://vgosti.by/files/galleries/2912/6697/src.jpg",
            "https://vgosti.by/files/galleries/2912/6698/src.jpg",
            "https://vgosti.by/files/galleries/2912/6699/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Большая шляпная коробка ",
            "size": "Высота 37 см, диаметр 30 см ",
            "about_item": "Гарантия качества сухоцветов 5 лет "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Комильфо",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/komilfo.html",
        "cost_byn": "72.0",
        "photos": [
            "https://vgosti.by/files/items/1681/icon.jpg",
            "https://vgosti.by/files/galleries/2741/6458/src.jpg",
            "https://vgosti.by/files/galleries/2741/6459/src.jpg",
            "https://vgosti.by/files/galleries/2741/6460/src.jpg",
            "https://vgosti.by/files/galleries/2741/6461/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Бархатная шляпная коробка ",
            "size": "Высота 23 см, диаметр 12 ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Французский чай",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/francuzskij-chaj.html",
        "cost_byn": "105.0",
        "photos": [
            "https://vgosti.by/files/items/1771/icon.jpg",
            "https://vgosti.by/files/galleries/2906/6686/src.jpg",
            "https://vgosti.by/files/galleries/2906/6687/src.jpg",
            "https://vgosti.by/files/galleries/2906/6688/src.jpg",
            "https://vgosti.by/files/galleries/2906/6689/src.jpg",
            "https://vgosti.by/files/galleries/2906/6690/src.jpg",
            "https://vgosti.by/files/galleries/2906/6691/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Лаванда"
            ],
            "package": "Керамическая кружка с тарелочкой ",
            "size": "диметр 20 см ",
            "about_item": "Лаванда с натуральным хлопком в чашке ручной работы "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Океан",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/okean.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/1679/icon.jpg",
            "https://vgosti.by/files/galleries/2737/6442/src.jpg",
            "https://vgosti.by/files/galleries/2737/6443/src.jpg",
            "https://vgosti.by/files/galleries/2737/6444/src.jpg",
            "https://vgosti.by/files/galleries/2737/6445/src.jpg",
            "https://vgosti.by/files/galleries/2737/6446/src.jpg",
            "https://vgosti.by/files/galleries/2737/6447/src.jpg",
            "https://vgosti.by/files/galleries/2737/6448/src.jpg",
            "https://vgosti.by/files/galleries/2737/6449/src.jpg",
            "https://vgosti.by/files/galleries/2737/6450/src.jpg",
            "https://vgosti.by/files/galleries/2737/6451/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Коробка в форме сумочки ",
            "size": "11 х 15 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Млечный путь",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/mlechnyj-put.html",
        "cost_byn": "175.0",
        "photos": [
            "https://vgosti.by/files/items/1769/icon.jpg",
            "https://vgosti.by/files/galleries/2902/6681/src.jpg",
            "https://vgosti.by/files/galleries/2902/6682/src.jpg",
            "https://vgosti.by/files/galleries/2902/6683/src.jpg",
            "https://vgosti.by/files/galleries/2902/6684/src.jpg",
            "https://vgosti.by/files/galleries/2902/6685/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 35-37 см ",
            "about_item": "Композиция из сухоцветов и хлопка "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Вишневое суфле",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/vishnevoe-sufle.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1683/icon.jpg",
            "https://vgosti.by/files/galleries/2745/6468/src.jpg",
            "https://vgosti.by/files/galleries/2745/6469/src.jpg",
            "https://vgosti.by/files/galleries/2745/6470/src.jpg",
            "https://vgosti.by/files/galleries/2745/6471/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Бархатная шляпная коробка ",
            "size": "Высота 23 см, диаметр 12 ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Чарующая мечта",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/charuyucshaya-mechta.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/1606/icon.jpg",
            "https://vgosti.by/files/galleries/2601/6162/src.jpg",
            "https://vgosti.by/files/galleries/2601/6163/src.jpg",
            "https://vgosti.by/files/galleries/2601/6164/src.jpg",
            "https://vgosti.by/files/galleries/2601/6165/src.jpg",
            "https://vgosti.by/files/galleries/2601/6166/src.jpg",
            "https://vgosti.by/files/galleries/2601/6167/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Дизайнерская коробка ",
            "size": "Диаметр 20-23см ",
            "about_item": "Композиция из стабилизированных цветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Ирландия",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/irlandiya.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/1600/icon.jpg",
            "https://vgosti.by/files/galleries/2589/6140/src.jpg",
            "https://vgosti.by/files/galleries/2589/6141/src.jpg",
            "https://vgosti.by/files/galleries/2589/6142/src.jpg",
            "https://vgosti.by/files/galleries/2589/6143/src.jpg",
            "https://vgosti.by/files/galleries/2589/6144/src.jpg",
            "https://vgosti.by/files/galleries/2589/6145/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Лаванда",
                "Хлопок"
            ],
            "package": "Стильное керамическое кашпо ",
            "size": "ширина 24 см ",
            "about_item": "Композиция из стабилизированного мха, лаванды и хлопка "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Очарование осени",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/ocharovanie-oseni.html",
        "cost_byn": "78.0",
        "photos": [
            "https://vgosti.by/files/items/1599/icon.jpg",
            "https://vgosti.by/files/galleries/2587/6136/src.jpg",
            "https://vgosti.by/files/galleries/2587/6137/src.jpg",
            "https://vgosti.by/files/galleries/2587/6138/src.jpg",
            "https://vgosti.by/files/galleries/2587/6139/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Кашпо из природных материалов ",
            "size": "Высота 40 см диаметр 28 см ",
            "about_item": "Стильная композиция из сухоцветов в осенней гамме "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Чуткость",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/chutkost.html",
        "cost_byn": "109.0",
        "photos": [
            "https://vgosti.by/files/items/1531/icon.jpg",
            "https://vgosti.by/files/galleries/2473/5933/src.jpg",
            "https://vgosti.by/files/galleries/2473/5934/src.jpg",
            "https://vgosti.by/files/galleries/2473/5935/src.jpg",
            "https://vgosti.by/files/galleries/2473/5936/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Композиция из сухоцветов и стабилизированных цветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Касабланка",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/kasablanka.html",
        "cost_byn": "78.0",
        "photos": [
            "https://vgosti.by/files/items/1632/icon.jpg",
            "https://vgosti.by/files/galleries/2653/6280/src.jpg",
            "https://vgosti.by/files/galleries/2653/6281/src.jpg",
            "https://vgosti.by/files/galleries/2653/6282/src.jpg",
            "https://vgosti.by/files/galleries/2653/6283/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 25-27 см ",
            "about_item": "Композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Ментол",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/mentol.html",
        "cost_byn": "93.0",
        "photos": [
            "https://vgosti.by/files/items/1545/icon.jpg",
            "https://vgosti.by/files/galleries/2501/6005/src.jpg",
            "https://vgosti.by/files/galleries/2501/6006/src.jpg",
            "https://vgosti.by/files/galleries/2501/6007/src.jpg",
            "https://vgosti.by/files/galleries/2501/6008/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Композиция из сухоцветов и стабилизированных цветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Лиловый водопад",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/lilovyj-vodopad.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/1539/icon.jpg",
            "https://vgosti.by/files/galleries/2489/5985/src.jpg",
            "https://vgosti.by/files/galleries/2489/5986/src.jpg",
            "https://vgosti.by/files/galleries/2489/5987/src.jpg",
            "https://vgosti.by/files/galleries/2489/5988/src.jpg",
            "https://vgosti.by/files/galleries/2489/5989/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Букет из сухоцветов и стабилизированных цветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Мельбурн",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/melburn.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1634/icon.jpg",
            "https://vgosti.by/files/galleries/2657/6284/src.jpg",
            "https://vgosti.by/files/galleries/2657/6285/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Умная корейская бумага ",
            "size": "Высота 35-40 см ",
            "about_item": "Гарантия качества сухоцветов 5 лет "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Кремовые сны",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/kremovye-sny.html",
        "cost_byn": "139.0",
        "photos": [
            "https://vgosti.by/files/items/1547/icon.jpg",
            "https://vgosti.by/files/galleries/2505/6013/src.jpg",
            "https://vgosti.by/files/galleries/2505/6014/src.jpg",
            "https://vgosti.by/files/galleries/2505/6015/src.jpg",
            "https://vgosti.by/files/galleries/2505/6016/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Композиция из стабилизированной герберы и сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Аранжировка Мадам Софи",
        "item_link": "https://vgosti.by/8-marta/aranzhirovka-madam-sofi.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1744/icon.jpg",
            "https://vgosti.by/files/galleries/2857/6633/src.jpg",
            "https://vgosti.by/files/galleries/2857/6634/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт",
                "Тюльпаны"
            ],
            "package": "Плетеное круглое кашпо на ножках ",
            "size": "диаметр 20 см высота 30см ",
            "about_item": "Весенняя аранжировка из гиацинтов и тюльпанов "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Оранжевый пионовидный тюльпан сорт Принцесс",
        "item_link": "https://vgosti.by/8-marta/oranzhevyj-pionovidnyj-tyulpan-sort-princess.html",
        "cost_byn": "3.5",
        "photos": [
            "https://vgosti.by/files/items/1752/icon.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Без упаковки ",
            "size": "Высота 35-40 см ",
            "about_item": "Тюльпан пр-во Голландия "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Аранжировка Париж",
        "item_link": "https://vgosti.by/8-marta/aranzhirovka-parizh.html",
        "cost_byn": "22.0",
        "photos": [
            "https://vgosti.by/files/items/1746/icon.jpg",
            "https://vgosti.by/files/galleries/2861/6635/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "Плетеное кашпо ",
            "size": "Высота 15-20 см ",
            "about_item": "Аранжировка из гиацинтов и орнитогалума "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Chanel с ароматом лаванды",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/chanel-s-aromatom-lavandy.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/1597/icon.jpg",
            "https://vgosti.by/files/galleries/2583/6126/src.jpg",
            "https://vgosti.by/files/galleries/2583/6127/src.jpg",
            "https://vgosti.by/files/galleries/2583/6128/src.jpg",
            "https://vgosti.by/files/galleries/2583/6129/src.jpg",
            "https://vgosti.by/files/galleries/2583/6130/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Лаванда"
            ],
            "package": "Брендовая упаковка Chanel ",
            "size": "Высота 45 см ",
            "about_item": "Букет из лаванды в брендовой упаковке "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Сиена",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/siena.html",
        "cost_byn": "56.0",
        "photos": [
            "https://vgosti.by/files/items/1571/icon.jpg",
            "https://vgosti.by/files/galleries/2543/6101/src.jpg",
            "https://vgosti.by/files/galleries/2543/6102/src.jpg",
            "https://vgosti.by/files/galleries/2543/6103/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Стильное керамическое кашпо ",
            "size": "высота 22 см ",
            "about_item": "Стильная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Филадельфия",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/filadelfiya.html",
        "cost_byn": "165.0",
        "photos": [
            "https://vgosti.by/files/items/1215/icon.jpg",
            "https://vgosti.by/files/galleries/1893/4342/src.jpg",
            "https://vgosti.by/files/galleries/1893/4343/src.jpg",
            "https://vgosti.by/files/galleries/1893/4344/src.jpg",
            "https://vgosti.by/files/galleries/1893/4345/src.jpg",
            "https://vgosti.by/files/galleries/1893/4346/src.jpg",
            "https://vgosti.by/files/galleries/1893/4347/src.jpg",
            "https://vgosti.by/files/galleries/1893/4348/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20 см ",
            "about_item": "Интерьерная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Французский прованс",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/francuzskij-provans.html",
        "cost_byn": "195.0",
        "photos": [
            "https://vgosti.by/files/items/1233/icon.jpg",
            "https://vgosti.by/files/galleries/1923/4422/src.jpg",
            "https://vgosti.by/files/galleries/1923/4423/src.jpg",
            "https://vgosti.by/files/galleries/1923/4424/src.jpg",
            "https://vgosti.by/files/galleries/1923/4425/src.jpg"
        ],
        "description": {
            "composition": [
                "Лаванда"
            ],
            "package": "Декоративное кашпо ",
            "size": "ширина 25-30 см ",
            "about_item": "Ароматная французская лаванда "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Интерьерная композиция Корица",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/interernaya-kompoziciya-korica.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1281/icon.jpg",
            "https://vgosti.by/files/galleries/2015/4677/src.jpg",
            "https://vgosti.by/files/galleries/2015/4678/src.jpg",
            "https://vgosti.by/files/galleries/2015/4679/src.jpg",
            "https://vgosti.by/files/galleries/2015/4680/src.jpg",
            "https://vgosti.by/files/galleries/2015/4681/src.jpg",
            "https://vgosti.by/files/galleries/2015/4682/src.jpg",
            "https://vgosti.by/files/galleries/2015/4683/src.jpg",
            "https://vgosti.by/files/galleries/2015/4684/src.jpg",
            "https://vgosti.by/files/galleries/2015/4685/src.jpg",
            "https://vgosti.by/files/galleries/2015/4686/src.jpg",
            "https://vgosti.by/files/galleries/2015/4687/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "коробка ",
            "size": "Высота 70-80 см ",
            "about_item": "Интерьерная композиция в зимнем стиле "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Бриза",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/briza.html",
        "cost_byn": "29.0",
        "photos": [
            "https://vgosti.by/files/items/1528/icon.jpg",
            "https://vgosti.by/files/galleries/2467/5913/src.jpg",
            "https://vgosti.by/files/galleries/2467/5914/src.jpg",
            "https://vgosti.by/files/galleries/2467/5915/src.jpg",
            "https://vgosti.by/files/galleries/2467/5916/src.jpg",
            "https://vgosti.by/files/galleries/2467/5917/src.jpg",
            "https://vgosti.by/files/galleries/2467/5918/src.jpg",
            "https://vgosti.by/files/galleries/2467/5919/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Корейская умная бумага ",
            "size": "Высота 30 -32 см ",
            "about_item": "Букет может быть в трех оттенках: крем, мята, лаванда "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Интерьерная композиция Предвкушение",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/interernaya-kompoziciya-predvkushenie.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/1284/icon.jpg",
            "https://vgosti.by/files/galleries/2021/4699/src.jpg",
            "https://vgosti.by/files/galleries/2021/4700/src.jpg",
            "https://vgosti.by/files/galleries/2021/4701/src.jpg",
            "https://vgosti.by/files/galleries/2021/4702/src.jpg",
            "https://vgosti.by/files/galleries/2021/4703/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 60-70 см ",
            "about_item": "Интерьерная композиция в зимнем стиле "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Суприм",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/suprim.html",
        "cost_byn": "92.0",
        "photos": [
            "https://vgosti.by/files/items/1343/icon.jpg",
            "https://vgosti.by/files/galleries/2133/4990/src.jpg",
            "https://vgosti.by/files/galleries/2133/4991/src.jpg",
            "https://vgosti.by/files/galleries/2133/4992/src.jpg",
            "https://vgosti.by/files/galleries/2133/4993/src.jpg",
            "https://vgosti.by/files/galleries/2133/4994/src.jpg",
            "https://vgosti.by/files/galleries/2133/4995/src.jpg",
            "https://vgosti.by/files/galleries/2133/4996/src.jpg",
            "https://vgosti.by/files/galleries/2133/4997/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 25-32 см ",
            "about_item": "Букет из стабилизированных цветов в дизайнерской вазе "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Интрига",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/intriga.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/960/icon.jpg",
            "https://vgosti.by/files/galleries/1476/2970/src.jpg",
            "https://vgosti.by/files/galleries/1476/2972/src.jpg",
            "https://vgosti.by/files/galleries/1476/2971/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Конверт ",
            "size": "высота 20-25см ",
            "about_item": "Композиция длительного использования "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Солнечная весна",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/solnechnaya-vesna.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1060/icon.jpg",
            "https://vgosti.by/files/galleries/1638/3358/src.jpg",
            "https://vgosti.by/files/galleries/1638/3359/src.jpg",
            "https://vgosti.by/files/galleries/1638/3360/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "15-20 см ",
            "about_item": "Интерьерная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Сопрано",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/soprano.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/987/icon.jpg",
            "https://vgosti.by/files/galleries/1512/3039/src.jpg",
            "https://vgosti.by/files/galleries/1512/3040/src.jpg",
            "https://vgosti.by/files/galleries/1512/3041/src.jpg",
            "https://vgosti.by/files/galleries/1512/3042/src.jpg",
            "https://vgosti.by/files/galleries/1512/3043/src.jpg",
            "https://vgosti.by/files/galleries/1512/3044/src.jpg",
            "https://vgosti.by/files/galleries/1512/3045/src.jpg",
            "https://vgosti.by/files/galleries/1512/3046/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Лагурус",
                "Хлопок"
            ],
            "package": "Шляпная коробка ",
            "size": "15-20 см ",
            "about_item": "Букет из сухоцветов с натуральным хлокрм "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Комплимент гиацинтов",
        "item_link": "https://vgosti.by/8-marta/kompliment-giacintov.html",
        "cost_byn": "29.0",
        "photos": [
            "https://vgosti.by/files/items/1732/icon.jpg",
            "https://vgosti.by/files/galleries/2833/6625/src.jpg",
            "https://vgosti.by/files/galleries/2833/6626/src.jpg",
            "https://vgosti.by/files/galleries/2833/6627/src.jpg",
            "https://vgosti.by/files/galleries/2833/6628/src.jpg",
            "https://vgosti.by/files/galleries/2833/6629/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "Умная корейская бумага ",
            "size": "Высота 25 см ",
            "about_item": "Ароматный букет из гиацинтов - высокой стойкости "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Синее небо",
        "item_link": "https://vgosti.by/8-marta/sinee-nebo.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/1735/icon.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "Умная корейская бумага ",
            "size": "Высота 25-30 см ",
            "about_item": "Ароматный букет из гиацинтов - высокой стойкости "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Обжигающие чувства",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/obzhigayucshie-chuvstva.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/988/icon.jpg",
            "https://vgosti.by/files/galleries/1514/3047/src.jpg",
            "https://vgosti.by/files/galleries/1514/3048/src.jpg",
            "https://vgosti.by/files/galleries/1514/3049/src.jpg",
            "https://vgosti.by/files/galleries/1514/3050/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Композиция из сухоцветов и стабилизированных цветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Прованс",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/provans.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/880/icon.jpg",
            "https://vgosti.by/files/galleries/1320/2607/src.jpg",
            "https://vgosti.by/files/galleries/1320/2608/src.jpg",
            "https://vgosti.by/files/galleries/1320/2609/src.jpg",
            "https://vgosti.by/files/galleries/1320/2610/src.jpg",
            "https://vgosti.by/files/galleries/1320/2611/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Лаванда"
            ],
            "package": "Металлическое кашпо с лавандой и колосьями ",
            "size": "диаметр 25-27 высота 18-20 ",
            "about_item": "Букет из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Лавандовый тюльпан сорт Кэнди Принц",
        "item_link": "https://vgosti.by/8-marta/lavandovyj-tyulpan-sort-kendi-princ.html",
        "cost_byn": "3.5",
        "photos": [
            "https://vgosti.by/files/items/1755/icon.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Без упаковки ",
            "size": "Диаметр 35-45 см ",
            "about_item": "Тюльпан пр-во Польша "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Синеглазка",
        "item_link": "https://vgosti.by/8-marta/sineglazka.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/1733/icon.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "Умная корейская бумага ",
            "size": "Высота 25 см ",
            "about_item": "Ароматный стойки букет "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Бело-розовый тюльпан Эксклюзив",
        "item_link": "https://vgosti.by/8-marta/belo-rozovyj-tyulpan-eksklyuziv.html",
        "cost_byn": "3.5",
        "photos": [
            "https://vgosti.by/files/items/1758/icon.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Без упаковки ",
            "size": "Высота 35-40 см ",
            "about_item": "Тюльпан пр-во Голландия "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Черный тюльпан Блэк Джэк",
        "item_link": "https://vgosti.by/8-marta/chernyj-tyulpan-blek-dzhek.html",
        "cost_byn": "3.5",
        "photos": [
            "https://vgosti.by/files/items/1757/icon.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Без упаковки ",
            "size": "Высота 35-40 см ",
            "about_item": "Тюльпан пр-во Голландия "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Розовый тюльпан сорт Джумбо",
        "item_link": "https://vgosti.by/8-marta/rozovyj-tyulpan-sort-dzhumbo.html",
        "cost_byn": "3.0",
        "photos": [
            "https://vgosti.by/files/items/1756/icon.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Без упаковки ",
            "size": "Высота 30-35 см ",
            "about_item": "Тюльпан пр-во Польша "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Лаванда зимой",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/lavanda-zimoj.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/697/icon.jpg",
            "https://vgosti.by/files/galleries/996/1920/src.jpg"
        ],
        "description": {
            "composition": [
                "Лаванда"
            ],
            "package": "без упаковки ",
            "size": "15-20 см ",
            "about_item": "Ароматная лаванда с шишками "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Воздушность",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/vozdushnost.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/955/icon.jpg",
            "https://vgosti.by/files/galleries/1466/2964/src.jpg",
            "https://vgosti.by/files/galleries/1466/2965/src.jpg",
            "https://vgosti.by/files/galleries/1466/2966/src.jpg",
            "https://vgosti.by/files/galleries/1466/2967/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Конверт ",
            "size": "высота 18-20 см ",
            "about_item": "Композиция из сухоцветов - длительного использования "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Легкость",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/legkost.html",
        "cost_byn": "42.0",
        "photos": [
            "https://vgosti.by/files/items/959/icon.jpg",
            "https://vgosti.by/files/galleries/1474/2968/src.jpg",
            "https://vgosti.by/files/galleries/1474/2969/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Корейская бумага ",
            "size": "высота 25см ",
            "about_item": "Букет из сухоцветов, длительного использования "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Дикая вишня",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/dikaya-vishnya.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1340/icon.jpg",
            "https://vgosti.by/files/galleries/2127/4973/src.jpg",
            "https://vgosti.by/files/galleries/2127/4974/src.jpg",
            "https://vgosti.by/files/galleries/2127/4975/src.jpg",
            "https://vgosti.by/files/galleries/2127/4976/src.jpg",
            "https://vgosti.by/files/galleries/2127/4977/src.jpg",
            "https://vgosti.by/files/galleries/2127/4978/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 25-30 см ",
            "about_item": "Букет из стабилизированных цветов и сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Сканди",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/skandi.html",
        "cost_byn": "73.0",
        "photos": [
            "https://vgosti.by/files/items/1162/icon.jpg",
            "https://vgosti.by/files/galleries/1795/4052/src.jpg",
            "https://vgosti.by/files/galleries/1795/4053/src.jpg",
            "https://vgosti.by/files/galleries/1795/4054/src.jpg",
            "https://vgosti.by/files/galleries/1795/4055/src.jpg",
            "https://vgosti.by/files/galleries/1795/4056/src.jpg",
            "https://vgosti.by/files/galleries/1795/4057/src.jpg",
            "https://vgosti.by/files/galleries/1795/4058/src.jpg",
            "https://vgosti.by/files/galleries/1795/4059/src.jpg",
            "https://vgosti.by/files/galleries/1795/4060/src.jpg",
            "https://vgosti.by/files/galleries/1795/4061/src.jpg",
            "https://vgosti.by/files/galleries/1795/4062/src.jpg",
            "https://vgosti.by/files/galleries/1795/4063/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Керамическое кашпо ",
            "size": "высота 35 см ",
            "about_item": "Интерьерная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Венок Вдохновение",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/venok-vdohnovenie.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/961/icon.jpg",
            "https://vgosti.by/files/galleries/1478/2973/src.jpg",
            "https://vgosti.by/files/galleries/1478/2975/src.jpg",
            "https://vgosti.by/files/galleries/1478/2974/src.jpg",
            "https://vgosti.by/files/galleries/1478/2976/src.jpg",
            "https://vgosti.by/files/galleries/1478/2977/src.jpg",
            "https://vgosti.by/files/galleries/1478/2978/src.jpg",
            "https://vgosti.by/files/galleries/1478/2979/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "целофан ",
            "size": "Диаметр 40 см ",
            "about_item": "Композиция длительного использования "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Лаванда XXXL",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/lavanda-xxxl.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/888/icon.jpg",
            "https://vgosti.by/files/galleries/1336/2653/src.jpg",
            "https://vgosti.by/files/galleries/1336/2654/src.jpg",
            "https://vgosti.by/files/galleries/1336/2655/src.jpg",
            "https://vgosti.by/files/galleries/1336/2656/src.jpg",
            "https://vgosti.by/files/galleries/1336/2657/src.jpg",
            "https://vgosti.by/files/galleries/1336/2658/src.jpg",
            "https://vgosti.by/files/galleries/1336/2659/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Лаванда"
            ],
            "package": "Кружево ",
            "size": "Диаметр 30 см ",
            "about_item": "Ароматный букет большого размера "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Нежный лагурус",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/nezhnyj-lagurus.html",
        "cost_byn": "107.0",
        "photos": [
            "https://vgosti.by/files/items/945/icon.jpg",
            "https://vgosti.by/files/galleries/1445/2900/src.jpg",
            "https://vgosti.by/files/galleries/1445/2901/src.jpg",
            "https://vgosti.by/files/galleries/1445/2902/src.jpg",
            "https://vgosti.by/files/galleries/1445/2903/src.jpg",
            "https://vgosti.by/files/galleries/1445/2904/src.jpg",
            "https://vgosti.by/files/galleries/1445/2905/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 15-20 см ",
            "about_item": "Интерьерная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Интерьерная коробка с вином",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/interernaya-korobka-s-vinom.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/890/icon.jpg",
            "https://vgosti.by/files/galleries/1340/2679/src.jpg",
            "https://vgosti.by/files/galleries/1340/2680/src.jpg",
            "https://vgosti.by/files/galleries/1340/2681/src.jpg",
            "https://vgosti.by/files/galleries/1340/2682/src.jpg",
            "https://vgosti.by/files/galleries/1340/2683/src.jpg",
            "https://vgosti.by/files/galleries/1340/2684/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Деревянная коробка ",
            "size": "размеры 30 х 38 см ",
            "about_item": "В стоимость не входит стоимость вина "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Лаванда M",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/lavanda-m.html",
        "cost_byn": "35.0",
        "photos": [
            "https://vgosti.by/files/items/322/icon.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Французский крафт ",
            "size": "до 15-20 см ",
            "about_item": "Лаванда прекрасно насыщает воздух лавандовым ароматом и тем самым, отпугивает моль, мух и мошек "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Люблю",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/lyublyu.html",
        "cost_byn": "72.0",
        "photos": [
            "https://vgosti.by/files/items/1710/icon.jpg",
            "https://vgosti.by/files/galleries/2797/6564/src.jpg",
            "https://vgosti.by/files/galleries/2797/6565/src.jpg",
            "https://vgosti.by/files/galleries/2797/6566/src.jpg",
            "https://vgosti.by/files/galleries/2797/6567/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус"
            ],
            "package": "ленты ",
            "size": "Высота 50- 55 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Зимняя лаванда",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/zimnyaya-lavanda.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/669/icon.jpg",
            "https://vgosti.by/files/galleries/950/1886/src.jpg"
        ],
        "description": {
            "composition": [
                "Лаванда",
                "Хлопок"
            ],
            "package": "без упаковки ",
            "size": "высота 32 см ",
            "about_item": "Букет из лаванды и хлопка "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Вместе",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/vmeste.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/1705/icon.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-22 см ",
            "about_item": "Композиция в форме сердца из сухоцветов "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "А может это любовь...",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/a-mozhet-eto-lyubov.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1721/icon.jpg",
            "https://vgosti.by/files/galleries/2819/6608/src.jpg",
            "https://vgosti.by/files/galleries/2819/6610/src.jpg",
            "https://vgosti.by/files/galleries/2819/6609/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Умная корейская бумага ",
            "size": "Высота 25 -30 см ",
            "about_item": "Букет в форме сердца из сухоцветов "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Выходи... за меня",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/vyhodi-za-menya.html",
        "cost_byn": "210.0",
        "photos": [
            "https://vgosti.by/files/items/1719/icon.jpg",
            "https://vgosti.by/files/galleries/2815/6594/src.jpg",
            "https://vgosti.by/files/galleries/2815/6595/src.jpg",
            "https://vgosti.by/files/galleries/2815/6596/src.jpg",
            "https://vgosti.by/files/galleries/2815/6597/src.jpg",
            "https://vgosti.by/files/galleries/2815/6598/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Ранункулюс",
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая",
                "Хлопок"
            ],
            "package": "Коробка в форме сердца с крышкой ",
            "size": "Диаметр 35 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Райское сердце",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/rajskoe-serdce.html",
        "cost_byn": "139.0",
        "photos": [
            "https://vgosti.by/files/items/1405/icon.jpg",
            "https://vgosti.by/files/galleries/2253/5365/src.jpg",
            "https://vgosti.by/files/galleries/2253/5366/src.jpg",
            "https://vgosti.by/files/galleries/2253/5367/src.jpg",
            "https://vgosti.by/files/galleries/2253/5368/src.jpg"
        ],
        "description": {
            "composition": [
                "Экзотика"
            ],
            "package": "Картонная подарочная упаковка ",
            "size": "диаметр 25-30 см ",
            "about_item": "Композиция высокой стойкости "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Сердце маркизы",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/serdce-markizy.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1406/icon.jpg",
            "https://vgosti.by/files/galleries/2255/5369/src.jpg",
            "https://vgosti.by/files/galleries/2255/5370/src.jpg",
            "https://vgosti.by/files/galleries/2255/5371/src.jpg",
            "https://vgosti.by/files/galleries/2255/5372/src.jpg",
            "https://vgosti.by/files/galleries/2255/5373/src.jpg",
            "https://vgosti.by/files/galleries/2255/5374/src.jpg",
            "https://vgosti.by/files/galleries/2255/5375/src.jpg",
            "https://vgosti.by/files/galleries/2255/5376/src.jpg",
            "https://vgosti.by/files/galleries/2255/5377/src.jpg",
            "https://vgosti.by/files/galleries/2255/5378/src.jpg"
        ],
        "description": {
            "composition": [
                "Экзотика"
            ],
            "package": "Подарочная коробка ",
            "size": "диаметр 29-34 см ",
            "about_item": "Композиция высокой стойкости "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Чудный поцелуй",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/chudnyj-poceluj.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/1715/icon.jpg",
            "https://vgosti.by/files/galleries/2807/6616/src.jpg",
            "https://vgosti.by/files/galleries/2807/6617/src.jpg",
            "https://vgosti.by/files/galleries/2807/6618/src.jpg",
            "https://vgosti.by/files/galleries/2807/6619/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Диантус",
                "Роза",
                "Роза кустовая",
                "Скимия"
            ],
            "package": "ленты ",
            "size": "Диаметр 25-33см ",
            "about_item": "Букет в форме сердца "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Капель",
        "item_link": "https://vgosti.by/8-marta/kapel.html",
        "cost_byn": "37.0",
        "photos": [
            "https://vgosti.by/files/items/1731/icon.jpg",
            "https://vgosti.by/files/galleries/2831/6620/src.jpg",
            "https://vgosti.by/files/galleries/2831/6621/src.jpg",
            "https://vgosti.by/files/galleries/2831/6622/src.jpg",
            "https://vgosti.by/files/galleries/2831/6623/src.jpg",
            "https://vgosti.by/files/galleries/2831/6624/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Анемон",
                "Гиацинт",
                "Тюльпаны",
                "Экзотика"
            ],
            "package": "Умная корейская бумага ",
            "size": "Высота 25 см ",
            "about_item": "Ароматный букет из весенних цветов "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Любовь",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/lyubov.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/1706/icon.jpg",
            "https://vgosti.by/files/galleries/2789/6555/src.jpg",
            "https://vgosti.by/files/galleries/2789/6556/src.jpg",
            "https://vgosti.by/files/galleries/2789/6557/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Диантус",
                "Ранункулюс",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "Коробка- сердце ",
            "size": "Диаметр 25 см ",
            "about_item": "Композиция высокой стойкости "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Свидание",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/svidanie.html",
        "cost_byn": "159.0",
        "photos": [
            "https://vgosti.by/files/items/1365/icon.jpg",
            "https://vgosti.by/files/galleries/2177/5164/src.jpg",
            "https://vgosti.by/files/galleries/2177/5165/src.jpg",
            "https://vgosti.by/files/galleries/2177/5166/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Оксипеталум"
            ],
            "package": "без упаковки ",
            "size": "диаметр 35 см ",
            "about_item": "Букет-сердце из стойких цветов "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Коробка с цветами Радуга",
        "item_link": "https://vgosti.by/cvety-v-korobke/korobka-s-cvetami-raduga.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/312/icon.jpg",
            "https://vgosti.by/files/galleries/297/3854/src.jpg",
            "https://vgosti.by/files/galleries/297/3855/src.jpg",
            "https://vgosti.by/files/galleries/297/3856/src.jpg",
            "https://vgosti.by/files/galleries/297/3857/src.jpg",
            "https://vgosti.by/files/galleries/297/3858/src.jpg"
        ],
        "description": {
            "composition": [
                "Хризантема"
            ],
            "package": "Коробка ",
            "size": "до 15-20 см ",
            "about_item": "Приятный сюрприз к любому поводу "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Крылья любви",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/krylya-lyubvi.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/1175/icon.jpg",
            "https://vgosti.by/files/galleries/1821/4146/src.jpg",
            "https://vgosti.by/files/galleries/1821/4147/src.jpg",
            "https://vgosti.by/files/galleries/1821/4148/src.jpg",
            "https://vgosti.by/files/galleries/1821/4149/src.jpg",
            "https://vgosti.by/files/galleries/1821/4150/src.jpg",
            "https://vgosti.by/files/galleries/1821/4151/src.jpg",
            "https://vgosti.by/files/galleries/1821/4152/src.jpg",
            "https://vgosti.by/files/galleries/1821/4153/src.jpg"
        ],
        "description": {
            "composition": [
                "Экзотика"
            ],
            "package": "Деревянное кашпо ",
            "size": "диаметр 35 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Коробка с макарунами L",
        "item_link": "https://vgosti.by/cvety-v-korobke/korobka-s-makarunami-l.html",
        "cost_byn": "61.0",
        "photos": [
            "https://vgosti.by/files/items/305/icon.jpg",
            "https://vgosti.by/files/galleries/283/1091/src.jpg",
            "https://vgosti.by/files/galleries/283/1092/src.jpg",
            "https://vgosti.by/files/galleries/283/1093/src.jpg",
            "https://vgosti.by/files/galleries/283/1094/src.jpg",
            "https://vgosti.by/files/galleries/283/1095/src.jpg",
            "https://vgosti.by/files/galleries/283/1096/src.jpg",
            "https://vgosti.by/files/galleries/283/1097/src.jpg",
            "https://vgosti.by/files/galleries/283/1098/src.jpg"
        ],
        "description": {
            "composition": [
                "Макаруны,",
                "Сладости",
                "Ранункулюс",
                "Хризантема",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Коробка ",
            "size": "до 15-20 см ",
            "about_item": "Сладкий цветочный сюрприз для каждого повода "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Трюфельное сердце",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/tryufelnoe-serdce.html",
        "cost_byn": "97.0",
        "photos": [
            "https://vgosti.by/files/items/1409/icon.jpg",
            "https://vgosti.by/files/galleries/2261/5395/src.jpg",
            "https://vgosti.by/files/galleries/2261/5396/src.jpg",
            "https://vgosti.by/files/galleries/2261/5397/src.jpg",
            "https://vgosti.by/files/galleries/2261/5398/src.jpg",
            "https://vgosti.by/files/galleries/2261/5399/src.jpg",
            "https://vgosti.by/files/galleries/2261/5400/src.jpg",
            "https://vgosti.by/files/galleries/2261/5401/src.jpg",
            "https://vgosti.by/files/galleries/2261/5402/src.jpg"
        ],
        "description": {
            "composition": [
                "Экзотика"
            ],
            "package": "Умная корейская бумага ",
            "size": "высота 25-35 см ",
            "about_item": "Букет в форме сердца из экзотических цветов "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Гиацинтовое поле",
        "item_link": "https://vgosti.by/8-marta/giacintovoe-pole.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/1444/icon.jpg",
            "https://vgosti.by/files/galleries/2325/5608/src.jpg",
            "https://vgosti.by/files/galleries/2325/5609/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Металлическое декоративное кашпо ",
            "size": "диаметр 20 см ",
            "about_item": "Луковичное растение в декоративном кашпо "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Нарцисс в лукошке",
        "item_link": "https://vgosti.by/8-marta/narciss-v-lukoshke.html",
        "cost_byn": "24.0",
        "photos": [
            "https://vgosti.by/files/items/1448/icon.jpg",
            "https://vgosti.by/files/galleries/2333/5623/src.jpg",
            "https://vgosti.by/files/galleries/2333/5624/src.jpg",
            "https://vgosti.by/files/galleries/2333/5625/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Плетеная корзина из натурального материала ",
            "size": "высота 20-25 см ",
            "about_item": "Луковичное растение в декоративном кашпо "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Нежное сердце",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/nezhnoe-serdce.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/1404/icon.jpg",
            "https://vgosti.by/files/galleries/2251/5360/src.jpg",
            "https://vgosti.by/files/galleries/2251/5361/src.jpg",
            "https://vgosti.by/files/galleries/2251/5362/src.jpg",
            "https://vgosti.by/files/galleries/2251/5363/src.jpg",
            "https://vgosti.by/files/galleries/2251/5364/src.jpg"
        ],
        "description": {
            "composition": [
                "Экзотика"
            ],
            "package": "Картонная подарочная упаковка ",
            "size": "диаметр 20 см ",
            "about_item": "Композиция высокой стойкости "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Венок Нежность",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/venok-nezhnost.html",
        "cost_byn": "185.0",
        "photos": [
            "https://vgosti.by/files/items/1273/icon.jpg",
            "https://vgosti.by/files/galleries/2001/4650/src.jpg",
            "https://vgosti.by/files/galleries/2001/4651/src.jpg",
            "https://vgosti.by/files/galleries/2001/4652/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "коробка ",
            "size": "диаметр 25-30 см ",
            "about_item": "Венок из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Нежное прикосновение",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/nezhnoe-prikosnovenie.html",
        "cost_byn": "105.0",
        "photos": [
            "https://vgosti.by/files/items/1237/icon.jpg",
            "https://vgosti.by/files/galleries/1931/4468/src.jpg",
            "https://vgosti.by/files/galleries/1931/4469/src.jpg",
            "https://vgosti.by/files/galleries/1931/4470/src.jpg",
            "https://vgosti.by/files/galleries/1931/4471/src.jpg",
            "https://vgosti.by/files/galleries/1931/4472/src.jpg",
            "https://vgosti.by/files/galleries/1931/4473/src.jpg",
            "https://vgosti.by/files/galleries/1931/4474/src.jpg",
            "https://vgosti.by/files/galleries/1931/4475/src.jpg",
            "https://vgosti.by/files/galleries/1931/4476/src.jpg",
            "https://vgosti.by/files/galleries/1931/4477/src.jpg",
            "https://vgosti.by/files/galleries/1931/4478/src.jpg",
            "https://vgosti.by/files/galleries/1931/4479/src.jpg",
            "https://vgosti.by/files/galleries/1931/4480/src.jpg",
            "https://vgosti.by/files/galleries/1931/4481/src.jpg",
            "https://vgosti.by/files/galleries/1931/4482/src.jpg",
            "https://vgosti.by/files/galleries/1931/4483/src.jpg",
            "https://vgosti.by/files/galleries/1931/4484/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-27 см ",
            "about_item": "Интерьерная композиция из сухоцветов длительного использования "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Морской берег",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/morskoj-bereg.html",
        "cost_byn": "105.0",
        "photos": [
            "https://vgosti.by/files/items/1193/icon.jpg",
            "https://vgosti.by/files/galleries/1855/4247/src.jpg",
            "https://vgosti.by/files/galleries/1855/4248/src.jpg",
            "https://vgosti.by/files/galleries/1855/4249/src.jpg",
            "https://vgosti.by/files/galleries/1855/4250/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухофрукты"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 25-30 см ",
            "about_item": "Композиция из стабилизированных цветов и натуральных ракушек "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Элексир",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/eleksir.html",
        "cost_byn": "150.0",
        "photos": [
            "https://vgosti.by/files/items/1223/icon.jpg",
            "https://vgosti.by/files/galleries/1909/4392/src.jpg",
            "https://vgosti.by/files/galleries/1909/4393/src.jpg",
            "https://vgosti.by/files/galleries/1909/4394/src.jpg",
            "https://vgosti.by/files/galleries/1909/4395/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Интерьерная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Вишневый сад",
        "item_link": "https://vgosti.by/8-marta/vishnevyj-sad.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/1445/icon.jpg",
            "https://vgosti.by/files/galleries/2327/5610/src.jpg",
            "https://vgosti.by/files/galleries/2327/5611/src.jpg",
            "https://vgosti.by/files/galleries/2327/5612/src.jpg",
            "https://vgosti.by/files/galleries/2327/5613/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "декоративное гнездо ",
            "size": "диаметр 25 см ",
            "about_item": "Садик из нарциссов и гиацинтов "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Сердце из цветов Валентинка",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/serdce-iz-cvetov-valentinka.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/387/icon.jpg",
            "https://vgosti.by/files/galleries/425/595/src.jpg",
            "https://vgosti.by/files/galleries/425/596/src.jpg",
            "https://vgosti.by/files/galleries/425/597/src.jpg",
            "https://vgosti.by/files/galleries/425/598/src.jpg"
        ],
        "description": {
            "composition": [
                "Берграс",
                "Хризантема"
            ],
            "package": "Флористическая основа ",
            "size": "до 15-20 см ",
            "about_item": "Сердце может быть составлено из других цветов и других расцветок "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Сердце из роз Изюминка",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/serdce-iz-roz-izyuminka.html",
        "cost_byn": "165.0",
        "photos": [
            "https://vgosti.by/files/items/383/icon.jpg",
            "https://vgosti.by/files/galleries/417/584/src.jpg",
            "https://vgosti.by/files/galleries/417/585/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Флористическая основа ",
            "size": "от 25-35 см ",
            "about_item": "Сердце из роз отличается своей стойкостью "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Букет из 21 розы",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/buket-iz-21-rozi.html",
        "cost_byn": "159.0",
        "photos": [
            "https://vgosti.by/files/items/500/icon.jpg"
        ],
        "description": {
            "composition": [
                "Роза"
            ],
            "package": "Упаковка будет определена по Вашему желанию. ",
            "size": "высота 60-70 см ",
            "about_item": "Цвет розы может быть изменен заказчиком "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Улыбка весны",
        "item_link": "https://vgosti.by/8-marta/ulybka-vesny.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1450/icon.jpg",
            "https://vgosti.by/files/galleries/2337/5633/src.jpg",
            "https://vgosti.by/files/galleries/2337/5634/src.jpg",
            "https://vgosti.by/files/galleries/2337/5635/src.jpg",
            "https://vgosti.by/files/galleries/2337/5636/src.jpg",
            "https://vgosti.by/files/galleries/2337/5637/src.jpg",
            "https://vgosti.by/files/galleries/2337/5638/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Плетеное стильное кашпо ",
            "size": "20-25 см ",
            "about_item": "Декоративный садик из луковичных растений "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Кокосовое молочко",
        "item_link": "https://vgosti.by/korziny-s-cvetami/kokosovoe-molochko.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1697/icon.jpg",
            "https://vgosti.by/files/galleries/2771/6535/src.jpg",
            "https://vgosti.by/files/galleries/2771/6536/src.jpg",
            "https://vgosti.by/files/galleries/2771/6537/src.jpg"
        ],
        "description": {
            "composition": [
                "Ранункулюс",
                "Роза кустовая",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Стильная сумочка для цветов ",
            "size": "высота 20-22см ",
            "about_item": "Композиция в губке с экзотическими цветами "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Наутилус",
        "item_link": "https://vgosti.by/korziny-s-cvetami/nautilus.html",
        "cost_byn": "595.0",
        "photos": [
            "https://vgosti.by/files/items/1913/icon.jpg",
            "https://vgosti.by/files/galleries/3174/7076/src.jpg",
            "https://vgosti.by/files/galleries/3174/7077/src.jpg",
            "https://vgosti.by/files/galleries/3174/7078/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Плетеная корзина из натурального материала ",
            "size": "диаметр 60 см ",
            "about_item": "Стойкий экзотический состав "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Любовный туман",
        "item_link": "https://vgosti.by/korziny-s-cvetami/lyubovnyj-tuman.html",
        "cost_byn": "975.0",
        "photos": [
            "https://vgosti.by/files/items/1907/icon.jpg",
            "https://vgosti.by/files/galleries/3162/7053/src.jpg",
            "https://vgosti.by/files/galleries/3162/7054/src.jpg",
            "https://vgosti.by/files/galleries/3162/7055/src.jpg",
            "https://vgosti.by/files/galleries/3162/7056/src.jpg",
            "https://vgosti.by/files/galleries/3162/7057/src.jpg",
            "https://vgosti.by/files/galleries/3162/7058/src.jpg"
        ],
        "description": {
            "composition": [
                "Георгина",
                "Орхидея",
                "Роза пионовидная",
                "Роза садовая",
                "Фрезия",
                "Хамелациум",
                "Экзотика",
                "Эустома"
            ],
            "package": "Плетеная корзина из натурального материала ",
            "size": "диаметр корзины более 60 см ",
            "about_item": "Стойкий состав из экзотических цветов "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Паулина",
        "item_link": "https://vgosti.by/korziny-s-cvetami/paulina.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1811/icon.jpg",
            "https://vgosti.by/files/galleries/2980/6807/src.jpg",
            "https://vgosti.by/files/galleries/2980/6808/src.jpg",
            "https://vgosti.by/files/galleries/2980/6809/src.jpg",
            "https://vgosti.by/files/galleries/2980/6810/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт",
                "Орхидея",
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая",
                "Экзотика"
            ],
            "package": "Корзина из натуральных материалов ",
            "size": "диаметр 20-25 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Королевский роман",
        "item_link": "https://vgosti.by/korziny-s-cvetami/korolevskij-roman.html",
        "cost_byn": "175.0",
        "photos": [
            "https://vgosti.by/files/items/1812/icon.jpg",
            "https://vgosti.by/files/galleries/2982/6811/src.jpg",
            "https://vgosti.by/files/galleries/2982/6812/src.jpg",
            "https://vgosti.by/files/galleries/2982/6813/src.jpg",
            "https://vgosti.by/files/galleries/2982/6814/src.jpg",
            "https://vgosti.by/files/galleries/2982/6815/src.jpg",
            "https://vgosti.by/files/galleries/2982/6816/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт",
                "Диантус",
                "Ранункулюс",
                "Эустома"
            ],
            "package": "Корзина из натуральных материалов ",
            "size": "высота 20-25 см ",
            "about_item": "Ароматная композиция находится во флористической губке "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "9 Мая",
        "item_link": "https://vgosti.by/korziny-s-cvetami/9-maya.html",
        "cost_byn": "1295.0",
        "photos": [
            "https://vgosti.by/files/items/1526/icon.jpg",
            "https://vgosti.by/files/galleries/2463/5887/src.jpg",
            "https://vgosti.by/files/galleries/2463/5888/src.jpg",
            "https://vgosti.by/files/galleries/2463/5889/src.jpg",
            "https://vgosti.by/files/galleries/2463/5890/src.jpg",
            "https://vgosti.by/files/galleries/2463/5891/src.jpg",
            "https://vgosti.by/files/galleries/2463/5892/src.jpg",
            "https://vgosti.by/files/galleries/2463/5893/src.jpg",
            "https://vgosti.by/files/galleries/2463/5894/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Рускус"
            ],
            "package": "Плетеная корзина из натурального материала ",
            "size": "Ширина 100 см Высота 110 см ",
            "about_item": "Композиция на возложение "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Август",
        "item_link": "https://vgosti.by/korziny-s-cvetami/avgust-1.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/1883/icon.jpg",
            "https://vgosti.by/files/galleries/3120/6980/src.jpg",
            "https://vgosti.by/files/galleries/3120/6981/src.jpg"
        ],
        "description": {
            "composition": [
                "Гентиана",
                "Роза кустовая",
                "Роза пионовидная",
                "Ромашки"
            ],
            "package": "Плетеная корзина из натурального материала ",
            "size": "диаметр 27 см ",
            "about_item": "Яркая композиция во флористическом оазисе "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Трезор",
        "item_link": "https://vgosti.by/korziny-s-cvetami/trezor.html",
        "cost_byn": "395.0",
        "photos": [
            "https://vgosti.by/files/items/1566/icon.jpg",
            "https://vgosti.by/files/galleries/2533/6084/src.jpg",
            "https://vgosti.by/files/galleries/2533/6085/src.jpg",
            "https://vgosti.by/files/galleries/2533/6086/src.jpg",
            "https://vgosti.by/files/galleries/2533/6087/src.jpg",
            "https://vgosti.by/files/galleries/2533/6088/src.jpg",
            "https://vgosti.by/files/galleries/2533/6089/src.jpg"
        ],
        "description": {
            "composition": [
                "Пион",
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая",
                "Экзотика",
                "Эустома"
            ],
            "package": "Плетеная натуральная корзина ",
            "size": "Диаметр корзины 45 см ",
            "about_item": "Экзотическая наполняемость корзины "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Цветочный скворечник K",
        "item_link": "https://vgosti.by/8-marta/cvetochnyj-skvorechnik-k.html",
        "cost_byn": "72.0",
        "photos": [
            "https://vgosti.by/files/items/1372/icon.jpg",
            "https://vgosti.by/files/galleries/2191/5208/src.jpg",
            "https://vgosti.by/files/galleries/2191/5209/src.jpg",
            "https://vgosti.by/files/galleries/2191/5210/src.jpg",
            "https://vgosti.by/files/galleries/2191/5211/src.jpg",
            "https://vgosti.by/files/galleries/2191/5212/src.jpg",
            "https://vgosti.by/files/galleries/2191/5213/src.jpg",
            "https://vgosti.by/files/galleries/2191/5214/src.jpg",
            "https://vgosti.by/files/galleries/2191/5215/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Деревянный скворечник ",
            "size": "высота 20-27 см ",
            "about_item": "Декоративный скворечник с птичкой "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Новогодняя история комплект",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/novogodnyaya-istoriya-komplekt.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/1623/icon.jpg",
            "https://vgosti.by/files/galleries/2635/6237/src.jpg",
            "https://vgosti.by/files/galleries/2635/6238/src.jpg",
            "https://vgosti.by/files/galleries/2635/6239/src.jpg",
            "https://vgosti.by/files/galleries/2635/6240/src.jpg",
            "https://vgosti.by/files/galleries/2635/6241/src.jpg",
            "https://vgosti.by/files/galleries/2635/6242/src.jpg",
            "https://vgosti.by/files/galleries/2635/6243/src.jpg",
            "https://vgosti.by/files/galleries/2635/6244/src.jpg",
            "https://vgosti.by/files/galleries/2635/6245/src.jpg",
            "https://vgosti.by/files/galleries/2635/6246/src.jpg",
            "https://vgosti.by/files/galleries/2635/6247/src.jpg",
            "https://vgosti.by/files/galleries/2635/6248/src.jpg",
            "https://vgosti.by/files/galleries/2635/6249/src.jpg",
            "https://vgosti.by/files/galleries/2635/6250/src.jpg",
            "https://vgosti.by/files/galleries/2635/6251/src.jpg",
            "https://vgosti.by/files/galleries/2635/6252/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Винтажные стеклянные вазы ",
            "size": "Высота 25 см ",
            "about_item": "Композиция из 3-х предметов, срок эксплуатации не ограничен "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Клубничные желания",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/klubnichnye-zhelaniya.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/991/icon.jpg",
            "https://vgosti.by/files/galleries/1520/3060/src.jpg",
            "https://vgosti.by/files/galleries/1520/3061/src.jpg",
            "https://vgosti.by/files/galleries/1520/3062/src.jpg",
            "https://vgosti.by/files/galleries/1520/3063/src.jpg",
            "https://vgosti.by/files/galleries/1520/3064/src.jpg",
            "https://vgosti.by/files/galleries/1520/3065/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза кустовая",
                "Экзотика"
            ],
            "package": "целофан ",
            "size": "высота 20-25 см ",
            "about_item": "Натуральная свежая клубника с цветами в форме сердца "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Признание в любви",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/priznanie-v-lyubvi.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/976/icon.jpg",
            "https://vgosti.by/files/galleries/1494/3000/src.jpg",
            "https://vgosti.by/files/galleries/1494/3001/src.jpg",
            "https://vgosti.by/files/galleries/1494/3002/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Хамелациум",
                "Хиперикум",
                "Экзотика"
            ],
            "package": "Конверт ",
            "size": "20 х 20 ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Love сладости",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/love-sladosti.html",
        "cost_byn": "15.0",
        "photos": [
            "https://vgosti.by/files/items/1005/icon.jpg",
            "https://vgosti.by/files/galleries/1548/6513/src.jpg",
            "https://vgosti.by/files/galleries/1548/6514/src.jpg",
            "https://vgosti.by/files/galleries/1548/6515/src.jpg",
            "https://vgosti.by/files/galleries/1548/6516/src.jpg",
            "https://vgosti.by/files/galleries/1548/6517/src.jpg",
            "https://vgosti.by/files/galleries/1548/6518/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "коробочка с шоколадными конфетами и love-печеньем ",
            "size": "12 х 20 см ",
            "about_item": "Сладкий подарок с сердцем внутри "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Малиновое вино",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/malinovoe-vino.html",
        "cost_byn": "115.0",
        "photos": [
            "https://vgosti.by/files/items/998/icon.jpg",
            "https://vgosti.by/files/galleries/1534/3096/src.jpg",
            "https://vgosti.by/files/galleries/1534/3097/src.jpg",
            "https://vgosti.by/files/galleries/1534/3098/src.jpg",
            "https://vgosti.by/files/galleries/1534/3099/src.jpg",
            "https://vgosti.by/files/galleries/1534/3100/src.jpg",
            "https://vgosti.by/files/galleries/1534/3101/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Хлопок"
            ],
            "package": "Металлическое кашпо ",
            "size": "высота 20-25 см ",
            "about_item": "Композиция из стабилизированной розы и хлопка "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Цветочный скворечник N",
        "item_link": "https://vgosti.by/8-marta/cvetochnyj-skvorechnik-n.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/1369/icon.jpg",
            "https://vgosti.by/files/galleries/2185/5188/src.jpg",
            "https://vgosti.by/files/galleries/2185/5189/src.jpg",
            "https://vgosti.by/files/galleries/2185/5190/src.jpg",
            "https://vgosti.by/files/galleries/2185/5191/src.jpg",
            "https://vgosti.by/files/galleries/2185/5192/src.jpg",
            "https://vgosti.by/files/galleries/2185/5193/src.jpg",
            "https://vgosti.by/files/galleries/2185/5194/src.jpg",
            "https://vgosti.by/files/galleries/2185/5195/src.jpg",
            "https://vgosti.by/files/galleries/2185/5196/src.jpg",
            "https://vgosti.by/files/galleries/2185/5197/src.jpg",
            "https://vgosti.by/files/galleries/2185/5198/src.jpg",
            "https://vgosti.by/files/galleries/2185/5199/src.jpg",
            "https://vgosti.by/files/galleries/2185/5200/src.jpg",
            "https://vgosti.by/files/galleries/2185/5201/src.jpg",
            "https://vgosti.by/files/galleries/2185/5202/src.jpg",
            "https://vgosti.by/files/galleries/2185/5203/src.jpg",
            "https://vgosti.by/files/galleries/2185/5204/src.jpg",
            "https://vgosti.by/files/galleries/2185/5205/src.jpg",
            "https://vgosti.by/files/galleries/2185/5206/src.jpg",
            "https://vgosti.by/files/galleries/2185/5207/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Декоративный деревянный скворечник ",
            "size": "высота 17-23 см ",
            "about_item": "Весенняя композиция с птичкой "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Суккулент",
        "item_link": "https://vgosti.by/8-marta/sukkulent.html",
        "cost_byn": "25.0",
        "photos": [
            "https://vgosti.by/files/items/1348/icon.jpg",
            "https://vgosti.by/files/galleries/2143/5013/src.jpg",
            "https://vgosti.by/files/galleries/2143/5014/src.jpg",
            "https://vgosti.by/files/galleries/2143/5015/src.jpg",
            "https://vgosti.by/files/galleries/2143/5016/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Керамическая кружка ",
            "size": "высота 20-22 см ",
            "about_item": "Суккулент в керамической кружке "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Малиновый тюльпан Камилла",
        "item_link": "https://vgosti.by/8-marta/malinovyj-tyulpan-kamilla.html",
        "cost_byn": "4.0",
        "photos": [
            "https://vgosti.by/files/items/1477/icon.jpg",
            "https://vgosti.by/files/galleries/2391/5762/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": null,
            "size": "высота 30-35см ",
            "about_item": "Пионовидный тюльпан, пр-во Польша "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Ароматный комплимент",
        "item_link": "https://vgosti.by/8-marta/aromatnyj-kompliment.html",
        "cost_byn": "22.0",
        "photos": [
            "https://vgosti.by/files/items/715/icon.jpg",
            "https://vgosti.by/files/galleries/1032/1956/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "По желанию заказчика (может быть в упаковке или перевязан лентой) ",
            "size": "высота 30 см ",
            "about_item": "Ароматный букет из гиацинтов "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Апероль",
        "item_link": "https://vgosti.by/8-marta/aperol.html",
        "cost_byn": "149.0",
        "photos": [
            "https://vgosti.by/files/items/1401/icon.jpg",
            "https://vgosti.by/files/galleries/2245/5353/src.jpg",
            "https://vgosti.by/files/galleries/2245/5354/src.jpg",
            "https://vgosti.by/files/galleries/2245/5355/src.jpg",
            "https://vgosti.by/files/galleries/2245/5356/src.jpg",
            "https://vgosti.by/files/galleries/2245/5357/src.jpg"
        ],
        "description": {
            "composition": [
                "Гентиана",
                "Диантус",
                "Зелень",
                "Мимоза",
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 45 см ",
            "about_item": "Ароматный весенний букет из мимозы и пр.экзотики "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Весенний бархат",
        "item_link": "https://vgosti.by/8-marta/vesennij-barhat.html",
        "cost_byn": "25.0",
        "photos": [
            "https://vgosti.by/files/items/1440/icon.jpg",
            "https://vgosti.by/files/galleries/2317/5588/src.jpg",
            "https://vgosti.by/files/galleries/2317/5589/src.jpg",
            "https://vgosti.by/files/galleries/2317/5590/src.jpg",
            "https://vgosti.by/files/galleries/2317/5591/src.jpg",
            "https://vgosti.by/files/galleries/2317/5592/src.jpg"
        ],
        "description": {
            "composition": [
                "Ирис",
                "Экзотика",
                "Эустома"
            ],
            "package": "Стильная крафт коробка ",
            "size": "Размеры 15 х 15 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Весенний садик",
        "item_link": "https://vgosti.by/8-marta/vesennij-sadik.html",
        "cost_byn": "25.0",
        "photos": [
            "https://vgosti.by/files/items/1046/icon.jpg",
            "https://vgosti.by/files/galleries/1618/3238/src.jpg",
            "https://vgosti.by/files/galleries/1618/3239/src.jpg",
            "https://vgosti.by/files/galleries/1618/3240/src.jpg",
            "https://vgosti.by/files/galleries/1618/3241/src.jpg",
            "https://vgosti.by/files/galleries/1618/3242/src.jpg",
            "https://vgosti.by/files/galleries/1618/3243/src.jpg",
            "https://vgosti.by/files/galleries/1618/3244/src.jpg",
            "https://vgosti.by/files/galleries/1618/3245/src.jpg",
            "https://vgosti.by/files/galleries/1618/3246/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Металлическое кашпо ",
            "size": "высота 20-25 см ",
            "about_item": "Садик из двух видов луковичных растений и декора "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Малиново-розовый тюльпан сорт Бесконечная любовь",
        "item_link": "https://vgosti.by/8-marta/malinovo-rozovyj-tyulpan-sort-beskonechnaya-lyubov.html",
        "cost_byn": "4.0",
        "photos": [
            "https://vgosti.by/files/items/1039/icon.jpg",
            "https://vgosti.by/files/galleries/1601/5528/src.jpg",
            "https://vgosti.by/files/galleries/1603/5526/src.jpg",
            "https://vgosti.by/files/galleries/1603/5527/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "без упаковки ",
            "size": "высота 35-45 см ",
            "about_item": "Пионовидный тюльпан пр-во Голландия "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Весна",
        "item_link": "https://vgosti.by/8-marta/vesna.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/759/icon.jpg",
            "https://vgosti.by/files/galleries/1106/2030/src.jpg",
            "https://vgosti.by/files/galleries/1106/2102/src.jpg"
        ],
        "description": {
            "composition": [
                "Ранункулюс",
                "Роза кустовая",
                "Скимия",
                "Тюльпаны"
            ],
            "package": "Корзинка ",
            "size": null,
            "about_item": "Стильная корзинка с цветами "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Сказочная ночь",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/skazochnaya-noch.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1305/icon.jpg",
            "https://vgosti.by/files/galleries/2063/4816/src.jpg",
            "https://vgosti.by/files/galleries/2063/4817/src.jpg",
            "https://vgosti.by/files/galleries/2063/4818/src.jpg",
            "https://vgosti.by/files/galleries/2063/4819/src.jpg",
            "https://vgosti.by/files/galleries/2063/4820/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 20-25 см ",
            "about_item": "Интерьерная композиция в зимнем стиле со свечой "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "51 гиацинт",
        "item_link": "https://vgosti.by/8-marta/51-giacint.html",
        "cost_byn": "342.0",
        "photos": [
            "https://vgosti.by/files/items/705/icon.jpg",
            "https://vgosti.by/files/galleries/1012/1945/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "Натуральный крафт ",
            "size": "высота букета не более 30 см ",
            "about_item": "Ароматный гиацинт создаст весеннее настроение "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Розовый Тюльпан сорт Бьюти Тренд",
        "item_link": "https://vgosti.by/8-marta/rozovyj-tyulpan-sort-byuti-trend.html",
        "cost_byn": "3.0",
        "photos": [
            "https://vgosti.by/files/items/1030/icon.jpg",
            "https://vgosti.by/files/galleries/1586/6640/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "без упаковки ",
            "size": "высота 35-45 см ",
            "about_item": "Тюльпан пр-во Голландия "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Композиция Весенняя",
        "item_link": "https://vgosti.by/8-marta/kompoziciya-vesennyaya.html",
        "cost_byn": "32.0",
        "photos": [
            "https://vgosti.by/files/items/233/icon.jpg",
            "https://vgosti.by/files/galleries/168/1062/src.jpg",
            "https://vgosti.by/files/galleries/168/1063/src.jpg",
            "https://vgosti.by/files/galleries/168/1064/src.jpg",
            "https://vgosti.by/files/galleries/168/1065/src.jpg"
        ],
        "description": {
            "composition": [
                "Зелень",
                "Ирис",
                "Мускари"
            ],
            "package": "Квадратное кашпо из натурального дерева белого цвета ",
            "size": "25-30 см ",
            "about_item": "Весенняя композиция в деревянном кашпо "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Композиция Весна",
        "item_link": "https://vgosti.by/8-marta/kompoziciya-vesna.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/703/icon.jpg",
            "https://vgosti.by/files/galleries/1008/1941/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт",
                "Лаванда",
                "Тюльпаны",
                "Хамелациум"
            ],
            "package": "Кашпо из натурального дерева ",
            "size": "высота букета не более 30 см ",
            "about_item": "Все весенние цветы в одной композиции "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Тюльпан 51 шт",
        "item_link": "https://vgosti.by/8-marta/tyulpan-51-sht.html",
        "cost_byn": "160.0",
        "photos": [
            "https://vgosti.by/files/items/400/icon.jpg",
            "https://vgosti.by/files/galleries/451/636/src.jpg",
            "https://vgosti.by/files/galleries/451/637/src.jpg",
            "https://vgosti.by/files/galleries/451/638/src.jpg",
            "https://vgosti.by/files/galleries/451/639/src.jpg",
            "https://vgosti.by/files/galleries/451/640/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": null,
            "size": "от 65 см ",
            "about_item": "Букет из 51 тюльпана это как символ чистой любви и большого счастья поразит любую даму "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Гиацинты в кашпо",
        "item_link": "https://vgosti.by/8-marta/giacinty-v-kashpo.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/713/icon.jpg",
            "https://vgosti.by/files/galleries/1028/1954/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "кашпо декоративное ",
            "size": "высота 30 см ",
            "about_item": "Декоративное кашпо с гиацинтами "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Гиацинтовый микс",
        "item_link": "https://vgosti.by/8-marta/giacintovyj-miks.html",
        "cost_byn": "115.0",
        "photos": [
            "https://vgosti.by/files/items/712/icon.jpg",
            "https://vgosti.by/files/galleries/1026/1953/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "Лента ",
            "size": "высота букета не более 30 см ",
            "about_item": "Ароматный букет из разноцветных гиацинтов "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Коробка с цветами и вином размер XL",
        "item_link": "https://vgosti.by/cvety-v-korobke/korobka-s-cvetami-i-vinom-razmer-xl.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/574/icon.jpg",
            "https://vgosti.by/files/galleries/781/1670/src.jpg",
            "https://vgosti.by/files/galleries/781/1671/src.jpg",
            "https://vgosti.by/files/galleries/781/1672/src.jpg",
            "https://vgosti.by/files/galleries/781/1673/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Амариллис",
                "Ананас",
                "Анемон",
                "Аспарагус",
                "Аспидистра",
                "Астильба",
                "Астра",
                "Астранция",
                "Бамбук",
                "Берграс",
                "Бувардия",
                "Бруния",
                "Василёк",
                "Вероника",
                "Гортензия",
                "Гвоздика",
                "Гербера",
                "Георгина",
                "Гиацинт",
                "Гипсофил",
                "Дельфиниум",
                "Диантус",
                "Дуб",
                "Ель",
                "Зелень",
                "Илекс",
                "Ирис",
                "Каллы",
                "Куркума",
                "Корилус",
                "Краспедия",
                "Кактус",
                "Лаванда",
                "Леукаспермум",
                "Лилия",
                "Лимон",
                "Лотос",
                "Мак",
                "Маттиола",
                "Мускари",
                "Нарцисс",
                "Нигелла",
                "Орхидея",
                "Орнитогалум",
                "Озотамнус",
                "Пион",
                "Пистация",
                "Питоспорум",
                "Подсолнух",
                "Протея",
                "Ранункулюс",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Ромашки",
                "Рускус",
                "Сирень",
                "Скимия",
                "Статица",
                "Трахелиум",
                "Суккуленты",
                "Тубероза",
                "Тюльпаны",
                "Фрезия",
                "Фрукты",
                "Хамелациум",
                "Хиперикум",
                "Хлопок",
                "Хризантема",
                "Цинерария",
                "Шишки",
                "Эвкалипт",
                "Экзотика",
                "Эрингиум",
                "Эустома"
            ],
            "package": "коробка из натурального дерева ",
            "size": "35 см х 35 см ",
            "about_item": "В стоимость композиции вино не включено "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Букет гиацинтов",
        "item_link": "https://vgosti.by/8-marta/buket-giacintov.html",
        "cost_byn": "162.0",
        "photos": [
            "https://vgosti.by/files/items/701/icon.jpg",
            "https://vgosti.by/files/galleries/1004/1939/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "Натуральный крафт ",
            "size": "высота букета не более 30 см ",
            "about_item": "Насыщенный ароматный букет из гиацинтов "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Мечты Афродиты",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/mechty-afrodity.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/1210/icon.jpg",
            "https://vgosti.by/files/galleries/1883/4312/src.jpg",
            "https://vgosti.by/files/galleries/1883/4313/src.jpg",
            "https://vgosti.by/files/galleries/1883/4314/src.jpg",
            "https://vgosti.by/files/galleries/1883/4315/src.jpg",
            "https://vgosti.by/files/galleries/1883/4316/src.jpg",
            "https://vgosti.by/files/galleries/1883/4317/src.jpg",
            "https://vgosti.by/files/galleries/1883/4318/src.jpg",
            "https://vgosti.by/files/galleries/1883/4319/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Шляпная коробка ",
            "size": "15-20 см ",
            "about_item": "Интерьерная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Композиция из гиацинтов",
        "item_link": "https://vgosti.by/8-marta/kompoziciya-iz-giacintov.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/716/icon.jpg",
            "https://vgosti.by/files/galleries/1034/1957/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "керамическое кашпо ",
            "size": "Высота 30 см ",
            "about_item": "Ароматные гиацинты в стильном кашпо "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Весеннее настроение",
        "item_link": "https://vgosti.by/8-marta/vesennee-nastroenie.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/157/icon.jpg",
            "https://vgosti.by/files/galleries/70/5542/src.jpg",
            "https://vgosti.by/files/galleries/70/5543/src.jpg",
            "https://vgosti.by/files/galleries/70/5544/src.jpg",
            "https://vgosti.by/files/galleries/70/5545/src.jpg",
            "https://vgosti.by/files/galleries/70/5546/src.jpg",
            "https://vgosti.by/files/galleries/70/5547/src.jpg",
            "https://vgosti.by/files/galleries/70/5548/src.jpg",
            "https://vgosti.by/files/galleries/70/5549/src.jpg",
            "https://vgosti.by/files/galleries/70/5550/src.jpg",
            "https://vgosti.by/files/galleries/70/5551/src.jpg",
            "https://vgosti.by/files/galleries/70/5552/src.jpg",
            "https://vgosti.by/files/galleries/70/5553/src.jpg"
        ],
        "description": {
            "composition": [
                "Зелень",
                "Тюльпаны",
                "Хризантема"
            ],
            "package": "Декорированное кашпо ",
            "size": "20 см ",
            "about_item": "Весенняя композиция привнесет весеннего настроения в Вашу жизнь "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Орхидея Фаленопсис в ассортименте",
        "item_link": "https://vgosti.by/8-marta/orhideya-falenopsis-v-assortimente.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/745/icon.jpg",
            "https://vgosti.by/files/galleries/1080/2003/src.jpg",
            "https://vgosti.by/files/galleries/1080/2004/src.jpg",
            "https://vgosti.by/files/galleries/1080/2005/src.jpg"
        ],
        "description": {
            "composition": [
                "Орхидея"
            ],
            "package": "Кашпо пластиковое + подарочный пакет ",
            "size": "высота 70 см ",
            "about_item": "орхидея Фаленопсис в ассортименте в горшке "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "39 тюльпанов",
        "item_link": "https://vgosti.by/8-marta/39-tyulpanov.html",
        "cost_byn": "117.0",
        "photos": [
            "https://vgosti.by/files/items/714/icon.jpg",
            "https://vgosti.by/files/galleries/1030/1955/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Ленты ",
            "size": "высота букета не более 45 см ",
            "about_item": "Букет из желто-фиолетовых тюльпанов "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Привет от весны",
        "item_link": "https://vgosti.by/8-marta/privet-ot-vesny.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/722/icon.jpg",
            "https://vgosti.by/files/galleries/1042/1962/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны",
                "Фрезия"
            ],
            "package": "Лента ",
            "size": "высота 30см ",
            "about_item": "Милый комплимент с легким ароматом фрезии "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Комплимент тюльпанов",
        "item_link": "https://vgosti.by/8-marta/kompliment-tyulpanov.html",
        "cost_byn": "25.0",
        "photos": [
            "https://vgosti.by/files/items/741/icon.jpg",
            "https://vgosti.by/files/galleries/1076/1999/src.jpg",
            "https://vgosti.by/files/galleries/1076/2000/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Натуральный крафт ",
            "size": null,
            "about_item": "Пионовидные тюльпаны в стильной упаковке "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "51 тюльпан микс",
        "item_link": "https://vgosti.by/8-marta/51-tyulpan-miks.html",
        "cost_byn": "153.0",
        "photos": [
            "https://vgosti.by/files/items/702/icon.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Ленты ",
            "size": "высота букета не более 45 см ",
            "about_item": "Букет из разноцветных тюльпанов "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Весна на пороге",
        "item_link": "https://vgosti.by/8-marta/vesna-na-poroge.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/982/icon.jpg",
            "https://vgosti.by/files/galleries/1506/3016/src.jpg",
            "https://vgosti.by/files/galleries/1506/3017/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Тюльпаны",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "Деревянное кашпо с ручкой ",
            "size": "высота 18-20 см ",
            "about_item": "Весенний состав цветов "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Весенний сюрприз",
        "item_link": "https://vgosti.by/8-marta/vesennij-syurpriz.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/711/icon.jpg",
            "https://vgosti.by/files/galleries/1024/1952/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт",
                "Ирис",
                "Тюльпаны",
                "Фрезия"
            ],
            "package": "Ваза с декором ",
            "size": "высота букета 30 см ",
            "about_item": "Букет с декорированной вазе "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Коробка Лаванды",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/korobka-lavandy.html",
        "cost_byn": "189.0",
        "photos": [
            "https://vgosti.by/files/items/1191/icon.jpg",
            "https://vgosti.by/files/galleries/1851/4244/src.jpg",
            "https://vgosti.by/files/galleries/1851/4245/src.jpg",
            "https://vgosti.by/files/galleries/1851/4246/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Лаванда"
            ],
            "package": "Декоративная шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Интерьерная композиция из лаванды "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Мята",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/myata.html",
        "cost_byn": "165.0",
        "photos": [
            "https://vgosti.by/files/items/1209/icon.jpg",
            "https://vgosti.by/files/galleries/1881/4308/src.jpg",
            "https://vgosti.by/files/galleries/1881/4309/src.jpg",
            "https://vgosti.by/files/galleries/1881/4310/src.jpg",
            "https://vgosti.by/files/galleries/1881/4311/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Интерьерная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Кобальт",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/kobalt.html",
        "cost_byn": "179.0",
        "photos": [
            "https://vgosti.by/files/items/1341/icon.jpg",
            "https://vgosti.by/files/galleries/2129/4979/src.jpg",
            "https://vgosti.by/files/galleries/2129/4980/src.jpg",
            "https://vgosti.by/files/galleries/2129/4981/src.jpg",
            "https://vgosti.by/files/galleries/2129/4982/src.jpg",
            "https://vgosti.by/files/galleries/2129/4983/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Лаванда"
            ],
            "package": "Дизайнерская шляпная коробка ",
            "size": "диаметр 22-27 см ",
            "about_item": "Ароматная композиция из лаванды, стабилизированной розы и сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Утренний кофе",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/utrennij-kofe.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1344/icon.jpg",
            "https://vgosti.by/files/galleries/2135/4998/src.jpg",
            "https://vgosti.by/files/galleries/2135/4999/src.jpg",
            "https://vgosti.by/files/galleries/2135/5000/src.jpg",
            "https://vgosti.by/files/galleries/2135/5001/src.jpg",
            "https://vgosti.by/files/galleries/2135/5002/src.jpg",
            "https://vgosti.by/files/galleries/2135/5003/src.jpg",
            "https://vgosti.by/files/galleries/2135/5004/src.jpg",
            "https://vgosti.by/files/galleries/2135/5005/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 20-25 см ",
            "about_item": "Букет в керамической кружке со стабилизированной пионовидной розой "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Картина из цветов Нежность II",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/kartina-iz-cvetov-nezhnost-ii.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1118/icon.jpg",
            "https://vgosti.by/files/galleries/1728/3906/src.jpg",
            "https://vgosti.by/files/galleries/1728/3907/src.jpg",
            "https://vgosti.by/files/galleries/1728/3908/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "коробка из натурального дерева ",
            "size": "22 х 25 ",
            "about_item": "Картина из стабилизированных роз и других сухоцветов, стойкость более 5 лет "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Послание из далека",
        "item_link": "https://vgosti.by/8-marta/poslanie-iz-daleka.html",
        "cost_byn": "44.0",
        "photos": [
            "https://vgosti.by/files/items/717/icon.jpg",
            "https://vgosti.by/files/galleries/1036/1958/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "Французский крафт ",
            "size": "высота 30 см ",
            "about_item": "Ароматные гиацинты в стильной упаковке "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Модена",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/modena.html",
        "cost_byn": "43.0",
        "photos": [
            "https://vgosti.by/files/items/1574/icon.jpg",
            "https://vgosti.by/files/galleries/2549/6109/src.jpg",
            "https://vgosti.by/files/galleries/2549/6110/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухофрукты"
            ],
            "package": "Стильное крафт-кашпо ",
            "size": "Высота 25 см ",
            "about_item": "Стильная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Роза ветров",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/roza-vetrov.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1239/icon.jpg",
            "https://vgosti.by/files/galleries/1935/4506/src.jpg",
            "https://vgosti.by/files/galleries/1935/4507/src.jpg",
            "https://vgosti.by/files/galleries/1935/4508/src.jpg",
            "https://vgosti.by/files/galleries/1935/4509/src.jpg",
            "https://vgosti.by/files/galleries/1935/4510/src.jpg",
            "https://vgosti.by/files/galleries/1935/4511/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Корейская умная бумага ",
            "size": "высота 35-45 см ",
            "about_item": "Букет из стабилизированных цветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Атмосфера",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/atmosfera.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1066/icon.jpg",
            "https://vgosti.by/files/galleries/1650/3385/src.jpg",
            "https://vgosti.by/files/galleries/1650/3386/src.jpg",
            "https://vgosti.by/files/galleries/1650/3387/src.jpg",
            "https://vgosti.by/files/galleries/1650/3388/src.jpg",
            "https://vgosti.by/files/galleries/1650/3389/src.jpg",
            "https://vgosti.by/files/galleries/1650/3390/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Интерьерная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Бриз",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/briz.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/1249/icon.jpg",
            "https://vgosti.by/files/galleries/1953/4547/src.jpg",
            "https://vgosti.by/files/galleries/1953/4548/src.jpg",
            "https://vgosti.by/files/galleries/1953/4549/src.jpg",
            "https://vgosti.by/files/galleries/1953/4550/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Умная корейская бумага ",
            "size": "высота 25-35 см ",
            "about_item": "Букет из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Роза стабилизированная",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/roza-stabilizirovannaya.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/1116/icon.jpg",
            "https://vgosti.by/files/galleries/1724/3896/src.jpg",
            "https://vgosti.by/files/galleries/1724/3897/src.jpg",
            "https://vgosti.by/files/galleries/1724/3898/src.jpg",
            "https://vgosti.by/files/galleries/1724/3899/src.jpg",
            "https://vgosti.by/files/galleries/1724/3900/src.jpg",
            "https://vgosti.by/files/galleries/1724/3901/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Стильная картонная упаковка ",
            "size": "высота 50 см ",
            "about_item": "Стабилизированная роза стойкость более 5 лет "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Сновидение",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/snovidenie.html",
        "cost_byn": "115.0",
        "photos": [
            "https://vgosti.by/files/items/1252/icon.jpg",
            "https://vgosti.by/files/galleries/1959/4560/src.jpg",
            "https://vgosti.by/files/galleries/1959/4561/src.jpg",
            "https://vgosti.by/files/galleries/1959/4562/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухофрукты"
            ],
            "package": "Пакет ",
            "size": "диаметр 25-27 высота 20-25 см ",
            "about_item": "Букет из стабилизированных цветов, стойкость стояния более 5 лет "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Канны",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/kanny.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/1170/icon.jpg",
            "https://vgosti.by/files/galleries/1811/4120/src.jpg",
            "https://vgosti.by/files/galleries/1811/4121/src.jpg",
            "https://vgosti.by/files/galleries/1811/4122/src.jpg",
            "https://vgosti.by/files/galleries/1811/4123/src.jpg",
            "https://vgosti.by/files/galleries/1811/4124/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухофрукты",
                "Лаванда"
            ],
            "package": "без упаковки ",
            "size": "диаметр 15-20 см ",
            "about_item": "Ароматный лавандовый букет со стабилизированной розой "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Цимбидиум",
        "item_link": "https://vgosti.by/8-marta/cimbidium.html",
        "cost_byn": "35.0",
        "photos": [
            "https://vgosti.by/files/items/983/icon.jpg",
            "https://vgosti.by/files/galleries/1508/3032/src.jpg",
            "https://vgosti.by/files/galleries/1508/3033/src.jpg",
            "https://vgosti.by/files/galleries/1508/3034/src.jpg",
            "https://vgosti.by/files/galleries/1508/3035/src.jpg",
            "https://vgosti.by/files/galleries/1508/3036/src.jpg",
            "https://vgosti.by/files/galleries/1508/3037/src.jpg",
            "https://vgosti.by/files/galleries/1508/3038/src.jpg"
        ],
        "description": {
            "composition": [
                "Орхидея"
            ],
            "package": "Корейская бумага ",
            "size": "высота более 45-50 см ",
            "about_item": "Период свежести более 25 дней! "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Марципановый десерт",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/marcipanovyj-desert.html",
        "cost_byn": "119.0",
        "photos": [
            "https://vgosti.by/files/items/1922/icon.jpg",
            "https://vgosti.by/files/galleries/3192/7103/src.jpg",
            "https://vgosti.by/files/galleries/3192/7104/src.jpg",
            "https://vgosti.by/files/galleries/3192/7105/src.jpg",
            "https://vgosti.by/files/galleries/3192/7106/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 25 см ",
            "about_item": "Интерьерная композиция из сухоцветов и стабилизированных цветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Летнее очарование",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/letnee-ocharovanie.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/1781/icon.jpg",
            "https://vgosti.by/files/galleries/2926/6724/src.jpg",
            "https://vgosti.by/files/galleries/2926/6725/src.jpg",
            "https://vgosti.by/files/galleries/2926/6726/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "Диаметр 22 см, высота 20 см ",
            "about_item": "Композиция из лагуруса и осветленной стабилизированной лавандой "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Барфлёр",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/barflyor.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/1932/icon.jpg",
            "https://vgosti.by/files/galleries/3210/7128/src.jpg",
            "https://vgosti.by/files/galleries/3210/7129/src.jpg"
        ],
        "description": {
            "composition": [
                "Лаванда"
            ],
            "package": "Глиняный горшочек ",
            "size": "Высота 20-25 см ",
            "about_item": "Ароматная французская лаванда "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Лаура",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/laura.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1933/icon.jpg",
            "https://vgosti.by/files/galleries/3212/7130/src.jpg",
            "https://vgosti.by/files/galleries/3212/7131/src.jpg",
            "https://vgosti.by/files/galleries/3212/7132/src.jpg"
        ],
        "description": {
            "composition": [
                "Лаванда"
            ],
            "package": "Декоративное ведерко ",
            "size": "Высота 20-23 см ",
            "about_item": "Композиция из лаванды в интерьерном кашпо "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Амелия",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/ameliya.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/1934/icon.jpg",
            "https://vgosti.by/files/galleries/3214/7133/src.jpg",
            "https://vgosti.by/files/galleries/3214/7134/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Металлическое декоративное кашпо ",
            "size": "высота 18-22 см ",
            "about_item": "Интерьерная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Терракотовая ночь",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/terrakotovaya-noch.html",
        "cost_byn": "225.0",
        "photos": [
            "https://vgosti.by/files/items/1919/icon.jpg",
            "https://vgosti.by/files/galleries/3186/7093/src.jpg",
            "https://vgosti.by/files/galleries/3186/7094/src.jpg",
            "https://vgosti.by/files/galleries/3186/7095/src.jpg",
            "https://vgosti.by/files/galleries/3186/7096/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 31 см ",
            "about_item": "Композиция из стабилизированных цветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Летнее свидание",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/letnee-svidanie.html",
        "cost_byn": "165.0",
        "photos": [
            "https://vgosti.by/files/items/1924/icon.jpg",
            "https://vgosti.by/files/galleries/3196/7107/src.jpg",
            "https://vgosti.by/files/galleries/3196/7108/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухофрукты"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 27 см ",
            "about_item": "Композиция из сухоцветов и стабилизированных цветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Композиция Версаль",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/kompoziciya-versal.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/1326/icon.jpg",
            "https://vgosti.by/files/galleries/2101/4916/src.jpg",
            "https://vgosti.by/files/galleries/2101/4917/src.jpg",
            "https://vgosti.by/files/galleries/2101/4918/src.jpg",
            "https://vgosti.by/files/galleries/2101/4919/src.jpg",
            "https://vgosti.by/files/galleries/2101/4920/src.jpg",
            "https://vgosti.by/files/galleries/2101/4921/src.jpg",
            "https://vgosti.by/files/galleries/2101/4922/src.jpg",
            "https://vgosti.by/files/galleries/2101/4923/src.jpg",
            "https://vgosti.by/files/galleries/2101/4924/src.jpg",
            "https://vgosti.by/files/galleries/2101/5119/src.jpg",
            "https://vgosti.by/files/galleries/2101/5120/src.jpg",
            "https://vgosti.by/files/galleries/2101/5121/src.jpg",
            "https://vgosti.by/files/galleries/2101/5122/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Металлическое декоративное кашпо ",
            "size": "ширина 20 -23 см ",
            "about_item": "Композиция на новогодний стол "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Лиловый Тюльпан сорт Блю Флэг",
        "item_link": "https://vgosti.by/8-marta/fioletovyj-tyulpan-pionovidnyj-sort-blyu-fleg.html",
        "cost_byn": "4.0",
        "photos": [
            "https://vgosti.by/files/items/399/icon.jpg",
            "https://vgosti.by/files/galleries/449/2018/src.jpg",
            "https://vgosti.by/files/galleries/449/3194/src.jpg",
            "https://vgosti.by/files/galleries/449/3195/src.jpg",
            "https://vgosti.by/files/galleries/449/3196/src.jpg",
            "https://vgosti.by/files/galleries/449/3197/src.jpg",
            "https://vgosti.by/files/galleries/449/3198/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "без упаковки ",
            "size": "длинна 35-45 см ",
            "about_item": "Пионовидный тюльпан пр-во Польша "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "35 тюльпанов",
        "item_link": "https://vgosti.by/8-marta/35-tyulpanov.html",
        "cost_byn": "123.0",
        "photos": [
            "https://vgosti.by/files/items/704/icon.jpg",
            "https://vgosti.by/files/galleries/1010/6638/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Ленты ",
            "size": "высота букета не более 40 см ",
            "about_item": "Букет из красных тюльпанов "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Елка Снежная",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/elka-snezhnaya.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/1358/icon.jpg",
            "https://vgosti.by/files/galleries/2163/5073/src.jpg",
            "https://vgosti.by/files/galleries/2163/5074/src.jpg",
            "https://vgosti.by/files/galleries/2163/5075/src.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "Коробка ",
            "size": "высота 40 см ",
            "about_item": "Заснеженная елка из канадской пихты с декором "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "букет из 101 розы",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/buket-iz-101-rozi.html",
        "cost_byn": "709.0",
        "photos": [
            "https://vgosti.by/files/items/57/icon.jpg",
            "https://vgosti.by/files/galleries/6/3919/src.jpg",
            "https://vgosti.by/files/galleries/6/3920/src.jpg",
            "https://vgosti.by/files/galleries/6/3922/src.jpg",
            "https://vgosti.by/files/galleries/6/3921/src.jpg",
            "https://vgosti.by/files/galleries/6/5644/src.jpg",
            "https://vgosti.by/files/galleries/6/5645/src.jpg",
            "https://vgosti.by/files/galleries/6/5646/src.jpg",
            "https://vgosti.by/files/galleries/6/5647/src.jpg",
            "https://vgosti.by/files/galleries/6/5648/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза"
            ],
            "package": "Упаковка будет определена по Вашему желанию. ",
            "size": "высота 60-70 см ",
            "about_item": "Букет «Все тебе одной» из 101 розы удивит, поразит и очарует вашу даму "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Сердце Вечная любовь",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/serdce-vechnaya-lyubov.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/951/icon.jpg",
            "https://vgosti.by/files/galleries/1458/2945/src.jpg",
            "https://vgosti.by/files/galleries/1458/2946/src.jpg",
            "https://vgosti.by/files/galleries/1458/2947/src.jpg",
            "https://vgosti.by/files/galleries/1458/2948/src.jpg",
            "https://vgosti.by/files/galleries/1458/2949/src.jpg",
            "https://vgosti.by/files/galleries/1458/3141/src.jpg",
            "https://vgosti.by/files/galleries/1458/3142/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "целофан ",
            "size": "диаметр 22 см ",
            "about_item": "Сердце из лагуруса, стабилизированной розы - гарантия стояния 5 лет "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "51 пионовидный тюльпан",
        "item_link": "https://vgosti.by/8-marta/51-pionovidnyj-tyulpan.html",
        "cost_byn": "185.0",
        "photos": [
            "https://vgosti.by/files/items/706/icon.jpg",
            "https://vgosti.by/files/galleries/1014/1948/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Натуральный крафт ",
            "size": "Большой букет из тюльпанов ",
            "about_item": "Пионовидные тюльпаны в большом букете "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "31 тюльпан",
        "item_link": "https://vgosti.by/8-marta/31-tyulpan.html",
        "cost_byn": "115.0",
        "photos": [
            "https://vgosti.by/files/items/709/icon.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "Сезаль ",
            "size": "высота букета не более 45 см ",
            "about_item": "Букет из бело-розовых тюльпанов "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Рождественская звезда Big",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/rozhdestvenskaya-zvezda-big.html",
        "cost_byn": "29.0",
        "photos": [
            "https://vgosti.by/files/items/1328/icon.jpg",
            "https://vgosti.by/files/galleries/2105/4925/src.jpg",
            "https://vgosti.by/files/galleries/2105/4926/src.jpg",
            "https://vgosti.by/files/galleries/2105/4927/src.jpg",
            "https://vgosti.by/files/galleries/2105/4928/src.jpg",
            "https://vgosti.by/files/galleries/2105/4929/src.jpg",
            "https://vgosti.by/files/galleries/2105/4930/src.jpg",
            "https://vgosti.by/files/galleries/2105/4937/src.jpg",
            "https://vgosti.by/files/galleries/2105/4938/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Крафт-пакет ",
            "size": "15-23см ",
            "about_item": "Композиция в форме звезды со свечой "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "101 тюльпан",
        "item_link": "https://vgosti.by/8-marta/101-tyulpan.html",
        "cost_byn": "255.0",
        "photos": [
            "https://vgosti.by/files/items/710/icon.jpg",
            "https://vgosti.by/files/galleries/1022/6636/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "ленты ",
            "size": "Большой букет из тюльпанов ",
            "about_item": "Цвет может быть изменен по желанию заказчика "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Снеговичок",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/snegovichok.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/1297/icon.jpg",
            "https://vgosti.by/files/galleries/2047/4786/src.jpg",
            "https://vgosti.by/files/galleries/2047/4787/src.jpg",
            "https://vgosti.by/files/galleries/2047/4788/src.jpg",
            "https://vgosti.by/files/galleries/2047/4789/src.jpg",
            "https://vgosti.by/files/galleries/2047/4790/src.jpg",
            "https://vgosti.by/files/galleries/2047/4791/src.jpg",
            "https://vgosti.by/files/galleries/2047/4792/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 20-27 см ",
            "about_item": "Зимняя интерьерная композиция "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Страстное сердце",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/strastnoe-serdce.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/974/icon.jpg",
            "https://vgosti.by/files/galleries/1490/2995/src.jpg",
            "https://vgosti.by/files/galleries/1490/2996/src.jpg",
            "https://vgosti.by/files/galleries/1490/2997/src.jpg",
            "https://vgosti.by/files/galleries/1490/2998/src.jpg",
            "https://vgosti.by/files/galleries/1490/2999/src.jpg",
            "https://vgosti.by/files/galleries/1490/5334/src.jpg",
            "https://vgosti.by/files/galleries/1490/5335/src.jpg",
            "https://vgosti.by/files/galleries/1490/5336/src.jpg",
            "https://vgosti.by/files/galleries/1490/5337/src.jpg",
            "https://vgosti.by/files/galleries/1490/5338/src.jpg",
            "https://vgosti.by/files/galleries/1490/5339/src.jpg",
            "https://vgosti.by/files/galleries/1490/5340/src.jpg",
            "https://vgosti.by/files/galleries/1490/5341/src.jpg",
            "https://vgosti.by/files/galleries/1490/5342/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "целофан ",
            "size": "15-20 см ",
            "about_item": "Букет из сухоцветов с стабилизированной розой - стойкость более 5 лет "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Гиацинт new",
        "item_link": "https://vgosti.by/8-marta/giacint-new.html",
        "cost_byn": "7.0",
        "photos": [
            "https://vgosti.by/files/items/1346/icon.jpg",
            "https://vgosti.by/files/galleries/2139/5006/src.jpg",
            "https://vgosti.by/files/galleries/2139/5007/src.jpg",
            "https://vgosti.by/files/galleries/2139/5008/src.jpg",
            "https://vgosti.by/files/galleries/2139/5009/src.jpg",
            "https://vgosti.by/files/galleries/2139/5010/src.jpg",
            "https://vgosti.by/files/galleries/2139/5167/src.jpg",
            "https://vgosti.by/files/galleries/2139/5168/src.jpg",
            "https://vgosti.by/files/galleries/2139/5169/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "Декорированное кашпо ",
            "size": "высота 10-15 см ",
            "about_item": "Гиацинт может быть цветущим, но и в луковице "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Цветочный скворечник A",
        "item_link": "https://vgosti.by/8-marta/cvetochnyj-skvorechnik-a.html",
        "cost_byn": "67.0",
        "photos": [
            "https://vgosti.by/files/items/1370/icon.jpg",
            "https://vgosti.by/files/galleries/2187/5181/src.jpg",
            "https://vgosti.by/files/galleries/2187/5182/src.jpg",
            "https://vgosti.by/files/galleries/2187/5183/src.jpg",
            "https://vgosti.by/files/galleries/2187/5184/src.jpg",
            "https://vgosti.by/files/galleries/2187/5185/src.jpg",
            "https://vgosti.by/files/galleries/2187/5186/src.jpg",
            "https://vgosti.by/files/galleries/2187/5187/src.jpg"
        ],
        "description": {
            "composition": [
                "Лагурус",
                "Ранункулюс",
                "Роза кустовая",
                "Роза пионовидная",
                "Тюльпаны"
            ],
            "package": "Деревянный скворечник с птичкой ",
            "size": "Высота 19-25 см ",
            "about_item": "Декоративный скворечник с птичкой "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Сердце из цветов в коробке Любовь",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/serdce-iz-cvetov-v-korobke-lyubov.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/580/icon.jpg",
            "https://vgosti.by/files/galleries/793/1686/src.jpg",
            "https://vgosti.by/files/galleries/793/1687/src.jpg",
            "https://vgosti.by/files/galleries/793/1688/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Ранункулюс",
                "Роза кустовая",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Коробка сердце ",
            "size": "20 см ",
            "about_item": "Отличный сюрприз для признания в любви "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Сердце из роз и клубники Страсть",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/serdce-iz-roz-i-klubniki-strast.html",
        "cost_byn": "350.0",
        "photos": [
            "https://vgosti.by/files/items/385/icon.jpg",
            "https://vgosti.by/files/galleries/421/588/src.jpg",
            "https://vgosti.by/files/galleries/421/589/src.jpg",
            "https://vgosti.by/files/galleries/421/590/src.jpg",
            "https://vgosti.by/files/galleries/421/591/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Флористическая основа ",
            "size": "от 35-45 см ",
            "about_item": "Сердце из роз с клубникой "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Сердце из роз Аква",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/serdce-iz-roz-akva.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/384/icon.jpg",
            "https://vgosti.by/files/galleries/419/586/src.jpg",
            "https://vgosti.by/files/galleries/419/587/src.jpg"
        ],
        "description": {
            "composition": [
                "Зелень"
            ],
            "package": "Флористическая основа ",
            "size": "диаметр 25-30 см ",
            "about_item": "Сердце из роз отличается своей стойкостью "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Сердце из роз \"С любовью...\"",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/serdce-iz-roz-quots-lyubovyuquot.html",
        "cost_byn": "259.0",
        "photos": [
            "https://vgosti.by/files/items/596/icon.jpg",
            "https://vgosti.by/files/galleries/821/3628/src.jpg",
            "https://vgosti.by/files/galleries/821/3629/src.jpg",
            "https://vgosti.by/files/galleries/821/3630/src.jpg",
            "https://vgosti.by/files/galleries/821/3631/src.jpg",
            "https://vgosti.by/files/galleries/821/3632/src.jpg",
            "https://vgosti.by/files/galleries/821/3633/src.jpg",
            "https://vgosti.by/files/galleries/821/3634/src.jpg",
            "https://vgosti.by/files/galleries/822/1722/src.jpg",
            "https://vgosti.by/files/galleries/822/1723/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза"
            ],
            "package": "Декорированное кашпо ",
            "size": "35-40 см ",
            "about_item": "Сердце из красных роз "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Приглашение на свидание",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/priglashenie-na-svidanie.html",
        "cost_byn": "19.0",
        "photos": [
            "https://vgosti.by/files/items/354/icon.jpg",
            "https://vgosti.by/files/galleries/381/541/src.jpg",
            "https://vgosti.by/files/galleries/381/542/src.jpg",
            "https://vgosti.by/files/galleries/381/543/src.jpg",
            "https://vgosti.by/files/galleries/381/544/src.jpg",
            "https://vgosti.by/files/galleries/381/545/src.jpg",
            "https://vgosti.by/files/galleries/381/546/src.jpg",
            "https://vgosti.by/files/galleries/381/1496/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза"
            ],
            "package": "Стильная упаковка, коробка с запиской ",
            "size": "от 50 до 60 см ",
            "about_item": "Стабилизированная роза стойкость более 5 лет "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Цветы от сердца",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/cvety-ot-serdca.html",
        "cost_byn": "82.0",
        "photos": [
            "https://vgosti.by/files/items/410/icon.jpg",
            "https://vgosti.by/files/galleries/467/3626/src.jpg",
            "https://vgosti.by/files/galleries/467/3627/src.jpg"
        ],
        "description": {
            "composition": [
                "Амариллис",
                "Аспарагус",
                "Аспидистра",
                "Дуб",
                "Зелень",
                "Роза кустовая",
                "Хризантема",
                "Эвкалипт",
                "Эрингиум",
                "Эустома"
            ],
            "package": "Коробка в форме сердца ",
            "size": "диаметр 20 см ",
            "about_item": "Нежный романтический букет в коробке "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Букет Сердце пробитое стрелой",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/serdce-probitoe-streloj.html",
        "cost_byn": "379.0",
        "photos": [
            "https://vgosti.by/files/items/382/icon.jpg",
            "https://vgosti.by/files/galleries/415/581/src.jpg",
            "https://vgosti.by/files/galleries/415/582/src.jpg",
            "https://vgosti.by/files/galleries/415/583/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза"
            ],
            "package": "Лента ",
            "size": "Больше среднего от 35-45 см, очень большой от 65 см ",
            "about_item": "Букет в форме сердца пробитого стрелой самый романтический подарок "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Букет из 35 роз",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/buket-iz-35-roz.html",
        "cost_byn": "219.0",
        "photos": [
            "https://vgosti.by/files/items/502/icon.jpg"
        ],
        "description": {
            "composition": [
                "Роза"
            ],
            "package": "Упаковка будет определена по Вашему желанию. ",
            "size": "высота 60-70 см ",
            "about_item": "Цвет розы может быть изменен заказчиком "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Розовое сердце",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/rozovoe-serdce.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/721/icon.jpg",
            "https://vgosti.by/files/galleries/1040/1961/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза"
            ],
            "package": "Флористическая основа ",
            "size": "диаметр см ",
            "about_item": "Валентинка - сердце из маленьких роз "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Тренд 2021 года",
        "item_link": "https://vgosti.by/svadebnye-bukety/trend-2021-goda.html",
        "cost_byn": "150.0",
        "photos": [
            "https://vgosti.by/files/items/1848/icon.jpg",
            "https://vgosti.by/files/galleries/3052/6938/src.jpg",
            "https://vgosti.by/files/galleries/3052/6939/src.jpg",
            "https://vgosti.by/files/galleries/3052/6940/src.jpg",
            "https://vgosti.by/files/galleries/3052/6941/src.jpg",
            "https://vgosti.by/files/galleries/3052/6942/src.jpg",
            "https://vgosti.by/files/galleries/3052/6943/src.jpg",
            "https://vgosti.by/files/galleries/3052/6944/src.jpg",
            "https://vgosti.by/files/galleries/3052/6945/src.jpg",
            "https://vgosti.by/files/galleries/3052/6946/src.jpg"
        ],
        "description": {
            "composition": [
                "Экзотика"
            ],
            "package": "ленты ",
            "size": "индивидуально ",
            "about_item": "Популярные букеты в 2021г "
        },
        "category": "Свадебные букеты"
    },
    {
        "item_name": "Белый Тюльпан сорт Снежная Леди",
        "item_link": "https://vgosti.by/8-marta/belyj-tyulpan-sort-snou-ledi.html",
        "cost_byn": "3.5",
        "photos": [
            "https://vgosti.by/files/items/757/icon.jpg",
            "https://vgosti.by/files/galleries/1102/3174/src.jpg",
            "https://vgosti.by/files/galleries/1102/3175/src.jpg",
            "https://vgosti.by/files/galleries/1102/3176/src.jpg",
            "https://vgosti.by/files/galleries/1103/5750/src.jpg",
            "https://vgosti.by/files/galleries/1103/5751/src.jpg"
        ],
        "description": {
            "composition": [
                "Тюльпаны"
            ],
            "package": "без упаковки ",
            "size": "высота 35 -45 см ",
            "about_item": "Тюльпан пр-во Голландия "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Молочный щербет",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/molochnyj-csherbet.html",
        "cost_byn": "139.0",
        "photos": [
            "https://vgosti.by/files/items/1238/icon.jpg",
            "https://vgosti.by/files/galleries/1933/4485/src.jpg",
            "https://vgosti.by/files/galleries/1933/4486/src.jpg",
            "https://vgosti.by/files/galleries/1933/4487/src.jpg",
            "https://vgosti.by/files/galleries/1933/4488/src.jpg",
            "https://vgosti.by/files/galleries/1933/4489/src.jpg",
            "https://vgosti.by/files/galleries/1933/4490/src.jpg",
            "https://vgosti.by/files/galleries/1933/4491/src.jpg",
            "https://vgosti.by/files/galleries/1933/4492/src.jpg",
            "https://vgosti.by/files/galleries/1933/4493/src.jpg",
            "https://vgosti.by/files/galleries/1933/4494/src.jpg",
            "https://vgosti.by/files/galleries/1933/4495/src.jpg",
            "https://vgosti.by/files/galleries/1933/4496/src.jpg",
            "https://vgosti.by/files/galleries/1933/4497/src.jpg",
            "https://vgosti.by/files/galleries/1933/4498/src.jpg",
            "https://vgosti.by/files/galleries/1933/4499/src.jpg",
            "https://vgosti.by/files/galleries/1933/4500/src.jpg",
            "https://vgosti.by/files/galleries/1933/4501/src.jpg",
            "https://vgosti.by/files/galleries/1933/4502/src.jpg",
            "https://vgosti.by/files/galleries/1933/4503/src.jpg",
            "https://vgosti.by/files/galleries/1933/4504/src.jpg",
            "https://vgosti.by/files/galleries/1933/4505/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Букет формы свадебный букет ",
            "size": "диаметр 25-29 см ",
            "about_item": "Букет невесты из сухоцветов и стабилизированных цветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Королёк",
        "item_link": "https://vgosti.by/8-marta/korolyok.html",
        "cost_byn": "47.0",
        "photos": [
            "https://vgosti.by/files/items/1441/icon.jpg",
            "https://vgosti.by/files/galleries/2319/5593/src.jpg",
            "https://vgosti.by/files/galleries/2319/5594/src.jpg",
            "https://vgosti.by/files/galleries/2319/5595/src.jpg",
            "https://vgosti.by/files/galleries/2319/5596/src.jpg",
            "https://vgosti.by/files/galleries/2319/5597/src.jpg",
            "https://vgosti.by/files/galleries/2319/5598/src.jpg",
            "https://vgosti.by/files/galleries/2319/5599/src.jpg",
            "https://vgosti.by/files/galleries/2319/5600/src.jpg"
        ],
        "description": {
            "composition": [
                "Гербера",
                "Роза пионовидная",
                "Тюльпаны",
                "Хризантема",
                "Эустома"
            ],
            "package": "Деревянный скворечник ",
            "size": "высота 18-20 см ",
            "about_item": "Весенняя композиция с птичкой "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Венок из живых цветов",
        "item_link": "https://vgosti.by/svadebnye-bukety/venok-iz-zhivyh-cvetov.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1552/icon.jpg",
            "https://vgosti.by/files/galleries/2515/6030/src.jpg",
            "https://vgosti.by/files/galleries/2515/6031/src.jpg",
            "https://vgosti.by/files/galleries/2515/6032/src.jpg",
            "https://vgosti.by/files/galleries/2515/6033/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": null,
            "size": "Индивидуальные ",
            "about_item": "Венок из живых цветов и сухоцветов "
        },
        "category": "Свадебные букеты"
    },
    {
        "item_name": "Букет-дублер",
        "item_link": "https://vgosti.by/svadebnye-bukety/buket-dubler-1.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/815/icon.jpg",
            "https://vgosti.by/files/galleries/1204/2287/src.jpg",
            "https://vgosti.by/files/galleries/1204/2288/src.jpg",
            "https://vgosti.by/files/galleries/1204/3837/src.jpg",
            "https://vgosti.by/files/galleries/1204/3839/src.jpg",
            "https://vgosti.by/files/galleries/1204/3840/src.jpg",
            "https://vgosti.by/files/galleries/1204/3841/src.jpg",
            "https://vgosti.by/files/galleries/1204/3842/src.jpg",
            "https://vgosti.by/files/galleries/1204/3843/src.jpg",
            "https://vgosti.by/files/galleries/1204/3844/src.jpg",
            "https://vgosti.by/files/galleries/1204/3846/src.jpg",
            "https://vgosti.by/files/galleries/1204/3847/src.jpg",
            "https://vgosti.by/files/galleries/1204/3848/src.jpg",
            "https://vgosti.by/files/galleries/1204/3916/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Роза кустовая",
                "Эустома"
            ],
            "package": "Атласные ленты ",
            "size": "15 см ",
            "about_item": "Свадебный букет-дублей "
        },
        "category": "Свадебные букеты"
    },
    {
        "item_name": "Пралеска",
        "item_link": "https://vgosti.by/korziny-s-cvetami/praleska.html",
        "cost_byn": "290.0",
        "photos": [
            "https://vgosti.by/files/items/65/icon.jpg",
            "https://vgosti.by/files/galleries/1/3635/src.jpg",
            "https://vgosti.by/files/galleries/1/3636/src.jpg",
            "https://vgosti.by/files/galleries/1/3637/src.jpg",
            "https://vgosti.by/files/galleries/1/3638/src.jpg",
            "https://vgosti.by/files/galleries/1/3639/src.jpg",
            "https://vgosti.by/files/galleries/1/3640/src.jpg"
        ],
        "description": {
            "composition": [
                "Пистация",
                "Питоспорум",
                "Роза",
                "Хризантема",
                "Эустома"
            ],
            "package": "Плетеная корзина ",
            "size": "Высота 30 см диаметр 40 см ",
            "about_item": "Большая корзина цветов для особых поводов "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Корзина с цветами 55 роз",
        "item_link": "https://vgosti.by/korziny-s-cvetami/korzina-s-cvetami-55-roz.html",
        "cost_byn": "469.0",
        "photos": [
            "https://vgosti.by/files/items/290/icon.jpg",
            "https://vgosti.by/files/galleries/253/4664/src.jpg",
            "https://vgosti.by/files/galleries/253/4665/src.jpg",
            "https://vgosti.by/files/galleries/253/4667/src.jpg",
            "https://vgosti.by/files/galleries/253/4666/src.jpg",
            "https://vgosti.by/files/galleries/253/4668/src.jpg",
            "https://vgosti.by/files/galleries/253/4669/src.jpg",
            "https://vgosti.by/files/galleries/253/4670/src.jpg",
            "https://vgosti.by/files/galleries/253/4671/src.jpg"
        ],
        "description": {
            "composition": [
                "Зелень",
                "Роза"
            ],
            "package": "Корзина ",
            "size": "от 65 см ",
            "about_item": "Стильная композиция в корзине "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Крем-брюле",
        "item_link": "https://vgosti.by/korziny-s-cvetami/krem-bryule.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/742/icon.jpg",
            "https://vgosti.by/files/galleries/1078/2001/src.jpg",
            "https://vgosti.by/files/galleries/1078/2002/src.jpg"
        ],
        "description": {
            "composition": [
                "Маттиола",
                "Ранункулюс",
                "Роза кустовая",
                "Хризантема",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Деревянное кашпо ",
            "size": "высота 35 см ",
            "about_item": "Нежная композиция к любому поводу "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Весенняя усадьба",
        "item_link": "https://vgosti.by/8-marta/vesennyaya-usadba.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/465/icon.jpg",
            "https://vgosti.by/files/galleries/577/3282/src.jpg",
            "https://vgosti.by/files/galleries/577/3283/src.jpg",
            "https://vgosti.by/files/galleries/577/3284/src.jpg",
            "https://vgosti.by/files/galleries/577/3285/src.jpg",
            "https://vgosti.by/files/galleries/577/3286/src.jpg",
            "https://vgosti.by/files/galleries/577/3287/src.jpg",
            "https://vgosti.by/files/galleries/577/3288/src.jpg",
            "https://vgosti.by/files/galleries/577/3289/src.jpg",
            "https://vgosti.by/files/galleries/577/3290/src.jpg",
            "https://vgosti.by/files/galleries/577/3291/src.jpg"
        ],
        "description": {
            "composition": [
                "Мужской состав"
            ],
            "package": "Плетеная корзина из натурального материала ",
            "size": "35 см на 13 см ",
            "about_item": "Композиция из луковичных растений "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Новогодняя композиция Трио",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/novogodnyaya-kompoziciya-trio.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/1359/icon.jpg",
            "https://vgosti.by/files/galleries/2165/5076/src.jpg",
            "https://vgosti.by/files/galleries/2165/5077/src.jpg",
            "https://vgosti.by/files/galleries/2165/5078/src.jpg",
            "https://vgosti.by/files/galleries/2165/5079/src.jpg",
            "https://vgosti.by/files/galleries/2165/5080/src.jpg",
            "https://vgosti.by/files/galleries/2165/5081/src.jpg",
            "https://vgosti.by/files/galleries/2165/5082/src.jpg",
            "https://vgosti.by/files/galleries/2165/5083/src.jpg",
            "https://vgosti.by/files/galleries/2165/5084/src.jpg",
            "https://vgosti.by/files/galleries/2165/5085/src.jpg",
            "https://vgosti.by/files/galleries/2165/5086/src.jpg",
            "https://vgosti.by/files/galleries/2165/5087/src.jpg",
            "https://vgosti.by/files/galleries/2165/5088/src.jpg",
            "https://vgosti.by/files/galleries/2165/5089/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Коробка ",
            "size": "высота 30-50 см ",
            "about_item": "Новогодняя композиция из трех предметов "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Воздушный коктель",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/vozdushnyj-koktel.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/1236/icon.jpg",
            "https://vgosti.by/files/galleries/1929/4457/src.jpg",
            "https://vgosti.by/files/galleries/1929/4458/src.jpg",
            "https://vgosti.by/files/galleries/1929/4459/src.jpg",
            "https://vgosti.by/files/galleries/1929/4460/src.jpg",
            "https://vgosti.by/files/galleries/1929/4461/src.jpg",
            "https://vgosti.by/files/galleries/1929/4462/src.jpg",
            "https://vgosti.by/files/galleries/1929/4463/src.jpg",
            "https://vgosti.by/files/galleries/1929/4464/src.jpg",
            "https://vgosti.by/files/galleries/1929/4465/src.jpg",
            "https://vgosti.by/files/galleries/1929/4466/src.jpg",
            "https://vgosti.by/files/galleries/1929/4467/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Интерьерная композиция из сухоцветов длительного использования "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Ласковый прибой",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/laskovyj-priboj.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/1217/icon.jpg",
            "https://vgosti.by/files/galleries/1897/4359/src.jpg",
            "https://vgosti.by/files/galleries/1897/4360/src.jpg",
            "https://vgosti.by/files/galleries/1897/4361/src.jpg",
            "https://vgosti.by/files/galleries/1897/4362/src.jpg",
            "https://vgosti.by/files/galleries/1897/4363/src.jpg",
            "https://vgosti.by/files/galleries/1897/4364/src.jpg",
            "https://vgosti.by/files/galleries/1897/4365/src.jpg",
            "https://vgosti.by/files/galleries/1897/4366/src.jpg",
            "https://vgosti.by/files/galleries/1897/4367/src.jpg",
            "https://vgosti.by/files/galleries/1897/4368/src.jpg",
            "https://vgosti.by/files/galleries/1897/4369/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка прямоугольной формы ",
            "size": "высота 20-25 см ",
            "about_item": "Интерьерная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Рождественский венок Милка",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/rozhdestvenskij-venok-milka.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/1289/icon.jpg",
            "https://vgosti.by/files/galleries/2031/4739/src.jpg",
            "https://vgosti.by/files/galleries/2031/4740/src.jpg",
            "https://vgosti.by/files/galleries/2031/4741/src.jpg",
            "https://vgosti.by/files/galleries/2031/4742/src.jpg",
            "https://vgosti.by/files/galleries/2031/4743/src.jpg",
            "https://vgosti.by/files/galleries/2031/4744/src.jpg",
            "https://vgosti.by/files/galleries/2031/4745/src.jpg",
            "https://vgosti.by/files/galleries/2031/4746/src.jpg",
            "https://vgosti.by/files/galleries/2031/4747/src.jpg",
            "https://vgosti.by/files/galleries/2031/4748/src.jpg",
            "https://vgosti.by/files/galleries/2031/4749/src.jpg",
            "https://vgosti.by/files/galleries/2031/4750/src.jpg",
            "https://vgosti.by/files/galleries/2031/4751/src.jpg",
            "https://vgosti.by/files/galleries/2031/4752/src.jpg",
            "https://vgosti.by/files/galleries/2031/4765/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "Коробка ",
            "size": "диаметр 50-55 см ",
            "about_item": "Венок из сухоцветов "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Венский вальс",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/venskij-vals.html",
        "cost_byn": "119.0",
        "photos": [
            "https://vgosti.by/files/items/1216/icon.jpg",
            "https://vgosti.by/files/galleries/1895/4349/src.jpg",
            "https://vgosti.by/files/galleries/1895/4350/src.jpg",
            "https://vgosti.by/files/galleries/1895/4351/src.jpg",
            "https://vgosti.by/files/galleries/1895/4352/src.jpg",
            "https://vgosti.by/files/galleries/1895/4353/src.jpg",
            "https://vgosti.by/files/galleries/1895/4354/src.jpg",
            "https://vgosti.by/files/galleries/1895/4355/src.jpg",
            "https://vgosti.by/files/galleries/1895/4356/src.jpg",
            "https://vgosti.by/files/galleries/1895/4357/src.jpg",
            "https://vgosti.by/files/galleries/1895/4358/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Интерьерная композиция из сухоцветов длительного использования "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Картина из цветов Нежность",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/kartina-iz-cvetov-nezhnost.html",
        "cost_byn": "109.0",
        "photos": [
            "https://vgosti.by/files/items/1117/icon.jpg",
            "https://vgosti.by/files/galleries/1726/3902/src.jpg",
            "https://vgosti.by/files/galleries/1726/3903/src.jpg",
            "https://vgosti.by/files/galleries/1726/3904/src.jpg",
            "https://vgosti.by/files/galleries/1726/3905/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "коробка из натурального дерева ",
            "size": "20 х 22 ",
            "about_item": "Картина из стабилизированных цветов и сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Монблан",
        "item_link": "https://vgosti.by/korziny-s-cvetami/monblan.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1164/icon.jpg",
            "https://vgosti.by/files/galleries/1799/4071/src.jpg",
            "https://vgosti.by/files/galleries/1799/4072/src.jpg",
            "https://vgosti.by/files/galleries/1799/4073/src.jpg",
            "https://vgosti.by/files/galleries/1799/4074/src.jpg",
            "https://vgosti.by/files/galleries/1799/4075/src.jpg",
            "https://vgosti.by/files/galleries/1799/4076/src.jpg",
            "https://vgosti.by/files/galleries/1799/4077/src.jpg",
            "https://vgosti.by/files/galleries/1799/4078/src.jpg"
        ],
        "description": {
            "composition": [
                "Хризантема",
                "Экзотика",
                "Эустома"
            ],
            "package": "Круглая корзина с ручкой ",
            "size": "диаметр 25 см ",
            "about_item": "Летняя композиция в корзине "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Марсала свадебные букеты",
        "item_link": "https://vgosti.by/svadebnye-bukety/marsala-svadebnye-bukety.html",
        "cost_byn": "160.0",
        "photos": [
            "https://vgosti.by/files/items/1122/icon.jpg",
            "https://vgosti.by/files/galleries/1736/3948/src.jpg",
            "https://vgosti.by/files/galleries/1736/3949/src.jpg",
            "https://vgosti.by/files/galleries/1736/3950/src.jpg",
            "https://vgosti.by/files/galleries/1736/3951/src.jpg",
            "https://vgosti.by/files/galleries/1736/3952/src.jpg",
            "https://vgosti.by/files/galleries/1736/3953/src.jpg",
            "https://vgosti.by/files/galleries/1736/3954/src.jpg",
            "https://vgosti.by/files/galleries/1736/3955/src.jpg",
            "https://vgosti.by/files/galleries/1736/3956/src.jpg",
            "https://vgosti.by/files/galleries/1736/3957/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Канадская пихта",
                "Амариллис",
                "Ананас",
                "Анемон",
                "Асклепия",
                "Аспарагус",
                "Аспидистра",
                "Астильба",
                "Астра",
                "Астранция",
                "Бамбук",
                "Банксия",
                "Берграс",
                "Бувардия",
                "Бруния",
                "Василёк",
                "Вероника",
                "Гортензия",
                "Гвоздика",
                "Гентиана",
                "Гербера",
                "Георгина",
                "Гиацинт",
                "Гипсофил",
                "Дельфиниум",
                "Диантус",
                "Дуб",
                "Ель",
                "Зелень",
                "Илекс",
                "Ирис",
                "Каллы",
                "Куркума",
                "Клематис",
                "Корилус",
                "Кампанула",
                "Котинус",
                "Краспедия",
                "Кактус",
                "Лаванда",
                "Лагурус",
                "Леукаспермум",
                "Лилия",
                "Лимон",
                "Лотос",
                "Мак",
                "Маттиола",
                "Мимоза",
                "Мускари",
                "Нарцисс",
                "Нигелла",
                "Нарине",
                "Орхидея",
                "Орнитогалум",
                "Озотамнус",
                "Оксипеталум",
                "Пион",
                "Пистация",
                "Питоспорум",
                "Подсолнух",
                "Протея",
                "Ранункулюс",
                "Роза",
                "Роза кустовая",
                "Роза французская",
                "Роза пионовидная",
                "Роза садовая",
                "Ромашки",
                "Рускус",
                "Сирень",
                "Скимия",
                "Статица"
            ],
            "package": "Ваза под букет в подарок ",
            "size": "Индивидуальные ",
            "about_item": "Примеры цвета марсала. Стоимость каждого букета просчитывается индивидуально "
        },
        "category": "Свадебные букеты"
    },
    {
        "item_name": "Снежинка",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/snezhinka.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/1303/icon.jpg",
            "https://vgosti.by/files/galleries/2059/4809/src.jpg",
            "https://vgosti.by/files/galleries/2059/4810/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Крафт-пакет ",
            "size": "ширина 22-25 см ",
            "about_item": "Новогодняя интерьерная композиция "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Лукошко",
        "item_link": "https://vgosti.by/korziny-s-cvetami/lukoshko.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/883/icon.jpg",
            "https://vgosti.by/files/galleries/1326/2629/src.jpg",
            "https://vgosti.by/files/galleries/1326/2630/src.jpg",
            "https://vgosti.by/files/galleries/1326/2631/src.jpg",
            "https://vgosti.by/files/galleries/1326/2632/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Каллы",
                "Лагурус",
                "Роза кустовая",
                "Роза пионовидная",
                "Эустома"
            ],
            "package": "Корзинка ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Лукошко с цветами тренд этого года "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Шик",
        "item_link": "https://vgosti.by/korziny-s-cvetami/shik.html",
        "cost_byn": "659.0",
        "photos": [
            "https://vgosti.by/files/items/274/icon.jpg",
            "https://vgosti.by/files/galleries/221/3518/src.jpg",
            "https://vgosti.by/files/galleries/221/3519/src.jpg",
            "https://vgosti.by/files/galleries/221/3520/src.jpg",
            "https://vgosti.by/files/galleries/221/3521/src.jpg",
            "https://vgosti.by/files/galleries/221/3522/src.jpg",
            "https://vgosti.by/files/galleries/221/3523/src.jpg",
            "https://vgosti.by/files/galleries/221/3524/src.jpg",
            "https://vgosti.by/files/galleries/221/3525/src.jpg",
            "https://vgosti.by/files/galleries/221/3526/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Анемон",
                "Бувардия",
                "Гортензия",
                "Гвоздика",
                "Маттиола",
                "Орхидея",
                "Ранункулюс",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Хамелациум",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Большая плетеная корзина ",
            "size": "высота 100 см ",
            "about_item": "Огромная корзина с большим количеством разнообразных цветов "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Волшебница",
        "item_link": "https://vgosti.by/korziny-s-cvetami/volshebnica.html",
        "cost_byn": "295.0",
        "photos": [
            "https://vgosti.by/files/items/614/icon.jpg",
            "https://vgosti.by/files/galleries/856/2091/src.jpg",
            "https://vgosti.by/files/galleries/856/2092/src.jpg",
            "https://vgosti.by/files/galleries/856/2093/src.jpg",
            "https://vgosti.by/files/galleries/856/2094/src.jpg",
            "https://vgosti.by/files/galleries/856/2095/src.jpg"
        ],
        "description": {
            "composition": [
                "Амариллис",
                "Зелень",
                "Орхидея",
                "Пистация",
                "Ранункулюс",
                "Роза кустовая",
                "Фрезия",
                "Эустома"
            ],
            "package": "Плетеная корзина ",
            "size": "диаметр корзины 45 см ",
            "about_item": "Сочетание срезанных цветов и горшечных Орхидей Фаленопсисов "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Снежный хлопок",
        "item_link": "https://vgosti.by/korziny-s-cvetami/snezhnyj-hlopok.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/926/icon.jpg",
            "https://vgosti.by/files/galleries/1408/2827/src.jpg",
            "https://vgosti.by/files/galleries/1408/2828/src.jpg",
            "https://vgosti.by/files/galleries/1408/2829/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Канадская пихта",
                "Лагурус",
                "Хлопок",
                "Хризантема"
            ],
            "package": "Керамическое кашпо ",
            "size": "диаметр 20 см ",
            "about_item": "Композиция длительной стойкости "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Нежность чувств",
        "item_link": "https://vgosti.by/korziny-s-cvetami/nezhnost-chuvstv.html",
        "cost_byn": "47.0",
        "photos": [
            "https://vgosti.by/files/items/993/icon.jpg",
            "https://vgosti.by/files/galleries/1524/3074/src.jpg",
            "https://vgosti.by/files/galleries/1524/3075/src.jpg",
            "https://vgosti.by/files/galleries/1524/3076/src.jpg",
            "https://vgosti.by/files/galleries/1524/3077/src.jpg",
            "https://vgosti.by/files/galleries/1524/3134/src.jpg",
            "https://vgosti.by/files/galleries/1524/3135/src.jpg",
            "https://vgosti.by/files/galleries/1524/3136/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Анемон",
                "Диантус",
                "Лагурус",
                "Роза",
                "Роза кустовая",
                "Тюльпаны"
            ],
            "package": "Деревянное кашпо с ручкой ",
            "size": "высота 20-25 см ",
            "about_item": "Композиция во флористической губке "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Лукошко Ред Ай",
        "item_link": "https://vgosti.by/korziny-s-cvetami/lukoshko-red-aj.html",
        "cost_byn": "87.0",
        "photos": [
            "https://vgosti.by/files/items/930/icon.jpg",
            "https://vgosti.by/files/galleries/1416/2842/src.jpg",
            "https://vgosti.by/files/galleries/1416/2843/src.jpg",
            "https://vgosti.by/files/galleries/1416/2844/src.jpg",
            "https://vgosti.by/files/galleries/1416/2845/src.jpg",
            "https://vgosti.by/files/galleries/1416/2846/src.jpg",
            "https://vgosti.by/files/galleries/1416/2847/src.jpg",
            "https://vgosti.by/files/galleries/1416/2848/src.jpg",
            "https://vgosti.by/files/galleries/1416/2849/src.jpg"
        ],
        "description": {
            "composition": [
                "Канадская пихта",
                "Роза кустовая",
                "Роза пионовидная",
                "Сирень",
                "Шишки"
            ],
            "package": "Лукошко ",
            "size": "ширина 20 см высота 30 см ",
            "about_item": "Композиция длительного использования "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Композиция Ампир",
        "item_link": "https://vgosti.by/korziny-s-cvetami/kompoziciya-ampir.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/230/icon.jpg",
            "https://vgosti.by/files/galleries/162/1048/src.jpg",
            "https://vgosti.by/files/galleries/162/1049/src.jpg",
            "https://vgosti.by/files/galleries/162/1050/src.jpg",
            "https://vgosti.by/files/galleries/162/1051/src.jpg",
            "https://vgosti.by/files/galleries/162/1052/src.jpg",
            "https://vgosti.by/files/galleries/162/1053/src.jpg"
        ],
        "description": {
            "composition": [
                "Аспидистра",
                "Гвоздика",
                "Краспедия",
                "Пистация",
                "Хризантема"
            ],
            "package": "Кашпо-корзина из натурального дерева ",
            "size": "от 25-35 см ",
            "about_item": "Стильная композиция в деревянном кашпо "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Рождественское настроение",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/rozhdestvenskoe-nastroenie.html",
        "cost_byn": "42.0",
        "photos": [
            "https://vgosti.by/files/items/1332/icon.jpg",
            "https://vgosti.by/files/galleries/2113/4944/src.jpg",
            "https://vgosti.by/files/galleries/2113/4945/src.jpg",
            "https://vgosti.by/files/galleries/2113/4946/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Плетеная корзина из натурального материала ",
            "size": "высота 17-22 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Елка Серебро",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/elka-serebro.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/634/icon.jpg",
            "https://vgosti.by/files/galleries/888/5154/src.jpg",
            "https://vgosti.by/files/galleries/888/5155/src.jpg",
            "https://vgosti.by/files/galleries/888/5156/src.jpg",
            "https://vgosti.by/files/galleries/888/5157/src.jpg",
            "https://vgosti.by/files/galleries/888/5158/src.jpg",
            "https://vgosti.by/files/galleries/888/5159/src.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 40 -45 см ",
            "about_item": "Елка из канадской пихты "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Елка Заснеженная",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/elka-zasnezhennaya.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/666/icon.jpg",
            "https://vgosti.by/files/galleries/944/5138/src.jpg",
            "https://vgosti.by/files/galleries/944/5139/src.jpg",
            "https://vgosti.by/files/galleries/944/5140/src.jpg",
            "https://vgosti.by/files/galleries/944/5141/src.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "Коробка ",
            "size": "высота 40 см ",
            "about_item": "Милая новогодняя елочка из натуральной пихты "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Новогодний крафт",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/novogodnij-kraft.html",
        "cost_byn": "25.0",
        "photos": [
            "https://vgosti.by/files/items/1304/icon.jpg",
            "https://vgosti.by/files/galleries/2061/4811/src.jpg",
            "https://vgosti.by/files/galleries/2061/4812/src.jpg",
            "https://vgosti.by/files/galleries/2061/4813/src.jpg",
            "https://vgosti.by/files/galleries/2061/4814/src.jpg",
            "https://vgosti.by/files/galleries/2061/4815/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 25-29 см ",
            "about_item": "Новогодняя композиция со свечой "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Композиция со свечой Огоньки",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/kompoziciya-so-svechoj-ogonki.html",
        "cost_byn": "67.0",
        "photos": [
            "https://vgosti.by/files/items/653/icon.jpg",
            "https://vgosti.by/files/galleries/926/5114/src.jpg",
            "https://vgosti.by/files/galleries/926/5115/src.jpg",
            "https://vgosti.by/files/galleries/926/5116/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Искусственный материал ",
            "size": "высота 25 ",
            "about_item": "Декоративная новогодняя композиция с натуральной пихтой "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Презент Жан Поль",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/prezent-zhan-pol.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/946/icon.jpg",
            "https://vgosti.by/files/galleries/1448/2913/src.jpg",
            "https://vgosti.by/files/galleries/1448/2914/src.jpg",
            "https://vgosti.by/files/galleries/1448/2915/src.jpg",
            "https://vgosti.by/files/galleries/1448/2916/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 18-20 см ",
            "about_item": "Новогодний презент для партнеров и друзей "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Ёлочка креативная",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/yolochka-kreativnaya.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/629/icon.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "Натуральные материалы ",
            "size": "Высота 35-40 см ",
            "about_item": "Креативная ёлочка ручной работы, с апельсоном, корицей, анисом- важными атрибутами Нового года "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Барокко",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/barokko.html",
        "cost_byn": "115.0",
        "photos": [
            "https://vgosti.by/files/items/1689/icon.jpg",
            "https://vgosti.by/files/galleries/2757/6506/src.jpg",
            "https://vgosti.by/files/galleries/2757/6507/src.jpg",
            "https://vgosti.by/files/galleries/2757/6508/src.jpg",
            "https://vgosti.by/files/galleries/2757/6509/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Крафт-пакет ",
            "size": "Высота 25 см Диаметр 35 см ",
            "about_item": "Композиция находится во флористической губке "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Карамболь",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/karambol.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1686/icon.jpg",
            "https://vgosti.by/files/galleries/2751/6479/src.jpg",
            "https://vgosti.by/files/galleries/2751/6480/src.jpg",
            "https://vgosti.by/files/galleries/2751/6481/src.jpg",
            "https://vgosti.by/files/galleries/2751/6482/src.jpg",
            "https://vgosti.by/files/galleries/2751/6483/src.jpg",
            "https://vgosti.by/files/galleries/2751/6484/src.jpg",
            "https://vgosti.by/files/galleries/2751/6485/src.jpg",
            "https://vgosti.by/files/galleries/2751/6486/src.jpg",
            "https://vgosti.by/files/galleries/2751/6487/src.jpg",
            "https://vgosti.by/files/galleries/2751/6488/src.jpg",
            "https://vgosti.by/files/galleries/2751/6489/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Крафт-пакет ",
            "size": "Длинна до 30 см ",
            "about_item": "Классическая композиция со свечами "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Адвент",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/advent.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1644/icon.jpg",
            "https://vgosti.by/files/galleries/2677/6336/src.jpg",
            "https://vgosti.by/files/galleries/2677/6337/src.jpg",
            "https://vgosti.by/files/galleries/2677/6338/src.jpg",
            "https://vgosti.by/files/galleries/2677/6339/src.jpg",
            "https://vgosti.by/files/galleries/2677/6340/src.jpg",
            "https://vgosti.by/files/galleries/2677/6341/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Основа из натуральных материалов ",
            "size": "ширина 30 высота 35 см ",
            "about_item": "Стильный подсвечник длительного использования "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Снежный день",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/snezhnyj-den.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/1669/icon.jpg",
            "https://vgosti.by/files/galleries/2723/6424/src.jpg",
            "https://vgosti.by/files/galleries/2723/6425/src.jpg",
            "https://vgosti.by/files/galleries/2723/6426/src.jpg",
            "https://vgosti.by/files/galleries/2723/6427/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "плетеное круглое кашпо ",
            "size": "Диаметр 22-25 см ",
            "about_item": "Композиция из нобилиса с новогодним декором "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Новогодний венок Ангел",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/novogodnij-venok-angel.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1665/icon.jpg",
            "https://vgosti.by/files/galleries/2715/6409/src.jpg",
            "https://vgosti.by/files/galleries/2715/6410/src.jpg",
            "https://vgosti.by/files/galleries/2715/6411/src.jpg",
            "https://vgosti.by/files/galleries/2715/6412/src.jpg",
            "https://vgosti.by/files/galleries/2715/6413/src.jpg",
            "https://vgosti.by/files/galleries/2715/6414/src.jpg",
            "https://vgosti.by/files/galleries/2715/6415/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "крафт-пакет ",
            "size": "диаметр 40 см ",
            "about_item": "Венок из нобилиса (не обсыпается) "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Сказочный гном",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/skazochnyj-gnom.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1661/icon.jpg",
            "https://vgosti.by/files/galleries/2707/6392/src.jpg",
            "https://vgosti.by/files/galleries/2707/6393/src.jpg",
            "https://vgosti.by/files/galleries/2707/6394/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Керамическое декоративное кашпо ",
            "size": "Высота 25 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Лапландия",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/laplandiya.html",
        "cost_byn": "109.0",
        "photos": [
            "https://vgosti.by/files/items/1639/icon.jpg",
            "https://vgosti.by/files/galleries/2667/6308/src.jpg",
            "https://vgosti.by/files/galleries/2667/6309/src.jpg",
            "https://vgosti.by/files/galleries/2667/6310/src.jpg",
            "https://vgosti.by/files/galleries/2667/6311/src.jpg",
            "https://vgosti.by/files/galleries/2667/6312/src.jpg",
            "https://vgosti.by/files/galleries/2667/6313/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Плетеное натуральное кашпо ",
            "size": "Диаметр 22-25 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Лаунж",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/launzh.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/1214/icon.jpg",
            "https://vgosti.by/files/galleries/1891/4328/src.jpg",
            "https://vgosti.by/files/galleries/1891/4329/src.jpg",
            "https://vgosti.by/files/galleries/1891/4330/src.jpg",
            "https://vgosti.by/files/galleries/1891/4331/src.jpg",
            "https://vgosti.by/files/galleries/1891/4332/src.jpg",
            "https://vgosti.by/files/galleries/1891/4333/src.jpg",
            "https://vgosti.by/files/galleries/1891/4334/src.jpg",
            "https://vgosti.by/files/galleries/1891/4335/src.jpg",
            "https://vgosti.by/files/galleries/1891/4336/src.jpg",
            "https://vgosti.by/files/galleries/1891/4337/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухофрукты"
            ],
            "package": "Деревянное кашпо с ручкой ",
            "size": "высота 20-25 см ",
            "about_item": "Композиция из сухоцветов и стабилизированных цветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Венок Северное сияние",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/venok-severnoe-siyanie.html",
        "cost_byn": "30.0",
        "photos": [
            "https://vgosti.by/files/items/1670/icon.jpg",
            "https://vgosti.by/files/galleries/2725/6428/src.jpg",
            "https://vgosti.by/files/galleries/2725/6429/src.jpg",
            "https://vgosti.by/files/galleries/2725/6430/src.jpg",
            "https://vgosti.by/files/galleries/2725/6431/src.jpg",
            "https://vgosti.by/files/galleries/2725/6432/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "Крафт-пакет ",
            "size": "диаметр 30-35 см ",
            "about_item": "Рождественский венок из натуральной хвои "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Золотой год",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/zolotoj-god.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/1667/icon.jpg",
            "https://vgosti.by/files/galleries/2719/6416/src.jpg",
            "https://vgosti.by/files/galleries/2719/6417/src.jpg",
            "https://vgosti.by/files/galleries/2719/6418/src.jpg",
            "https://vgosti.by/files/galleries/2719/6419/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "плетеное круглое кашпо ",
            "size": "диаметр 20-25 см ",
            "about_item": "Композиция из нобилиса с новогодним декором "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Снегурочка",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/snegurochka.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/1660/icon.jpg",
            "https://vgosti.by/files/galleries/2705/6389/src.jpg",
            "https://vgosti.by/files/galleries/2705/6390/src.jpg",
            "https://vgosti.by/files/galleries/2705/6391/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Деревянное дизайнерское кашпо-елочка ",
            "size": "ширина 20 см ",
            "about_item": "Композиция длительной стойкости "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Полночь",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/polnoch.html",
        "cost_byn": "110.0",
        "photos": [
            "https://vgosti.by/files/items/1663/icon.jpg",
            "https://vgosti.by/files/galleries/2711/6400/src.jpg",
            "https://vgosti.by/files/galleries/2711/6401/src.jpg",
            "https://vgosti.by/files/galleries/2711/6402/src.jpg",
            "https://vgosti.by/files/galleries/2711/6403/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Декоративное кашпо под медь ",
            "size": "диаметр 50 см ",
            "about_item": "Композиция из канадской сосны и пихты в европейском стиле "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Конфетти",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/konfetti.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/1622/icon.jpg",
            "https://vgosti.by/files/galleries/2633/6231/src.jpg",
            "https://vgosti.by/files/galleries/2633/6232/src.jpg",
            "https://vgosti.by/files/galleries/2633/6233/src.jpg",
            "https://vgosti.by/files/galleries/2633/6234/src.jpg",
            "https://vgosti.by/files/galleries/2633/6235/src.jpg",
            "https://vgosti.by/files/galleries/2633/6236/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Керамическая кружка ",
            "size": "высота 19-22 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Семейный день",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/semejnyj-den.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1671/icon.jpg",
            "https://vgosti.by/files/galleries/2727/6433/src.jpg",
            "https://vgosti.by/files/galleries/2727/6434/src.jpg",
            "https://vgosti.by/files/galleries/2727/6435/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "плетеное круглое кашпо ",
            "size": "Диаметр 22-25 см ",
            "about_item": "Композиция из натуральной пихты "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Рождественский венок Варшава",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/rozhdestvenskij-venok-varshava.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/1657/icon.jpg",
            "https://vgosti.by/files/galleries/2699/6375/src.jpg",
            "https://vgosti.by/files/galleries/2699/6376/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "крафт-пакет ",
            "size": "Высота 40- 45 см ",
            "about_item": "Венок из натуральной пихты "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Новогодняя история small",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/novogodnyaya-istoriya-small.html",
        "cost_byn": "50.0",
        "photos": [
            "https://vgosti.by/files/items/1618/icon.jpg",
            "https://vgosti.by/files/galleries/2625/6209/src.jpg",
            "https://vgosti.by/files/galleries/2625/6210/src.jpg",
            "https://vgosti.by/files/galleries/2625/6211/src.jpg",
            "https://vgosti.by/files/galleries/2625/6212/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Винтажная стеклянная ваза, стоимость за 1 единицу ",
            "size": "высота 15 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Чародеи",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/charodei.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1659/icon.jpg",
            "https://vgosti.by/files/galleries/2703/6386/src.jpg",
            "https://vgosti.by/files/galleries/2703/6387/src.jpg",
            "https://vgosti.by/files/galleries/2703/6388/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Керамическое кашпо ",
            "size": "Высота 35 см ",
            "about_item": "Декоративная композиция со свечами во флористическом оазисе "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Гренландия",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/grenlandiya.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1640/icon.jpg",
            "https://vgosti.by/files/galleries/2669/6314/src.jpg",
            "https://vgosti.by/files/galleries/2669/6315/src.jpg",
            "https://vgosti.by/files/galleries/2669/6316/src.jpg",
            "https://vgosti.by/files/galleries/2669/6317/src.jpg",
            "https://vgosti.by/files/galleries/2669/6318/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Плетеное круглое кашпо из натуральных материалов ",
            "size": "Диаметр 22-25 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Зимний Раф",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/zimnij-raf.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/1625/icon.jpg",
            "https://vgosti.by/files/galleries/2639/6256/src.jpg",
            "https://vgosti.by/files/galleries/2639/6257/src.jpg",
            "https://vgosti.by/files/galleries/2639/6258/src.jpg",
            "https://vgosti.by/files/galleries/2639/6259/src.jpg",
            "https://vgosti.by/files/galleries/2639/6260/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Большая керамическая кружка ",
            "size": "Высота 25 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Венок Морозное утро",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/venok-moroznoe-utro.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1655/icon.jpg",
            "https://vgosti.by/files/galleries/2695/6366/src.jpg",
            "https://vgosti.by/files/galleries/2695/6367/src.jpg",
            "https://vgosti.by/files/galleries/2695/6368/src.jpg",
            "https://vgosti.by/files/galleries/2695/6369/src.jpg",
            "https://vgosti.by/files/galleries/2695/6370/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "крафт-пакет ",
            "size": "Высота 40-45 см ",
            "about_item": "Декоративный венок из нобилиса с огоньками "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Магия уюта",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/magiya-uyuta.html",
        "cost_byn": "185.0",
        "photos": [
            "https://vgosti.by/files/items/1636/icon.jpg",
            "https://vgosti.by/files/galleries/2661/6293/src.jpg",
            "https://vgosti.by/files/galleries/2661/6294/src.jpg",
            "https://vgosti.by/files/galleries/2661/6295/src.jpg",
            "https://vgosti.by/files/galleries/2661/6296/src.jpg",
            "https://vgosti.by/files/galleries/2661/6297/src.jpg",
            "https://vgosti.by/files/galleries/2661/6298/src.jpg",
            "https://vgosti.by/files/galleries/2661/6299/src.jpg",
            "https://vgosti.by/files/galleries/2661/6300/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Плетеное кашпо на 3-х стильных ножках ",
            "size": "Высота 30 см, диаметр 25 см ",
            "about_item": "композиция длительного использования для входной группы или у камина "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Утренний снег 2",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/utrennij-sneg-2.html",
        "cost_byn": "43.0",
        "photos": [
            "https://vgosti.by/files/items/1617/icon.jpg",
            "https://vgosti.by/files/galleries/2623/6205/src.jpg",
            "https://vgosti.by/files/galleries/2623/6206/src.jpg",
            "https://vgosti.by/files/galleries/2623/6207/src.jpg",
            "https://vgosti.by/files/galleries/2623/6208/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Декоративное стеклянное кашпо ",
            "size": "Высота 25 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Богемия",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/bogemiya.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1638/icon.jpg",
            "https://vgosti.by/files/galleries/2665/6302/src.jpg",
            "https://vgosti.by/files/galleries/2665/6303/src.jpg",
            "https://vgosti.by/files/galleries/2665/6304/src.jpg",
            "https://vgosti.by/files/galleries/2665/6305/src.jpg",
            "https://vgosti.by/files/galleries/2665/6306/src.jpg",
            "https://vgosti.by/files/galleries/2665/6307/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами",
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Винтажная зеркальная ваза ",
            "size": "Высота 22-30см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Рождественский венок Рубин",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/rozhdestvenskij-venok-rubin.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1656/icon.jpg",
            "https://vgosti.by/files/galleries/2697/6371/src.jpg",
            "https://vgosti.by/files/galleries/2697/6372/src.jpg",
            "https://vgosti.by/files/galleries/2697/6373/src.jpg",
            "https://vgosti.by/files/galleries/2697/6374/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "крафт-пакет ",
            "size": "диаметр 40-45 см ",
            "about_item": "Декоративный венок из нобилиса (не осыпается) "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Композиция Адвент",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/kompoziciya-advent.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/640/icon.jpg",
            "https://vgosti.by/files/galleries/900/2715/src.jpg",
            "https://vgosti.by/files/galleries/900/2716/src.jpg",
            "https://vgosti.by/files/galleries/900/2717/src.jpg",
            "https://vgosti.by/files/galleries/900/2718/src.jpg",
            "https://vgosti.by/files/galleries/900/2719/src.jpg",
            "https://vgosti.by/files/galleries/900/2722/src.jpg",
            "https://vgosti.by/files/galleries/900/2721/src.jpg",
            "https://vgosti.by/files/galleries/900/2720/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Декоративное кашпо ",
            "size": "длинна 45 см ",
            "about_item": "Композиция со свечами на стол "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Хрусталь",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/hrustal.html",
        "cost_byn": "115.0",
        "photos": [
            "https://vgosti.by/files/items/1635/icon.jpg",
            "https://vgosti.by/files/galleries/2659/6289/src.jpg",
            "https://vgosti.by/files/galleries/2659/6290/src.jpg",
            "https://vgosti.by/files/galleries/2659/6291/src.jpg",
            "https://vgosti.by/files/galleries/2659/6292/src.jpg",
            "https://vgosti.by/files/galleries/2659/6301/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Винтажный кубок из стекла ",
            "size": "высота 18-22 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Новогоднее настроение",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/novogodnee-nastroenie.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/897/icon.jpg",
            "https://vgosti.by/files/galleries/1352/2730/src.jpg",
            "https://vgosti.by/files/galleries/1352/2731/src.jpg",
            "https://vgosti.by/files/galleries/1352/2732/src.jpg",
            "https://vgosti.by/files/galleries/1352/2733/src.jpg",
            "https://vgosti.by/files/galleries/1352/2734/src.jpg",
            "https://vgosti.by/files/galleries/1352/2735/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Керамическое кашпо ",
            "size": "высота 25см ",
            "about_item": "Композиция со свечой длительного использования "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Новогодние свечи",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/novogodnie-svechi.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/665/icon.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "венок и свечи ",
            "size": "диаметр 38 см ",
            "about_item": "Рождественский венок на стол со свечами "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Новогодняя история big",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/novogodnyaya-istoriya-big.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1620/icon.jpg",
            "https://vgosti.by/files/galleries/2629/6213/src.jpg",
            "https://vgosti.by/files/galleries/2629/6214/src.jpg",
            "https://vgosti.by/files/galleries/2629/6215/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Винтажная стеклянная ваза, стоимость за 1 единицу ",
            "size": "Высота 25 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Снегирь",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/snegir.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1658/icon.jpg",
            "https://vgosti.by/files/galleries/2701/6377/src.jpg",
            "https://vgosti.by/files/galleries/2701/6378/src.jpg",
            "https://vgosti.by/files/galleries/2701/6379/src.jpg",
            "https://vgosti.by/files/galleries/2701/6380/src.jpg",
            "https://vgosti.by/files/galleries/2701/6381/src.jpg",
            "https://vgosti.by/files/galleries/2701/6382/src.jpg",
            "https://vgosti.by/files/galleries/2701/6383/src.jpg",
            "https://vgosti.by/files/galleries/2701/6384/src.jpg",
            "https://vgosti.by/files/galleries/2701/6385/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Металлическая декоративная клетка ",
            "size": "высота 40-45 см ",
            "about_item": "Декоративная композиция со свечой в клетке "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Композиция со свечой Лесная",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/kompoziciya-so-svechoj-lesnaya.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/636/icon.jpg",
            "https://vgosti.by/files/galleries/892/5117/src.jpg",
            "https://vgosti.by/files/galleries/892/5118/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Металлическое кашпо художественной росписи ",
            "size": "высота 25-30 см ",
            "about_item": "Новогодняя композиция украсит ваш дом "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Рождественский венок Тайна",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/rozhdestvenskij-venok-tajna.html",
        "cost_byn": "35.0",
        "photos": [
            "https://vgosti.by/files/items/1650/icon.jpg",
            "https://vgosti.by/files/galleries/2685/6353/src.jpg",
            "https://vgosti.by/files/galleries/2685/6354/src.jpg",
            "https://vgosti.by/files/galleries/2685/6355/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "крафт-пакет ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Венок из канадской пихты и природного материала "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Новогоднее чудо",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/novogodnee-chudo.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1361/icon.jpg",
            "https://vgosti.by/files/galleries/2169/5096/src.jpg",
            "https://vgosti.by/files/galleries/2169/5097/src.jpg",
            "https://vgosti.by/files/galleries/2169/5098/src.jpg",
            "https://vgosti.by/files/galleries/2169/5099/src.jpg",
            "https://vgosti.by/files/galleries/2169/5100/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 30-45 см ",
            "about_item": "Композиция со свечой с декором "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Золотой лес",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/zolotoj-les.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1357/icon.jpg",
            "https://vgosti.by/files/galleries/2161/5066/src.jpg",
            "https://vgosti.by/files/galleries/2161/5067/src.jpg",
            "https://vgosti.by/files/galleries/2161/5068/src.jpg",
            "https://vgosti.by/files/galleries/2161/5069/src.jpg",
            "https://vgosti.by/files/galleries/2161/5070/src.jpg",
            "https://vgosti.by/files/galleries/2161/5071/src.jpg",
            "https://vgosti.by/files/galleries/2161/5072/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 20-25 см ",
            "about_item": "Новогодняя интерьерная композиция "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Новогодний экспресс",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/novogodnij-ekspress.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1298/icon.jpg",
            "https://vgosti.by/files/galleries/2049/4793/src.jpg",
            "https://vgosti.by/files/galleries/2049/4794/src.jpg",
            "https://vgosti.by/files/galleries/2049/4795/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Крафт-пакет ",
            "size": "ширина 22 см ",
            "about_item": "Композиция во флористической губке с нобилисом и свечой "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Северный полюс",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/severnyj-polyus.html",
        "cost_byn": "42.0",
        "photos": [
            "https://vgosti.by/files/items/1643/icon.jpg",
            "https://vgosti.by/files/galleries/2675/6328/src.jpg",
            "https://vgosti.by/files/galleries/2675/6329/src.jpg",
            "https://vgosti.by/files/galleries/2675/6330/src.jpg",
            "https://vgosti.by/files/galleries/2675/6331/src.jpg",
            "https://vgosti.by/files/galleries/2675/6332/src.jpg",
            "https://vgosti.by/files/galleries/2675/6333/src.jpg",
            "https://vgosti.by/files/galleries/2675/6334/src.jpg",
            "https://vgosti.by/files/galleries/2675/6335/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Керамическая кружка ",
            "size": "высота 15-22 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Белая вьюга",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/belaya-vyuga.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1626/icon.jpg",
            "https://vgosti.by/files/galleries/2641/6261/src.jpg",
            "https://vgosti.by/files/galleries/2641/6262/src.jpg",
            "https://vgosti.by/files/galleries/2641/6263/src.jpg",
            "https://vgosti.by/files/galleries/2641/6264/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Плетеная форма из натуральных материалов ",
            "size": "Диаметр 22-25 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Новогодний венок Кварц",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/novogodnij-venok-kvarc.html",
        "cost_byn": "35.0",
        "photos": [
            "https://vgosti.by/files/items/1295/icon.jpg",
            "https://vgosti.by/files/galleries/2043/4777/src.jpg",
            "https://vgosti.by/files/galleries/2043/4778/src.jpg",
            "https://vgosti.by/files/galleries/2043/4779/src.jpg",
            "https://vgosti.by/files/galleries/2043/4780/src.jpg",
            "https://vgosti.by/files/galleries/2043/4781/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "Коробка ",
            "size": "Диаметр 21 см ",
            "about_item": "Венок длительного использования "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Венок Изумруд",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/venok-izumrud.html",
        "cost_byn": "30.0",
        "photos": [
            "https://vgosti.by/files/items/1316/icon.jpg",
            "https://vgosti.by/files/galleries/2081/4874/src.jpg",
            "https://vgosti.by/files/galleries/2081/4875/src.jpg",
            "https://vgosti.by/files/galleries/2081/4877/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "Коробка ",
            "size": "диаметр 20 -22 см ",
            "about_item": "Рождественский венок длительного использования "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Венок Яркость",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/venok-yarkost.html",
        "cost_byn": "30.0",
        "photos": [
            "https://vgosti.by/files/items/1314/icon.jpg",
            "https://vgosti.by/files/galleries/2077/4867/src.jpg",
            "https://vgosti.by/files/galleries/2077/4868/src.jpg",
            "https://vgosti.by/files/galleries/2077/4869/src.jpg",
            "https://vgosti.by/files/galleries/2077/4870/src.jpg",
            "https://vgosti.by/files/galleries/2077/4876/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "Коробка ",
            "size": "Диаметр 20-22 см ",
            "about_item": "Декоративный рождественский венок "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Детская елочка",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/detskaya-elochka.html",
        "cost_byn": "139.0",
        "photos": [
            "https://vgosti.by/files/items/1353/icon.jpg",
            "https://vgosti.by/files/galleries/2153/5039/src.jpg",
            "https://vgosti.by/files/galleries/2153/5040/src.jpg",
            "https://vgosti.by/files/galleries/2153/5041/src.jpg",
            "https://vgosti.by/files/galleries/2153/5042/src.jpg",
            "https://vgosti.by/files/galleries/2153/5043/src.jpg",
            "https://vgosti.by/files/galleries/2153/5044/src.jpg",
            "https://vgosti.by/files/galleries/2153/5045/src.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 45-50 см ",
            "about_item": "Елочка из нобилиса с игрушками "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Сказочный корабль",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/skazochnyj-korabl.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1286/icon.jpg",
            "https://vgosti.by/files/galleries/2025/4716/src.jpg",
            "https://vgosti.by/files/galleries/2025/4717/src.jpg",
            "https://vgosti.by/files/galleries/2025/4718/src.jpg",
            "https://vgosti.by/files/galleries/2025/4719/src.jpg",
            "https://vgosti.by/files/galleries/2025/4720/src.jpg",
            "https://vgosti.by/files/galleries/2025/4721/src.jpg",
            "https://vgosti.by/files/galleries/2025/4722/src.jpg",
            "https://vgosti.by/files/galleries/2025/4723/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Коробка ",
            "size": "ширина 35-40 см ",
            "about_item": "Новогодняя интерьерная композиция "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Оленёнок",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/olenyonok.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/1300/icon.jpg",
            "https://vgosti.by/files/galleries/2053/4801/src.jpg",
            "https://vgosti.by/files/galleries/2053/4802/src.jpg",
            "https://vgosti.by/files/galleries/2053/4803/src.jpg",
            "https://vgosti.by/files/galleries/2053/4804/src.jpg",
            "https://vgosti.by/files/galleries/2053/4805/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 20-25 см ",
            "about_item": "Интерьерная зимняя композиция "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Венок Бархат",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/venok-barhat.html",
        "cost_byn": "30.0",
        "photos": [
            "https://vgosti.by/files/items/1315/icon.jpg",
            "https://vgosti.by/files/galleries/2079/4871/src.jpg",
            "https://vgosti.by/files/galleries/2079/4872/src.jpg",
            "https://vgosti.by/files/galleries/2079/4873/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "Коробка ",
            "size": "диаметр 20-22 см ",
            "about_item": "Декоративный рождественский венок "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Рождественская ночь",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/rozhdestvenskaya-noch.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1299/icon.jpg",
            "https://vgosti.by/files/galleries/2051/4796/src.jpg",
            "https://vgosti.by/files/galleries/2051/4797/src.jpg",
            "https://vgosti.by/files/galleries/2051/4798/src.jpg",
            "https://vgosti.by/files/galleries/2051/4799/src.jpg",
            "https://vgosti.by/files/galleries/2051/4800/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 35-40 см ",
            "about_item": "Интерьерная композиция со свечой в зимнем стиле "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Уютный вечер",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/uyutnyj-vecher.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1291/icon.jpg",
            "https://vgosti.by/files/galleries/2035/4766/src.jpg",
            "https://vgosti.by/files/galleries/2035/4767/src.jpg",
            "https://vgosti.by/files/galleries/2035/4768/src.jpg",
            "https://vgosti.by/files/galleries/2035/4769/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Коробка ",
            "size": "25х20 ",
            "about_item": "Алкогольная продукция в стоимость не входит "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Елочка Апельсинка",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/elochka-apelsinka.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1360/icon.jpg",
            "https://vgosti.by/files/galleries/2167/5090/src.jpg",
            "https://vgosti.by/files/galleries/2167/5091/src.jpg",
            "https://vgosti.by/files/galleries/2167/5092/src.jpg",
            "https://vgosti.by/files/galleries/2167/5093/src.jpg",
            "https://vgosti.by/files/galleries/2167/5094/src.jpg",
            "https://vgosti.by/files/galleries/2167/5095/src.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 35-45 см ",
            "about_item": "Натуральная заснеженная елка с натуральным декором "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Снег кружится",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/sneg-kruzhitsya.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1301/icon.jpg",
            "https://vgosti.by/files/galleries/2055/4806/src.jpg",
            "https://vgosti.by/files/galleries/2055/4807/src.jpg",
            "https://vgosti.by/files/galleries/2055/4808/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 30-35см ",
            "about_item": "Новогодняя композиция со свечами "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Бокал игристого",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/bokal-igristogo.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/1356/icon.jpg",
            "https://vgosti.by/files/galleries/2159/5058/src.jpg",
            "https://vgosti.by/files/galleries/2159/5059/src.jpg",
            "https://vgosti.by/files/galleries/2159/5060/src.jpg",
            "https://vgosti.by/files/galleries/2159/5061/src.jpg",
            "https://vgosti.by/files/galleries/2159/5062/src.jpg",
            "https://vgosti.by/files/galleries/2159/5063/src.jpg",
            "https://vgosti.by/files/galleries/2159/5064/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Коробка ",
            "size": "высота 40-45 см ",
            "about_item": "Новогодняя композиция со свечой в бокале "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Елочка Голубая Метелица",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/elochka-golubaya-metelica.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1287/icon.jpg",
            "https://vgosti.by/files/galleries/2027/4724/src.jpg",
            "https://vgosti.by/files/galleries/2027/4725/src.jpg",
            "https://vgosti.by/files/galleries/2027/4726/src.jpg",
            "https://vgosti.by/files/galleries/2027/4727/src.jpg",
            "https://vgosti.by/files/galleries/2027/4728/src.jpg",
            "https://vgosti.by/files/galleries/2027/4729/src.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 50 см ",
            "about_item": "Декоративная елочка ручной работы "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Венок Колокольчик",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/venok-kolokolchik.html",
        "cost_byn": "30.0",
        "photos": [
            "https://vgosti.by/files/items/1329/icon.jpg",
            "https://vgosti.by/files/galleries/2107/4939/src.jpg",
            "https://vgosti.by/files/galleries/2107/4940/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "Коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Рождественский венок длительного использования "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Елка Карнавальная",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/elka-karnavalnaya.html",
        "cost_byn": "195.0",
        "photos": [
            "https://vgosti.by/files/items/1312/icon.jpg",
            "https://vgosti.by/files/galleries/2073/4849/src.jpg",
            "https://vgosti.by/files/galleries/2073/4850/src.jpg",
            "https://vgosti.by/files/galleries/2073/4851/src.jpg",
            "https://vgosti.by/files/galleries/2073/4852/src.jpg",
            "https://vgosti.by/files/galleries/2073/4853/src.jpg",
            "https://vgosti.by/files/galleries/2073/4854/src.jpg",
            "https://vgosti.by/files/galleries/2073/4855/src.jpg",
            "https://vgosti.by/files/galleries/2073/4856/src.jpg",
            "https://vgosti.by/files/galleries/2073/4857/src.jpg",
            "https://vgosti.by/files/galleries/2073/4858/src.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "Коробка ",
            "size": "Высота 50 см, диаметр елки 35-40 см ",
            "about_item": "Елка из натуральной канадской ели с дополнительным разнообразным декором "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Зимний сон",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/zimnij-son.html",
        "cost_byn": "72.0",
        "photos": [
            "https://vgosti.by/files/items/1306/icon.jpg",
            "https://vgosti.by/files/galleries/2065/4821/src.jpg",
            "https://vgosti.by/files/galleries/2065/4822/src.jpg",
            "https://vgosti.by/files/galleries/2065/4823/src.jpg",
            "https://vgosti.by/files/galleries/2065/4824/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 27-35 см ",
            "about_item": "Интерьерная композиция в зимнем стиле со свечой "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Рождественская звезда",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/rozhdestvenskaya-zvezda.html",
        "cost_byn": "25.0",
        "photos": [
            "https://vgosti.by/files/items/1320/icon.jpg",
            "https://vgosti.by/files/galleries/2089/4900/src.jpg",
            "https://vgosti.by/files/galleries/2089/4901/src.jpg",
            "https://vgosti.by/files/galleries/2089/4902/src.jpg",
            "https://vgosti.by/files/galleries/2089/4931/src.jpg",
            "https://vgosti.by/files/galleries/2089/4932/src.jpg",
            "https://vgosti.by/files/galleries/2089/4933/src.jpg",
            "https://vgosti.by/files/galleries/2089/4934/src.jpg",
            "https://vgosti.by/files/galleries/2089/4935/src.jpg",
            "https://vgosti.by/files/galleries/2089/4936/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Крафт-пакет ",
            "size": "Высота 15-17 см ",
            "about_item": "Подсвечник декоративный в форме звезды "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Оливье",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/olive.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/896/icon.jpg",
            "https://vgosti.by/files/galleries/1350/2702/src.jpg",
            "https://vgosti.by/files/galleries/1350/2703/src.jpg",
            "https://vgosti.by/files/galleries/1350/2704/src.jpg",
            "https://vgosti.by/files/galleries/1350/2705/src.jpg",
            "https://vgosti.by/files/galleries/1350/2706/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Металлическое декоративное кашпо ",
            "size": "высота 30 см ",
            "about_item": "Композиция на стол длительного использования "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Белый медведь",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/belyj-medved.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/944/icon.jpg",
            "https://vgosti.by/files/galleries/1444/2906/src.jpg",
            "https://vgosti.by/files/galleries/1444/2907/src.jpg",
            "https://vgosti.by/files/galleries/1444/2908/src.jpg",
            "https://vgosti.by/files/galleries/1444/2909/src.jpg",
            "https://vgosti.by/files/galleries/1444/2910/src.jpg",
            "https://vgosti.by/files/galleries/1444/2911/src.jpg",
            "https://vgosti.by/files/galleries/1444/2912/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Декоративное кашпо в форме елочки ",
            "size": "ширина 20 см ",
            "about_item": "Новогодний подарок "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Композиция со свечой Рождество",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/kompoziciya-so-svechoj-rozhdestvo.html",
        "cost_byn": "39.0",
        "photos": [
            "https://vgosti.by/files/items/680/icon.jpg",
            "https://vgosti.by/files/galleries/964/1889/src.jpg",
            "https://vgosti.by/files/galleries/964/1890/src.jpg",
            "https://vgosti.by/files/galleries/964/1891/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Деревянное кашпо ",
            "size": "размер кашпо 9 х 9 см ",
            "about_item": "Предновогодняя композиция со свечой "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Рождественское счастье",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/rozhdestvenskoe-schaste.html",
        "cost_byn": "39.0",
        "photos": [
            "https://vgosti.by/files/items/688/icon.jpg",
            "https://vgosti.by/files/galleries/978/1908/src.jpg",
            "https://vgosti.by/files/galleries/978/1909/src.jpg",
            "https://vgosti.by/files/galleries/978/1910/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Деревянное кашпо ",
            "size": "10х10 ",
            "about_item": "Новогоднее украшение на стол "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Домашний очаг",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/domashnij-ochag.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/894/icon.jpg",
            "https://vgosti.by/files/galleries/1346/2695/src.jpg",
            "https://vgosti.by/files/galleries/1346/2696/src.jpg",
            "https://vgosti.by/files/galleries/1346/2697/src.jpg",
            "https://vgosti.by/files/galleries/1346/2698/src.jpg",
            "https://vgosti.by/files/galleries/1346/2699/src.jpg",
            "https://vgosti.by/files/galleries/1346/2700/src.jpg",
            "https://vgosti.by/files/galleries/1346/2701/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Керамическое кашпо ",
            "size": null,
            "about_item": "Композиция со свечой длительного использования "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Композиция со свечой Лёд",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/rozhdestvenskaya-1.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/652/icon.jpg",
            "https://vgosti.by/files/galleries/924/1865/src.jpg",
            "https://vgosti.by/files/galleries/924/1866/src.jpg",
            "https://vgosti.by/files/galleries/924/1867/src.jpg",
            "https://vgosti.by/files/galleries/924/1868/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "керамическое кашпо ",
            "size": "высота 25см ",
            "about_item": "Композиция на новогодний стол "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Рождественский венок Классика",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/rozhdestvenskij-venok-klassika.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/912/icon.jpg",
            "https://vgosti.by/files/galleries/1382/2791/src.jpg",
            "https://vgosti.by/files/galleries/1382/2792/src.jpg",
            "https://vgosti.by/files/galleries/1382/2793/src.jpg",
            "https://vgosti.by/files/galleries/1382/2794/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "без упаковки ",
            "size": "диаметр 35 см ",
            "about_item": "натуральная канадская ель не сыпется и прекрасно сохраняется "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Новогодняя ночь",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/novogodnyaya-noch.html",
        "cost_byn": "59.0",
        "photos": [
            "https://vgosti.by/files/items/635/icon.jpg",
            "https://vgosti.by/files/galleries/890/5107/src.jpg",
            "https://vgosti.by/files/galleries/890/5108/src.jpg",
            "https://vgosti.by/files/galleries/890/5109/src.jpg",
            "https://vgosti.by/files/galleries/890/5110/src.jpg",
            "https://vgosti.by/files/galleries/890/5111/src.jpg",
            "https://vgosti.by/files/galleries/890/5112/src.jpg",
            "https://vgosti.by/files/galleries/890/5113/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "пластиковое кашпо ",
            "size": "ширина 15-17 см ",
            "about_item": "Новогодняя композиция преобразит ваш дом "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Шампанское под Рождество (декор)",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/shampanskoe-pod-rozhdestvo-dekor.html",
        "cost_byn": "25.0",
        "photos": [
            "https://vgosti.by/files/items/643/icon.jpg",
            "https://vgosti.by/files/galleries/906/1817/src.jpg",
            "https://vgosti.by/files/galleries/906/1818/src.jpg",
            "https://vgosti.by/files/galleries/906/1819/src.jpg",
            "https://vgosti.by/files/galleries/906/1820/src.jpg",
            "https://vgosti.by/files/galleries/906/1821/src.jpg",
            "https://vgosti.by/files/galleries/906/1822/src.jpg",
            "https://vgosti.by/files/galleries/906/1823/src.jpg",
            "https://vgosti.by/files/galleries/906/1824/src.jpg",
            "https://vgosti.by/files/galleries/906/1825/src.jpg",
            "https://vgosti.by/files/galleries/906/1826/src.jpg",
            "https://vgosti.by/files/galleries/906/1827/src.jpg",
            "https://vgosti.by/files/galleries/906/1828/src.jpg",
            "https://vgosti.by/files/galleries/906/1829/src.jpg",
            "https://vgosti.by/files/galleries/906/1830/src.jpg",
            "https://vgosti.by/files/galleries/906/1831/src.jpg",
            "https://vgosti.by/files/galleries/906/1832/src.jpg",
            "https://vgosti.by/files/galleries/906/1833/src.jpg",
            "https://vgosti.by/files/galleries/906/1834/src.jpg",
            "https://vgosti.by/files/galleries/906/1835/src.jpg",
            "https://vgosti.by/files/galleries/906/1836/src.jpg",
            "https://vgosti.by/files/galleries/906/1837/src.jpg",
            "https://vgosti.by/files/galleries/906/1838/src.jpg",
            "https://vgosti.by/files/galleries/906/1839/src.jpg",
            "https://vgosti.by/files/galleries/906/1840/src.jpg",
            "https://vgosti.by/files/galleries/906/1841/src.jpg",
            "https://vgosti.by/files/galleries/906/1842/src.jpg",
            "https://vgosti.by/files/galleries/906/1843/src.jpg",
            "https://vgosti.by/files/galleries/906/1844/src.jpg",
            "https://vgosti.by/files/galleries/906/1845/src.jpg",
            "https://vgosti.by/files/galleries/906/1846/src.jpg",
            "https://vgosti.by/files/galleries/906/1847/src.jpg",
            "https://vgosti.by/files/galleries/906/1848/src.jpg",
            "https://vgosti.by/files/galleries/906/1849/src.jpg",
            "https://vgosti.by/files/galleries/906/1850/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "декор может быть различным - см.фото ",
            "size": "высота 32 см ",
            "about_item": "В стоимость входит только декор Вашего шампанского "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Дед Мороз",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/ded-moroz-1.html",
        "cost_byn": "39.0",
        "photos": [
            "https://vgosti.by/files/items/904/icon.jpg",
            "https://vgosti.by/files/galleries/1366/2757/src.jpg",
            "https://vgosti.by/files/galleries/1366/2758/src.jpg",
            "https://vgosti.by/files/galleries/1366/2760/src.jpg",
            "https://vgosti.by/files/galleries/1366/2759/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Подарочный пакет ",
            "size": "высота 25-35 см ",
            "about_item": "Декор бутылки пива, вина, шампанского "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Венок-композиция \"Верь в чудеса\"",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/venok-kompoziciya-quotver-v-chudesaquot.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/895/icon.jpg",
            "https://vgosti.by/files/galleries/1348/2707/src.jpg",
            "https://vgosti.by/files/galleries/1348/2708/src.jpg",
            "https://vgosti.by/files/galleries/1348/2709/src.jpg",
            "https://vgosti.by/files/galleries/1348/2710/src.jpg",
            "https://vgosti.by/files/galleries/1348/2711/src.jpg",
            "https://vgosti.by/files/galleries/1348/2712/src.jpg",
            "https://vgosti.by/files/galleries/1348/2713/src.jpg",
            "https://vgosti.by/files/galleries/1348/2714/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "без упаковки ",
            "size": "Диаметр 35 см ",
            "about_item": "Венок-композиция может использоваться в разных вариантах "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Подарок к Новому году VIP",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/podarok-k-novomu-godu-vip.html",
        "cost_byn": "115.0",
        "photos": [
            "https://vgosti.by/files/items/668/icon.jpg",
            "https://vgosti.by/files/galleries/948/1877/src.jpg",
            "https://vgosti.by/files/galleries/948/1878/src.jpg",
            "https://vgosti.by/files/galleries/948/1879/src.jpg",
            "https://vgosti.by/files/galleries/948/1880/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Ящик из натурального дерева ",
            "size": "36х28 см ",
            "about_item": "Подарок для руководителя и партнеров "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Рождественский венок 12 Месяцев",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/rozhdestvenskij-venok-12-mesyacev.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/913/icon.jpg",
            "https://vgosti.by/files/galleries/1384/2795/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "без упаковки ",
            "size": "диаметр 35 см ",
            "about_item": "натуральная канадская ель не сыпется и прекрасно сохраняется "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Елочка Нобилис",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/elochka-nobilis.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/689/icon.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "В керамической вазе ",
            "size": "высота 45 см ",
            "about_item": "Натуральные материалы "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Рождественский венок Серебро",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/rozhdestvenskij-venok-serebro.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/679/icon.jpg",
            "https://vgosti.by/files/galleries/962/1887/src.jpg",
            "https://vgosti.by/files/galleries/962/1888/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": null,
            "size": "диаметр 40 см ",
            "about_item": "Рождественский венок может быть любого заказанного вами диаметра "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Рождественский венок Снежок",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/rozhdestvenskij-venok-snezhok.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/676/icon.jpg",
            "https://vgosti.by/files/galleries/956/1881/src.jpg",
            "https://vgosti.by/files/galleries/956/1882/src.jpg",
            "https://vgosti.by/files/galleries/956/1883/src.jpg",
            "https://vgosti.by/files/galleries/956/1884/src.jpg",
            "https://vgosti.by/files/galleries/956/1885/src.jpg",
            "https://vgosti.by/files/galleries/956/2726/src.jpg",
            "https://vgosti.by/files/galleries/956/2727/src.jpg",
            "https://vgosti.by/files/galleries/956/2728/src.jpg",
            "https://vgosti.by/files/galleries/956/2729/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "нет ",
            "size": "диаметр 38 см ",
            "about_item": "Венок из натурального хлопка, корицы "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Коробка с цветами и вином размер L",
        "item_link": "https://vgosti.by/cvety-v-korobke/korobka-s-cvetami-i-vinom-razmer-l.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/573/icon.jpg",
            "https://vgosti.by/files/galleries/779/1653/src.jpg",
            "https://vgosti.by/files/galleries/779/1654/src.jpg",
            "https://vgosti.by/files/galleries/779/1655/src.jpg",
            "https://vgosti.by/files/galleries/779/1656/src.jpg",
            "https://vgosti.by/files/galleries/779/1657/src.jpg",
            "https://vgosti.by/files/galleries/779/1658/src.jpg",
            "https://vgosti.by/files/galleries/779/1659/src.jpg",
            "https://vgosti.by/files/galleries/779/1660/src.jpg",
            "https://vgosti.by/files/galleries/779/1661/src.jpg",
            "https://vgosti.by/files/galleries/779/1662/src.jpg",
            "https://vgosti.by/files/galleries/780/1664/src.jpg",
            "https://vgosti.by/files/galleries/780/1665/src.jpg",
            "https://vgosti.by/files/galleries/780/1663/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Амариллис",
                "Ананас",
                "Анемон",
                "Аспарагус",
                "Аспидистра",
                "Астильба",
                "Астра",
                "Астранция",
                "Бамбук",
                "Берграс",
                "Бувардия",
                "Бруния",
                "Василёк",
                "Вероника",
                "Гортензия",
                "Гвоздика",
                "Гербера",
                "Георгина",
                "Гиацинт",
                "Гипсофил",
                "Дельфиниум",
                "Диантус",
                "Дуб",
                "Ель",
                "Зелень",
                "Илекс",
                "Ирис",
                "Каллы",
                "Куркума",
                "Корилус",
                "Краспедия",
                "Кактус",
                "Лаванда",
                "Леукаспермум",
                "Лилия",
                "Лимон",
                "Лотос",
                "Мак",
                "Маттиола",
                "Мускари",
                "Нарцисс",
                "Нигелла",
                "Орхидея",
                "Орнитогалум",
                "Озотамнус",
                "Пион",
                "Пистация",
                "Питоспорум",
                "Подсолнух",
                "Протея",
                "Ранункулюс",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Ромашки",
                "Рускус",
                "Сирень",
                "Скимия",
                "Статица",
                "Трахелиум",
                "Суккуленты",
                "Тубероза",
                "Тюльпаны",
                "Фрезия",
                "Фрукты",
                "Хамелациум",
                "Хиперикум",
                "Хлопок",
                "Хризантема",
                "Цинерария",
                "Шишки",
                "Эвкалипт",
                "Экзотика",
                "Эрингиум",
                "Эустома"
            ],
            "package": "Коробка из натурального дерева ",
            "size": "25 см х 35 см ",
            "about_item": "В стоимость композиции вино не включено "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Иллюзия",
        "item_link": "https://vgosti.by/bukety/illyuziya.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/1910/icon.jpg",
            "https://vgosti.by/files/galleries/3168/7068/src.jpg",
            "https://vgosti.by/files/galleries/3168/7069/src.jpg",
            "https://vgosti.by/files/galleries/3168/7070/src.jpg"
        ],
        "description": {
            "composition": [
                "Георгина",
                "Роза кустовая",
                "Роза пионовидная",
                "Экзотика"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 25-30 см ",
            "about_item": "Стильный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Зимний рубин",
        "item_link": "https://vgosti.by/bukety/zimnij-rubin.html",
        "cost_byn": "79.0",
        "photos": [
            "https://vgosti.by/files/items/1349/icon.jpg",
            "https://vgosti.by/files/galleries/2145/5017/src.jpg",
            "https://vgosti.by/files/galleries/2145/5018/src.jpg",
            "https://vgosti.by/files/galleries/2145/5019/src.jpg",
            "https://vgosti.by/files/galleries/2145/5020/src.jpg",
            "https://vgosti.by/files/galleries/2145/5021/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза"
            ],
            "package": "Корейская бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Зимний букет из роз "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Остров",
        "item_link": "https://vgosti.by/cvety-v-korobke/ostrov.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/835/icon.jpg",
            "https://vgosti.by/files/galleries/1238/2399/src.jpg",
            "https://vgosti.by/files/galleries/1238/2400/src.jpg",
            "https://vgosti.by/files/galleries/1238/2401/src.jpg",
            "https://vgosti.by/files/galleries/1238/2402/src.jpg",
            "https://vgosti.by/files/galleries/1238/2403/src.jpg",
            "https://vgosti.by/files/galleries/1238/2404/src.jpg",
            "https://vgosti.by/files/galleries/1238/2405/src.jpg",
            "https://vgosti.by/files/galleries/1238/2406/src.jpg",
            "https://vgosti.by/files/galleries/1238/2407/src.jpg",
            "https://vgosti.by/files/galleries/1238/2408/src.jpg"
        ],
        "description": {
            "composition": [
                "Нигелла",
                "Пистация",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Хризантема",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 17 см ",
            "about_item": "Нежная и элегантная "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Красные свадебные букеты",
        "item_link": "https://vgosti.by/svadebnye-bukety/krasnye-svadebnye-bukety.html",
        "cost_byn": "150.0",
        "photos": [
            "https://vgosti.by/files/items/446/icon.jpg",
            "https://vgosti.by/files/galleries/539/3802/src.jpg",
            "https://vgosti.by/files/galleries/539/3803/src.jpg",
            "https://vgosti.by/files/galleries/539/3804/src.jpg",
            "https://vgosti.by/files/galleries/539/3805/src.jpg",
            "https://vgosti.by/files/galleries/539/3806/src.jpg",
            "https://vgosti.by/files/galleries/539/3807/src.jpg",
            "https://vgosti.by/files/galleries/539/3808/src.jpg",
            "https://vgosti.by/files/galleries/539/3809/src.jpg",
            "https://vgosti.by/files/galleries/539/4168/src.jpg",
            "https://vgosti.by/files/galleries/539/4169/src.jpg",
            "https://vgosti.by/files/galleries/539/4170/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Асклепия",
                "Аспарагус",
                "Аспидистра",
                "Астильба",
                "Астра",
                "Астранция",
                "Бамбук",
                "Банксия",
                "Берграс",
                "Бувардия",
                "Бруния",
                "Василёк",
                "Вероника",
                "Гортензия",
                "Гвоздика",
                "Гентиана",
                "Гербера",
                "Георгина",
                "Гиацинт",
                "Гипсофил",
                "Дельфиниум",
                "Диантус",
                "Дуб",
                "Ель",
                "Зелень",
                "Илекс",
                "Ирис",
                "Каллы",
                "Куркума",
                "Клематис",
                "Корилус",
                "Кампанула",
                "Котинус",
                "Краспедия",
                "Кактус",
                "Лаванда",
                "Лагурус",
                "Леукаспермум",
                "Лилия",
                "Лимон",
                "Лотос",
                "Мак",
                "Маттиола",
                "Мимоза",
                "Мускари",
                "Нарцисс",
                "Нигелла",
                "Нарине",
                "Орхидея",
                "Орнитогалум",
                "Озотамнус",
                "Оксипеталум",
                "Пион",
                "Пистация",
                "Питоспорум",
                "Подсолнух",
                "Протея",
                "Ранункулюс",
                "Роза",
                "Роза кустовая",
                "Роза французская",
                "Роза пионовидная",
                "Роза садовая",
                "Ромашки",
                "Рускус",
                "Сирень",
                "Скимия",
                "Статица",
                "Трахелиум",
                "Суккуленты",
                "Тубероза"
            ],
            "package": "Ваза под букет в подарок ",
            "size": "Индивидуальные ",
            "about_item": "Примеры в красных оттенках. Стоимость каждого букета просчитывается индивидуально "
        },
        "category": "Свадебные букеты"
    },
    {
        "item_name": "Крафт",
        "item_link": "https://vgosti.by/cvety-v-korobke/kraft.html",
        "cost_byn": "29.0",
        "photos": [
            "https://vgosti.by/files/items/256/icon.jpg",
            "https://vgosti.by/files/galleries/185/3295/src.jpg",
            "https://vgosti.by/files/galleries/185/3296/src.jpg",
            "https://vgosti.by/files/galleries/185/3297/src.jpg",
            "https://vgosti.by/files/galleries/185/3298/src.jpg",
            "https://vgosti.by/files/galleries/185/3299/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Хризантема"
            ],
            "package": "Квадратная коробка ",
            "size": "ширина 16 см высота 17 см ",
            "about_item": "Стильная композиция в квадратной коробке "
        },
        "category": "Цветы в коробке"
    },
    {
        "item_name": "Сладкий миндаль",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/sladkij-mindal.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/1925/icon.jpg",
            "https://vgosti.by/files/galleries/3198/7109/src.jpg",
            "https://vgosti.by/files/galleries/3198/7110/src.jpg",
            "https://vgosti.by/files/galleries/3198/7111/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухофрукты"
            ],
            "package": "Шляпная коробка ",
            "size": "Высота 20 см ",
            "about_item": "Композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Елочка Розовая Метелица",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/elochka-rozovaya-metelica.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1288/icon.jpg",
            "https://vgosti.by/files/galleries/2029/4730/src.jpg",
            "https://vgosti.by/files/galleries/2029/4731/src.jpg",
            "https://vgosti.by/files/galleries/2029/4732/src.jpg",
            "https://vgosti.by/files/galleries/2029/4733/src.jpg",
            "https://vgosti.by/files/galleries/2029/4734/src.jpg",
            "https://vgosti.by/files/galleries/2029/4735/src.jpg",
            "https://vgosti.by/files/galleries/2029/4736/src.jpg",
            "https://vgosti.by/files/galleries/2029/4737/src.jpg",
            "https://vgosti.by/files/galleries/2029/4738/src.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 50 см ",
            "about_item": "Декоративная елочка ручной работы "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Лавандовый лагурус",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/lavandovyj-lagurus.html",
        "cost_byn": "99.0",
        "photos": [
            "https://vgosti.by/files/items/886/icon.jpg",
            "https://vgosti.by/files/galleries/1332/2645/src.jpg",
            "https://vgosti.by/files/galleries/1332/2647/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Лагурус"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 20-25 см ",
            "about_item": "Интерьерная композиция из сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Мулен руж",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/mulen-ruzh.html",
        "cost_byn": "109.0",
        "photos": [
            "https://vgosti.by/files/items/1543/icon.jpg",
            "https://vgosti.by/files/galleries/2497/5998/src.jpg",
            "https://vgosti.by/files/galleries/2497/5999/src.jpg",
            "https://vgosti.by/files/galleries/2497/6000/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Шляпная коробка ",
            "size": "высота 24-29см ",
            "about_item": "Композиция из стабилизированной розы и сухоцветов "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Гортензия в ассортименте",
        "item_link": "https://vgosti.by/8-marta/gortenziya.html",
        "cost_byn": "35.0",
        "photos": [
            "https://vgosti.by/files/items/1041/icon.jpg",
            "https://vgosti.by/files/galleries/1608/3216/src.jpg",
            "https://vgosti.by/files/galleries/1608/3217/src.jpg",
            "https://vgosti.by/files/galleries/1608/3218/src.jpg",
            "https://vgosti.by/files/galleries/1608/3219/src.jpg",
            "https://vgosti.by/files/galleries/1608/3220/src.jpg",
            "https://vgosti.by/files/galleries/1608/3221/src.jpg",
            "https://vgosti.by/files/galleries/1608/3222/src.jpg",
            "https://vgosti.by/files/galleries/1608/3223/src.jpg",
            "https://vgosti.by/files/galleries/1609/5540/src.jpg",
            "https://vgosti.by/files/galleries/1609/5541/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия"
            ],
            "package": "Декорированное кашпо ",
            "size": "высота 20-25 см ",
            "about_item": "Горшечное растение "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Кремовый пудинг",
        "item_link": "https://vgosti.by/bukety-iz-suhocvetov/kremovyj-puding.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/1248/icon.jpg",
            "https://vgosti.by/files/galleries/1951/4544/src.jpg",
            "https://vgosti.by/files/galleries/1951/4545/src.jpg",
            "https://vgosti.by/files/galleries/1951/4546/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы"
            ],
            "package": "Умная корейская бумага ",
            "size": "высота 25-30 см ",
            "about_item": "Стойкость стояния букета боле 5 лет "
        },
        "category": "Букеты из сухоцветов"
    },
    {
        "item_name": "Нежная осень",
        "item_link": "https://vgosti.by/bukety/nezhnaya-osen.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/1931/icon.jpg",
            "https://vgosti.by/files/galleries/3208/7124/src.jpg",
            "https://vgosti.by/files/galleries/3208/7125/src.jpg",
            "https://vgosti.by/files/galleries/3208/7126/src.jpg",
            "https://vgosti.by/files/galleries/3208/7127/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Хамелациум",
                "Экзотика"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр до 30 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Композиция Снегопад",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/kompoziciya-snegopad.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1308/icon.jpg",
            "https://vgosti.by/files/galleries/2069/4833/src.jpg",
            "https://vgosti.by/files/galleries/2069/4834/src.jpg",
            "https://vgosti.by/files/galleries/2069/4835/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 25-29 см ",
            "about_item": "Композиция новогодняя со свечой "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Елка Зимушка",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/elka-zimushka.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/1311/icon.jpg",
            "https://vgosti.by/files/galleries/2071/4836/src.jpg",
            "https://vgosti.by/files/galleries/2071/4837/src.jpg",
            "https://vgosti.by/files/galleries/2071/4838/src.jpg",
            "https://vgosti.by/files/galleries/2071/4839/src.jpg",
            "https://vgosti.by/files/galleries/2071/4840/src.jpg",
            "https://vgosti.by/files/galleries/2071/4841/src.jpg",
            "https://vgosti.by/files/galleries/2071/4842/src.jpg",
            "https://vgosti.by/files/galleries/2071/4843/src.jpg",
            "https://vgosti.by/files/galleries/2071/4844/src.jpg",
            "https://vgosti.by/files/galleries/2071/4845/src.jpg",
            "https://vgosti.by/files/galleries/2071/4846/src.jpg",
            "https://vgosti.by/files/galleries/2071/4847/src.jpg",
            "https://vgosti.by/files/galleries/2071/4848/src.jpg",
            "https://vgosti.by/files/galleries/2071/4866/src.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "Коробка ",
            "size": "Высота 40 см диаметр основы 20-24 см ",
            "about_item": "Натуральная ароматная елочка из канадской ели на основе "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Черная пантера",
        "item_link": "https://vgosti.by/bukety/chernaya-pantera.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/1909/icon.jpg",
            "https://vgosti.by/files/galleries/3166/7064/src.jpg",
            "https://vgosti.by/files/galleries/3166/7065/src.jpg",
            "https://vgosti.by/files/galleries/3166/7066/src.jpg",
            "https://vgosti.by/files/galleries/3166/7067/src.jpg",
            "https://vgosti.by/files/galleries/3166/7071/src.jpg",
            "https://vgosti.by/files/galleries/3166/7072/src.jpg"
        ],
        "description": {
            "composition": [
                "Орхидея",
                "Хризантема",
                "Экзотика"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 35-40 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Елка Бирюза",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/elka-biryuza.html",
        "cost_byn": "89.0",
        "photos": [
            "https://vgosti.by/files/items/630/icon.jpg",
            "https://vgosti.by/files/galleries/880/5123/src.jpg",
            "https://vgosti.by/files/galleries/880/5124/src.jpg",
            "https://vgosti.by/files/galleries/880/5125/src.jpg",
            "https://vgosti.by/files/galleries/880/5126/src.jpg"
        ],
        "description": {
            "composition": [
                "Елка"
            ],
            "package": "Крафт-пакет ",
            "size": "высота 40 см ",
            "about_item": "Новогодняя заснеженная елка из натуральной пихты "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Анхель",
        "item_link": "https://vgosti.by/bukety/anhel.html",
        "cost_byn": "165.0",
        "photos": [
            "https://vgosti.by/files/items/1703/icon.jpg",
            "https://vgosti.by/files/galleries/2783/6551/src.jpg",
            "https://vgosti.by/files/galleries/2783/6552/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Гвоздика",
                "Диантус",
                "Роза пионовидная",
                "Роза садовая",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 33-37 см ",
            "about_item": "Букет имеет легкий цветочный аромат "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Сердечный букет",
        "item_link": "https://vgosti.by/dlya-vlyublyonnyh/serdechnyj-buket.html",
        "cost_byn": "149.0",
        "photos": [
            "https://vgosti.by/files/items/1351/icon.jpg",
            "https://vgosti.by/files/galleries/2149/5027/src.jpg",
            "https://vgosti.by/files/galleries/2149/5028/src.jpg",
            "https://vgosti.by/files/galleries/2149/5029/src.jpg",
            "https://vgosti.by/files/galleries/2149/5030/src.jpg",
            "https://vgosti.by/files/galleries/2149/5031/src.jpg",
            "https://vgosti.by/files/galleries/2149/5032/src.jpg",
            "https://vgosti.by/files/galleries/2149/5033/src.jpg",
            "https://vgosti.by/files/galleries/2149/5034/src.jpg",
            "https://vgosti.by/files/galleries/2149/5035/src.jpg",
            "https://vgosti.by/files/galleries/2149/5036/src.jpg",
            "https://vgosti.by/files/galleries/2149/5037/src.jpg",
            "https://vgosti.by/files/galleries/2149/5038/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Диантус",
                "Зелень",
                "Лагурус",
                "Ранункулюс",
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая",
                "Фрезия",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 45 см ",
            "about_item": "Букет в форме сердца из экзотических цветов "
        },
        "category": "Для Влюблённых"
    },
    {
        "item_name": "Гаваи",
        "item_link": "https://vgosti.by/bukety/gavai.html",
        "cost_byn": "159.0",
        "photos": [
            "https://vgosti.by/files/items/1268/icon.jpg",
            "https://vgosti.by/files/galleries/1991/4626/src.jpg",
            "https://vgosti.by/files/galleries/1991/4627/src.jpg",
            "https://vgosti.by/files/galleries/1991/4628/src.jpg",
            "https://vgosti.by/files/galleries/1991/4629/src.jpg",
            "https://vgosti.by/files/galleries/1991/4630/src.jpg",
            "https://vgosti.by/files/galleries/1991/4631/src.jpg",
            "https://vgosti.by/files/galleries/1991/4632/src.jpg"
        ],
        "description": {
            "composition": [
                "Протея",
                "Роза",
                "Экзотика"
            ],
            "package": "Умная корейская бумага ",
            "size": "высота 40-45 см ",
            "about_item": "Букет высокой стойкости с королевской протеей "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Букет розовой гортензии",
        "item_link": "https://vgosti.by/bukety/buket-rozovoj-gortenzii.html",
        "cost_byn": "45.0",
        "photos": [
            "https://vgosti.by/files/items/1878/icon.jpg",
            "https://vgosti.by/files/galleries/3110/6955/src.jpg",
            "https://vgosti.by/files/galleries/3110/6956/src.jpg",
            "https://vgosti.by/files/galleries/3110/6957/src.jpg",
            "https://vgosti.by/files/galleries/3110/6958/src.jpg",
            "https://vgosti.by/files/galleries/3110/6959/src.jpg",
            "https://vgosti.by/files/galleries/3110/6960/src.jpg",
            "https://vgosti.by/files/galleries/3110/6961/src.jpg",
            "https://vgosti.by/files/galleries/3110/6962/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 20 см ",
            "about_item": "Стильный букет в трендовой упаковке "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Розово-лавандовые тюльпаны",
        "item_link": "https://vgosti.by/bukety/rozovo-lavandovye-tyulpany.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/1718/icon.jpg",
            "https://vgosti.by/files/galleries/2813/6590/src.jpg",
            "https://vgosti.by/files/galleries/2813/6591/src.jpg",
            "https://vgosti.by/files/galleries/2813/6592/src.jpg",
            "https://vgosti.by/files/galleries/2813/6593/src.jpg"
        ],
        "description": {
            "composition": [
                "Лаванда",
                "Тюльпаны"
            ],
            "package": "Умная корейская бумага ",
            "size": "Диаметр 30-35 см ",
            "about_item": "В букете используется лаванда "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Клубничный крем",
        "item_link": "https://vgosti.by/bukety/klubnichnyj-krem.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/1612/icon.jpg",
            "https://vgosti.by/files/galleries/2613/6189/src.jpg",
            "https://vgosti.by/files/galleries/2613/6190/src.jpg",
            "https://vgosti.by/files/galleries/2613/6191/src.jpg",
            "https://vgosti.by/files/galleries/2613/6192/src.jpg"
        ],
        "description": {
            "composition": [
                "Маттиола",
                "Роза кустовая",
                "Роза пионовидная",
                "Скимия",
                "Эустома"
            ],
            "package": "Брендовая упаковка Louis Vuitton ",
            "size": "Диаметр 35-39 см ",
            "about_item": "Цветочный насыщенный цветочный букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Новогодний винтаж",
        "item_link": "https://vgosti.by/bukety/novogodnij-vintazh.html",
        "cost_byn": "65.0",
        "photos": [
            "https://vgosti.by/files/items/1290/icon.jpg",
            "https://vgosti.by/files/galleries/2033/4753/src.jpg",
            "https://vgosti.by/files/galleries/2033/4754/src.jpg",
            "https://vgosti.by/files/galleries/2033/4755/src.jpg",
            "https://vgosti.by/files/galleries/2033/4756/src.jpg",
            "https://vgosti.by/files/galleries/2033/4757/src.jpg",
            "https://vgosti.by/files/galleries/2033/4758/src.jpg",
            "https://vgosti.by/files/galleries/2033/4759/src.jpg",
            "https://vgosti.by/files/galleries/2033/4760/src.jpg",
            "https://vgosti.by/files/galleries/2033/4761/src.jpg",
            "https://vgosti.by/files/galleries/2033/4762/src.jpg",
            "https://vgosti.by/files/galleries/2033/4763/src.jpg",
            "https://vgosti.by/files/galleries/2033/4764/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Букет из новогодних пряностей, сухоцветов и елочного винтажного шара "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Цветочный аромат",
        "item_link": "https://vgosti.by/bukety/cvetochnyj-aromat.html",
        "cost_byn": "152.0",
        "photos": [
            "https://vgosti.by/files/items/1415/icon.jpg",
            "https://vgosti.by/files/galleries/2273/5436/src.jpg",
            "https://vgosti.by/files/galleries/2273/5437/src.jpg",
            "https://vgosti.by/files/galleries/2273/5438/src.jpg",
            "https://vgosti.by/files/galleries/2273/5439/src.jpg",
            "https://vgosti.by/files/galleries/2273/5440/src.jpg",
            "https://vgosti.by/files/galleries/2273/5441/src.jpg",
            "https://vgosti.by/files/galleries/2273/5442/src.jpg",
            "https://vgosti.by/files/galleries/2273/5443/src.jpg",
            "https://vgosti.by/files/galleries/2273/5444/src.jpg",
            "https://vgosti.by/files/galleries/2273/5445/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "Корейская бумага ",
            "size": "диаметр 20 см ",
            "about_item": "Ароматный букет хорошей стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Розовый рассвет",
        "item_link": "https://vgosti.by/bukety/rozovyj-rassvet.html",
        "cost_byn": "590.0",
        "photos": [
            "https://vgosti.by/files/items/1472/icon.jpg",
            "https://vgosti.by/files/galleries/2381/5731/src.jpg",
            "https://vgosti.by/files/galleries/2381/5732/src.jpg",
            "https://vgosti.by/files/galleries/2381/5733/src.jpg",
            "https://vgosti.by/files/galleries/2381/5734/src.jpg",
            "https://vgosti.by/files/galleries/2381/5735/src.jpg",
            "https://vgosti.by/files/galleries/2381/5736/src.jpg",
            "https://vgosti.by/files/galleries/2381/5737/src.jpg",
            "https://vgosti.by/files/galleries/2381/5738/src.jpg",
            "https://vgosti.by/files/galleries/2381/5739/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Гвоздика",
                "Диантус",
                "Орхидея",
                "Оксипеталум",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая",
                "Сирень",
                "Экзотика",
                "Эустома"
            ],
            "package": "Ленты ",
            "size": "диаметр 55 см ",
            "about_item": "Большой букет насыщенный цветами в европейском стиле "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Дельфин",
        "item_link": "https://vgosti.by/bukety/delfin.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/1524/icon.jpg",
            "https://vgosti.by/files/galleries/2459/5879/src.jpg",
            "https://vgosti.by/files/galleries/2459/5880/src.jpg",
            "https://vgosti.by/files/galleries/2459/5881/src.jpg",
            "https://vgosti.by/files/galleries/2459/5882/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Гиацинт",
                "Диантус",
                "Эустома"
            ],
            "package": "Корейская умная бумага ",
            "size": "высота 40 -45 см ",
            "about_item": "Букет высокой стойкости "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Сочная малина",
        "item_link": "https://vgosti.by/bukety/sochnaya-malina.html",
        "cost_byn": "72.0",
        "photos": [
            "https://vgosti.by/files/items/1471/icon.jpg",
            "https://vgosti.by/files/galleries/2379/5727/src.jpg",
            "https://vgosti.by/files/galleries/2379/5728/src.jpg",
            "https://vgosti.by/files/galleries/2379/5729/src.jpg",
            "https://vgosti.by/files/galleries/2379/5730/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая"
            ],
            "package": "Бумага с декоративным рисунком ",
            "size": "диаметр 25 см ",
            "about_item": "Букет из пионовидной розы "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Розовые грезы",
        "item_link": "https://vgosti.by/bukety/rozovye-grezy.html",
        "cost_byn": "125.0",
        "photos": [
            "https://vgosti.by/files/items/1400/icon.jpg",
            "https://vgosti.by/files/galleries/2243/5348/src.jpg",
            "https://vgosti.by/files/galleries/2243/5349/src.jpg",
            "https://vgosti.by/files/galleries/2243/5350/src.jpg",
            "https://vgosti.by/files/galleries/2243/5351/src.jpg",
            "https://vgosti.by/files/galleries/2243/5352/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Гентиана",
                "Гербера",
                "Диантус",
                "Зелень",
                "Роза",
                "Роза пионовидная",
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 40 см ",
            "about_item": "Букет с весенними цветами "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Венеция",
        "item_link": "https://vgosti.by/bukety/veneciya.html",
        "cost_byn": "169.0",
        "photos": [
            "https://vgosti.by/files/items/253/icon.jpg",
            "https://vgosti.by/files/galleries/178/1203/src.jpg",
            "https://vgosti.by/files/galleries/178/1204/src.jpg",
            "https://vgosti.by/files/galleries/178/1205/src.jpg",
            "https://vgosti.by/files/galleries/178/3478/src.jpg",
            "https://vgosti.by/files/galleries/178/3479/src.jpg",
            "https://vgosti.by/files/galleries/178/3480/src.jpg",
            "https://vgosti.by/files/galleries/178/3481/src.jpg",
            "https://vgosti.by/files/galleries/178/3482/src.jpg",
            "https://vgosti.by/files/galleries/178/3483/src.jpg",
            "https://vgosti.by/files/galleries/178/3484/src.jpg",
            "https://vgosti.by/files/galleries/178/3485/src.jpg",
            "https://vgosti.by/files/galleries/178/3486/src.jpg"
        ],
        "description": {
            "composition": [
                "Астильба",
                "Гортензия",
                "Гвоздика",
                "Ранункулюс",
                "Роза кустовая",
                "Роза пионовидная",
                "Сирень",
                "Хамелациум"
            ],
            "package": "Ленты ",
            "size": "50-55 см ",
            "about_item": "Роскошный букет в стиле европейской флористики "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Троодос",
        "item_link": "https://vgosti.by/bukety/troodos.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/1166/icon.jpg",
            "https://vgosti.by/files/galleries/1803/4087/src.jpg",
            "https://vgosti.by/files/galleries/1803/4088/src.jpg",
            "https://vgosti.by/files/galleries/1803/4089/src.jpg",
            "https://vgosti.by/files/galleries/1803/4090/src.jpg",
            "https://vgosti.by/files/galleries/1803/4091/src.jpg",
            "https://vgosti.by/files/galleries/1803/4092/src.jpg",
            "https://vgosti.by/files/galleries/1803/4093/src.jpg",
            "https://vgosti.by/files/galleries/1803/4094/src.jpg",
            "https://vgosti.by/files/galleries/1803/4095/src.jpg",
            "https://vgosti.by/files/galleries/1803/4096/src.jpg",
            "https://vgosti.by/files/galleries/1803/4097/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Бамбук",
                "Роза",
                "Роза садовая",
                "Хризантема",
                "Цинерария",
                "Эвкалипт",
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "высота более 40-45 см ",
            "about_item": "Экзотический состав букета "
        },
        "category": "Букеты"
    },
    {
        "item_name": "В ожидании сказки",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/v-ozhidanii-skazki.html",
        "cost_byn": "135.0",
        "photos": [
            "https://vgosti.by/files/items/1285/icon.jpg",
            "https://vgosti.by/files/galleries/2023/4704/src.jpg",
            "https://vgosti.by/files/galleries/2023/4705/src.jpg",
            "https://vgosti.by/files/galleries/2023/4706/src.jpg",
            "https://vgosti.by/files/galleries/2023/4707/src.jpg",
            "https://vgosti.by/files/galleries/2023/4708/src.jpg",
            "https://vgosti.by/files/galleries/2023/4709/src.jpg",
            "https://vgosti.by/files/galleries/2023/4710/src.jpg",
            "https://vgosti.by/files/galleries/2023/4711/src.jpg",
            "https://vgosti.by/files/galleries/2023/4712/src.jpg",
            "https://vgosti.by/files/galleries/2023/4713/src.jpg",
            "https://vgosti.by/files/galleries/2023/4714/src.jpg",
            "https://vgosti.by/files/galleries/2023/4715/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Коробка ",
            "size": "ширина 70 см ",
            "about_item": "Зимняя интерьерная композиция со свечами "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Летний сад",
        "item_link": "https://vgosti.by/korziny-s-cvetami/letnij-sad.html",
        "cost_byn": "129.0",
        "photos": [
            "https://vgosti.by/files/items/1527/icon.jpg",
            "https://vgosti.by/files/galleries/2465/5895/src.jpg",
            "https://vgosti.by/files/galleries/2465/5896/src.jpg",
            "https://vgosti.by/files/galleries/2465/5897/src.jpg",
            "https://vgosti.by/files/galleries/2465/5898/src.jpg",
            "https://vgosti.by/files/galleries/2465/5899/src.jpg",
            "https://vgosti.by/files/galleries/2465/5900/src.jpg",
            "https://vgosti.by/files/galleries/2465/5901/src.jpg",
            "https://vgosti.by/files/galleries/2465/5902/src.jpg",
            "https://vgosti.by/files/galleries/2465/5903/src.jpg",
            "https://vgosti.by/files/galleries/2465/5904/src.jpg",
            "https://vgosti.by/files/galleries/2465/5905/src.jpg",
            "https://vgosti.by/files/galleries/2465/5906/src.jpg",
            "https://vgosti.by/files/galleries/2465/5907/src.jpg",
            "https://vgosti.by/files/galleries/2465/5909/src.jpg",
            "https://vgosti.by/files/galleries/2465/5910/src.jpg",
            "https://vgosti.by/files/galleries/2465/5911/src.jpg",
            "https://vgosti.by/files/galleries/2465/5912/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Плетеная корзина из натурального материала ",
            "size": "ширина 80-90 см ",
            "about_item": "Композиция из горшечных растениях "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Нежное облако",
        "item_link": "https://vgosti.by/bukety/nezhnoe-oblako.html",
        "cost_byn": "115.0",
        "photos": [
            "https://vgosti.by/files/items/1534/icon.jpg",
            "https://vgosti.by/files/galleries/2479/5942/src.jpg",
            "https://vgosti.by/files/galleries/2479/5943/src.jpg",
            "https://vgosti.by/files/galleries/2479/5944/src.jpg",
            "https://vgosti.by/files/galleries/2479/5945/src.jpg",
            "https://vgosti.by/files/galleries/2479/5946/src.jpg",
            "https://vgosti.by/files/galleries/2479/5947/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Хризантема",
                "Экзотика",
                "Эустома"
            ],
            "package": "Умная корейская бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Нежный букет под любой повод "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Каравелла",
        "item_link": "https://vgosti.by/bukety/karavella.html",
        "cost_byn": "195.0",
        "photos": [
            "https://vgosti.by/files/items/1181/icon.jpg",
            "https://vgosti.by/files/galleries/1833/4180/src.jpg",
            "https://vgosti.by/files/galleries/1833/4181/src.jpg",
            "https://vgosti.by/files/galleries/1833/4182/src.jpg",
            "https://vgosti.by/files/galleries/1833/4183/src.jpg",
            "https://vgosti.by/files/galleries/1833/4184/src.jpg",
            "https://vgosti.by/files/galleries/1833/4185/src.jpg",
            "https://vgosti.by/files/galleries/1833/4186/src.jpg",
            "https://vgosti.by/files/galleries/1833/4187/src.jpg",
            "https://vgosti.by/files/galleries/1833/4188/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Зелень",
                "Роза",
                "Роза кустовая",
                "Роза пионовидная",
                "Экзотика",
                "Эрингиум",
                "Эустома"
            ],
            "package": "летны ",
            "size": "Диаметр 40-45 см ",
            "about_item": "Большой букет в европейском стиле "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Бугатти",
        "item_link": "https://vgosti.by/bukety/bugatti.html",
        "cost_byn": "195.0",
        "photos": [
            "https://vgosti.by/files/items/810/icon.jpg",
            "https://vgosti.by/files/galleries/1194/2272/src.jpg",
            "https://vgosti.by/files/galleries/1194/2273/src.jpg",
            "https://vgosti.by/files/galleries/1194/2274/src.jpg",
            "https://vgosti.by/files/galleries/1194/2275/src.jpg",
            "https://vgosti.by/files/galleries/1194/2276/src.jpg",
            "https://vgosti.by/files/galleries/1194/2277/src.jpg",
            "https://vgosti.by/files/galleries/1194/2278/src.jpg",
            "https://vgosti.by/files/galleries/1194/2279/src.jpg",
            "https://vgosti.by/files/galleries/1194/2280/src.jpg",
            "https://vgosti.by/files/galleries/1194/2281/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Астранция",
                "Гвоздика",
                "Диантус",
                "Зелень",
                "Куркума",
                "Пион",
                "Пистация",
                "Питоспорум",
                "Роза",
                "Роза кустовая",
                "Трахелиум",
                "Тюльпаны",
                "Фрезия",
                "Экзотика"
            ],
            "package": "Атласные ленты ",
            "size": "30-35 см ",
            "about_item": "Стильный букет в европейском стиле "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Нежный румянец",
        "item_link": "https://vgosti.by/bukety/nezhnyj-rumyanec.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1470/icon.jpg",
            "https://vgosti.by/files/galleries/2377/5725/src.jpg",
            "https://vgosti.by/files/galleries/2377/5726/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая",
                "Хамелациум",
                "Эвкалипт"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 30 см ",
            "about_item": "Парфюмированный букет из садовой пионовидной розы "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Меланья",
        "item_link": "https://vgosti.by/bukety/melanya.html",
        "cost_byn": "139.0",
        "photos": [
            "https://vgosti.by/files/items/740/icon.jpg",
            "https://vgosti.by/files/galleries/1074/1993/src.jpg",
            "https://vgosti.by/files/galleries/1074/1994/src.jpg",
            "https://vgosti.by/files/galleries/1074/1995/src.jpg",
            "https://vgosti.by/files/galleries/1074/1996/src.jpg",
            "https://vgosti.by/files/galleries/1074/1997/src.jpg",
            "https://vgosti.by/files/galleries/1074/1998/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Ранункулюс",
                "Роза кустовая",
                "Тюльпаны",
                "Эустома"
            ],
            "package": "Французский крафт ",
            "size": "35-40 см ",
            "about_item": "Яркий букет для ярких событий "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Кварц",
        "item_link": "https://vgosti.by/bukety/kvarc.html",
        "cost_byn": "139.0",
        "photos": [
            "https://vgosti.by/files/items/868/icon.jpg",
            "https://vgosti.by/files/galleries/1304/2575/src.jpg",
            "https://vgosti.by/files/galleries/1304/2576/src.jpg",
            "https://vgosti.by/files/galleries/1304/2578/src.jpg",
            "https://vgosti.by/files/galleries/1304/2579/src.jpg",
            "https://vgosti.by/files/galleries/1304/2580/src.jpg",
            "https://vgosti.by/files/galleries/1304/2581/src.jpg",
            "https://vgosti.by/files/galleries/1304/2582/src.jpg",
            "https://vgosti.by/files/galleries/1304/2583/src.jpg"
        ],
        "description": {
            "composition": [
                "Астильба",
                "Диантус",
                "Дуб",
                "Питоспорум",
                "Протея",
                "Роза кустовая",
                "Хамелациум"
            ],
            "package": "Ленты ",
            "size": "Диаметр 30-35 см ",
            "about_item": "Букет насыщен экзотическими цветами "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Прада",
        "item_link": "https://vgosti.by/bukety/prada.html",
        "cost_byn": "755.0",
        "photos": [
            "https://vgosti.by/files/items/1000/icon.jpg",
            "https://vgosti.by/files/galleries/1538/3112/src.jpg",
            "https://vgosti.by/files/galleries/1538/3113/src.jpg",
            "https://vgosti.by/files/galleries/1538/3114/src.jpg",
            "https://vgosti.by/files/galleries/1538/3115/src.jpg",
            "https://vgosti.by/files/galleries/1538/3116/src.jpg",
            "https://vgosti.by/files/galleries/1538/3117/src.jpg",
            "https://vgosti.by/files/galleries/1538/3118/src.jpg",
            "https://vgosti.by/files/galleries/1538/3119/src.jpg"
        ],
        "description": {
            "composition": [
                "Ранункулюс",
                "Роза пионовидная",
                "Роза садовая",
                "Тюльпаны",
                "Эустома"
            ],
            "package": "ленты ",
            "size": "более 40 ",
            "about_item": "Букет из весенних ароматом насыщенный легким ароматом парфюмированной розы "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Айвори свадебные букеты",
        "item_link": "https://vgosti.by/svadebnye-bukety/ajvori-svadebnye-bukety.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/1123/icon.jpg",
            "https://vgosti.by/files/galleries/1738/3958/src.jpg",
            "https://vgosti.by/files/galleries/1738/3959/src.jpg",
            "https://vgosti.by/files/galleries/1738/3960/src.jpg",
            "https://vgosti.by/files/galleries/1738/3961/src.jpg",
            "https://vgosti.by/files/galleries/1738/3962/src.jpg",
            "https://vgosti.by/files/galleries/1738/3963/src.jpg",
            "https://vgosti.by/files/galleries/1738/3964/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Канадская пихта",
                "Амариллис",
                "Ананас",
                "Анемон",
                "Асклепия",
                "Аспарагус",
                "Аспидистра",
                "Астильба",
                "Астра",
                "Астранция",
                "Бамбук",
                "Банксия",
                "Берграс",
                "Бувардия",
                "Бруния",
                "Василёк",
                "Вероника",
                "Гортензия",
                "Гвоздика",
                "Гентиана",
                "Гербера",
                "Георгина",
                "Гиацинт",
                "Гипсофил",
                "Дельфиниум",
                "Диантус",
                "Дуб",
                "Ель",
                "Зелень",
                "Илекс",
                "Ирис",
                "Каллы",
                "Куркума",
                "Клематис",
                "Корилус",
                "Кампанула",
                "Котинус",
                "Краспедия",
                "Кактус",
                "Лаванда",
                "Лагурус",
                "Леукаспермум",
                "Лилия",
                "Лимон",
                "Лотос",
                "Мак",
                "Маттиола",
                "Мимоза",
                "Мускари",
                "Нарцисс",
                "Нигелла",
                "Нарине",
                "Орхидея",
                "Орнитогалум",
                "Озотамнус",
                "Оксипеталум",
                "Пион",
                "Пистация",
                "Питоспорум",
                "Подсолнух",
                "Протея",
                "Ранункулюс",
                "Роза",
                "Роза кустовая",
                "Роза французская",
                "Роза пионовидная",
                "Роза садовая",
                "Ромашки",
                "Рускус",
                "Сирень",
                "Скимия",
                "Статица"
            ],
            "package": "Ваза под букет в подарок ",
            "size": "Индивидуальные ",
            "about_item": "Примеры цвета айвори. Стоимость каждого букета просчитывается индивидуально "
        },
        "category": "Свадебные букеты"
    },
    {
        "item_name": "Анемоновое поле",
        "item_link": "https://vgosti.by/bukety/anemonovoe-pole.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/937/icon.jpg",
            "https://vgosti.by/files/galleries/1430/2873/src.jpg",
            "https://vgosti.by/files/galleries/1430/2874/src.jpg",
            "https://vgosti.by/files/galleries/1430/2875/src.jpg",
            "https://vgosti.by/files/galleries/1430/2876/src.jpg",
            "https://vgosti.by/files/galleries/1430/2877/src.jpg",
            "https://vgosti.by/files/galleries/1430/2878/src.jpg",
            "https://vgosti.by/files/galleries/1430/2879/src.jpg",
            "https://vgosti.by/files/galleries/1430/2880/src.jpg",
            "https://vgosti.by/files/galleries/1430/2881/src.jpg",
            "https://vgosti.by/files/galleries/1430/2882/src.jpg",
            "https://vgosti.by/files/galleries/1430/2883/src.jpg",
            "https://vgosti.by/files/galleries/1430/2884/src.jpg"
        ],
        "description": {
            "composition": [
                "Сухоцветы",
                "Анемон",
                "Лаванда",
                "Лагурус",
                "Озотамнус",
                "Скимия",
                "Хиперикум",
                "Хлопок",
                "Эвкалипт",
                "Эустома"
            ],
            "package": "Корейская бумага ",
            "size": "Диаметр 45 см ",
            "about_item": "Представительный букет из стойких цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Яркие свадебные букеты",
        "item_link": "https://vgosti.by/svadebnye-bukety/yarkie-svadebnye-bukety.html",
        "cost_byn": "150.0",
        "photos": [
            "https://vgosti.by/files/items/429/icon.jpg",
            "https://vgosti.by/files/galleries/505/3811/src.jpg",
            "https://vgosti.by/files/galleries/505/3812/src.jpg",
            "https://vgosti.by/files/galleries/505/3813/src.jpg",
            "https://vgosti.by/files/galleries/505/3814/src.jpg",
            "https://vgosti.by/files/galleries/505/3815/src.jpg",
            "https://vgosti.by/files/galleries/505/3816/src.jpg",
            "https://vgosti.by/files/galleries/505/3817/src.jpg",
            "https://vgosti.by/files/galleries/505/3818/src.jpg",
            "https://vgosti.by/files/galleries/505/3819/src.jpg",
            "https://vgosti.by/files/galleries/505/3820/src.jpg",
            "https://vgosti.by/files/galleries/505/3821/src.jpg",
            "https://vgosti.by/files/galleries/505/3822/src.jpg",
            "https://vgosti.by/files/galleries/505/3823/src.jpg",
            "https://vgosti.by/files/galleries/505/3824/src.jpg",
            "https://vgosti.by/files/galleries/505/3825/src.jpg",
            "https://vgosti.by/files/galleries/505/3826/src.jpg",
            "https://vgosti.by/files/galleries/505/3827/src.jpg",
            "https://vgosti.by/files/galleries/505/3828/src.jpg",
            "https://vgosti.by/files/galleries/505/3829/src.jpg",
            "https://vgosti.by/files/galleries/505/3830/src.jpg",
            "https://vgosti.by/files/galleries/505/3831/src.jpg",
            "https://vgosti.by/files/galleries/505/3832/src.jpg",
            "https://vgosti.by/files/galleries/505/3833/src.jpg",
            "https://vgosti.by/files/galleries/505/3835/src.jpg",
            "https://vgosti.by/files/galleries/505/3836/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Канадская пихта",
                "Амариллис",
                "Ананас",
                "Анемон",
                "Асклепия",
                "Аспарагус",
                "Аспидистра",
                "Астильба",
                "Астра",
                "Астранция",
                "Бамбук",
                "Банксия",
                "Берграс",
                "Бувардия",
                "Бруния",
                "Василёк",
                "Вероника",
                "Гортензия",
                "Гвоздика",
                "Гентиана",
                "Гербера",
                "Георгина",
                "Гиацинт",
                "Гипсофил",
                "Дельфиниум",
                "Диантус",
                "Дуб",
                "Ель",
                "Зелень",
                "Илекс",
                "Ирис",
                "Каллы",
                "Куркума",
                "Клематис",
                "Корилус",
                "Кампанула",
                "Котинус",
                "Краспедия",
                "Кактус",
                "Лаванда",
                "Лагурус",
                "Леукаспермум",
                "Лилия",
                "Лимон",
                "Лотос",
                "Мак",
                "Маттиола",
                "Мимоза",
                "Мускари",
                "Нарцисс",
                "Нигелла",
                "Нарине",
                "Орхидея",
                "Орнитогалум",
                "Озотамнус",
                "Оксипеталум",
                "Пион",
                "Пистация",
                "Питоспорум",
                "Подсолнух",
                "Протея",
                "Ранункулюс",
                "Роза",
                "Роза кустовая",
                "Роза французская",
                "Роза пионовидная",
                "Роза садовая",
                "Ромашки",
                "Рускус",
                "Сирень",
                "Скимия",
                "Статица"
            ],
            "package": "Ваза под букет в подарок ",
            "size": "Индивидуальные ",
            "about_item": "Примеры в ярких оттенках. Стоимость каждого букета просчитывается индивидуально "
        },
        "category": "Свадебные букеты"
    },
    {
        "item_name": "Эксплорер",
        "item_link": "https://vgosti.by/bukety/eksplorer.html",
        "cost_byn": "225.0",
        "photos": [
            "https://vgosti.by/files/items/1085/icon.jpg",
            "https://vgosti.by/files/galleries/1688/3650/src.jpg",
            "https://vgosti.by/files/galleries/1688/3651/src.jpg",
            "https://vgosti.by/files/galleries/1688/3652/src.jpg",
            "https://vgosti.by/files/galleries/1688/3653/src.jpg",
            "https://vgosti.by/files/galleries/1688/3654/src.jpg",
            "https://vgosti.by/files/galleries/1688/3655/src.jpg",
            "https://vgosti.by/files/galleries/1688/3656/src.jpg",
            "https://vgosti.by/files/galleries/1688/3657/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза",
                "Экзотика"
            ],
            "package": "Корейская умная бумага ",
            "size": "Диаметр 40-45 см ",
            "about_item": "Универсальный букет для любого повода "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Белоснежка",
        "item_link": "https://vgosti.by/bukety/belosnezhka.html",
        "cost_byn": "95.0",
        "photos": [
            "https://vgosti.by/files/items/139/icon.jpg",
            "https://vgosti.by/files/galleries/31/922/src.jpg",
            "https://vgosti.by/files/galleries/31/923/src.jpg",
            "https://vgosti.by/files/galleries/31/924/src.jpg",
            "https://vgosti.by/files/galleries/31/925/src.jpg",
            "https://vgosti.by/files/galleries/31/926/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Питоспорум",
                "Эустома"
            ],
            "package": "Французский крафт ",
            "size": "от 35-45 см ",
            "about_item": "Белоснежный букет подчеркнет искренность ваших чувств "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Щербет",
        "item_link": "https://vgosti.by/8-marta/csherbet.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/1816/icon.jpg",
            "https://vgosti.by/files/galleries/2990/6831/src.jpg",
            "https://vgosti.by/files/galleries/2990/6832/src.jpg",
            "https://vgosti.by/files/galleries/2990/6833/src.jpg",
            "https://vgosti.by/files/galleries/2990/6834/src.jpg",
            "https://vgosti.by/files/galleries/2990/6835/src.jpg",
            "https://vgosti.by/files/galleries/2990/6836/src.jpg",
            "https://vgosti.by/files/galleries/2990/6837/src.jpg"
        ],
        "description": {
            "composition": [
                "Скимия",
                "Тюльпаны"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 25-30 см ",
            "about_item": "Весенний букет из голландских тюльпанов "
        },
        "category": "8 Марта"
    },
    {
        "item_name": "Ренессанс",
        "item_link": "https://vgosti.by/bukety/renessans.html",
        "cost_byn": "255.0",
        "photos": [
            "https://vgosti.by/files/items/850/icon.jpg",
            "https://vgosti.by/files/galleries/1268/2488/src.jpg",
            "https://vgosti.by/files/galleries/1268/2489/src.jpg",
            "https://vgosti.by/files/galleries/1268/2490/src.jpg",
            "https://vgosti.by/files/galleries/1268/2491/src.jpg",
            "https://vgosti.by/files/galleries/1268/2492/src.jpg",
            "https://vgosti.by/files/galleries/1268/2493/src.jpg",
            "https://vgosti.by/files/galleries/1268/2494/src.jpg",
            "https://vgosti.by/files/galleries/1268/2495/src.jpg",
            "https://vgosti.by/files/galleries/1268/2496/src.jpg",
            "https://vgosti.by/files/galleries/1268/2497/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Куркума",
                "Маттиола",
                "Озотамнус",
                "Пион",
                "Пистация",
                "Питоспорум",
                "Роза кустовая",
                "Роза пионовидная",
                "Роза садовая"
            ],
            "package": "Французский крафт с корейской бумаглй ",
            "size": "Диаметр 40-45 см ",
            "about_item": "Букет насыщен экзотическими цветами "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Солнечные цветы",
        "item_link": "https://vgosti.by/bukety/solnechnye-cvety.html",
        "cost_byn": "69.0",
        "photos": [
            "https://vgosti.by/files/items/1070/icon.jpg",
            "https://vgosti.by/files/galleries/1658/3421/src.jpg",
            "https://vgosti.by/files/galleries/1658/3422/src.jpg",
            "https://vgosti.by/files/galleries/1658/3423/src.jpg",
            "https://vgosti.by/files/galleries/1658/3424/src.jpg",
            "https://vgosti.by/files/galleries/1658/3425/src.jpg",
            "https://vgosti.by/files/galleries/1658/3426/src.jpg",
            "https://vgosti.by/files/galleries/1658/3427/src.jpg",
            "https://vgosti.by/files/galleries/1658/3428/src.jpg"
        ],
        "description": {
            "composition": [
                "Гвоздика",
                "Пистация",
                "Питоспорум",
                "Подсолнух",
                "Ромашки"
            ],
            "package": "Корейская бумага ",
            "size": "диаметр 35 см ",
            "about_item": "Яркий летний букет из подсолнуха и ромашек "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Сильвер Лейс",
        "item_link": "https://vgosti.by/bukety/silver-lejs.html",
        "cost_byn": "145.0",
        "photos": [
            "https://vgosti.by/files/items/847/icon.jpg",
            "https://vgosti.by/files/galleries/1262/2473/src.jpg",
            "https://vgosti.by/files/galleries/1262/2474/src.jpg",
            "https://vgosti.by/files/galleries/1262/2475/src.jpg",
            "https://vgosti.by/files/galleries/1262/2476/src.jpg",
            "https://vgosti.by/files/galleries/1262/2477/src.jpg",
            "https://vgosti.by/files/galleries/1262/2478/src.jpg",
            "https://vgosti.by/files/galleries/1262/2479/src.jpg"
        ],
        "description": {
            "composition": [
                "Гортензия",
                "Диантус",
                "Каллы",
                "Маттиола",
                "Пистация",
                "Роза кустовая",
                "Роза пионовидная",
                "Суккуленты"
            ],
            "package": "Французский крафт с корейской бумаглй ",
            "size": "Диаметр 40-45 см ",
            "about_item": "Букет в нежных оттенках розового "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Атлантида",
        "item_link": "https://vgosti.by/bukety/atlantida.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/1413/icon.jpg",
            "https://vgosti.by/files/galleries/2269/5421/src.jpg",
            "https://vgosti.by/files/galleries/2269/5422/src.jpg",
            "https://vgosti.by/files/galleries/2269/5423/src.jpg",
            "https://vgosti.by/files/galleries/2269/5424/src.jpg",
            "https://vgosti.by/files/galleries/2269/5425/src.jpg",
            "https://vgosti.by/files/galleries/2269/5426/src.jpg",
            "https://vgosti.by/files/galleries/2269/5427/src.jpg",
            "https://vgosti.by/files/galleries/2269/5428/src.jpg",
            "https://vgosti.by/files/galleries/2269/5429/src.jpg"
        ],
        "description": {
            "composition": [
                "Гиацинт"
            ],
            "package": "Корейская умная бумага ",
            "size": "диаметр 20-25 см ",
            "about_item": "Ароматный весенний букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Радость",
        "item_link": "https://vgosti.by/bukety/radost.html",
        "cost_byn": "189.0",
        "photos": [
            "https://vgosti.by/files/items/358/icon.jpg",
            "https://vgosti.by/files/galleries/389/3570/src.jpg",
            "https://vgosti.by/files/galleries/389/3571/src.jpg",
            "https://vgosti.by/files/galleries/389/3572/src.jpg",
            "https://vgosti.by/files/galleries/389/3573/src.jpg",
            "https://vgosti.by/files/galleries/389/3574/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Аспидистра",
                "Илекс",
                "Пистация",
                "Ранункулюс",
                "Роза кустовая",
                "Фрезия",
                "Хризантема",
                "Эвкалипт"
            ],
            "package": "Корейская умная бумага ",
            "size": "от 40 до 50 см ",
            "about_item": "Большой роскошный букет из экзотических цветов "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Афелия",
        "item_link": "https://vgosti.by/bukety/afeliya.html",
        "cost_byn": "169.0",
        "photos": [
            "https://vgosti.by/files/items/135/icon.jpg",
            "https://vgosti.by/files/galleries/23/3314/src.jpg",
            "https://vgosti.by/files/galleries/23/3315/src.jpg",
            "https://vgosti.by/files/galleries/23/3316/src.jpg",
            "https://vgosti.by/files/galleries/23/3317/src.jpg",
            "https://vgosti.by/files/galleries/23/3318/src.jpg",
            "https://vgosti.by/files/galleries/23/3319/src.jpg",
            "https://vgosti.by/files/galleries/23/3320/src.jpg",
            "https://vgosti.by/files/galleries/23/3321/src.jpg",
            "https://vgosti.by/files/galleries/23/3322/src.jpg"
        ],
        "description": {
            "composition": [
                "Астильба",
                "Дельфиниум",
                "Диантус",
                "Ранункулюс",
                "Роза кустовая",
                "Эвкалипт"
            ],
            "package": "Французский кружевной крафт ",
            "size": "от 35-45см ",
            "about_item": "Мягкий кружевной букет для волшебного настроения "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Маннавард",
        "item_link": "https://vgosti.by/bukety/mannavard.html",
        "cost_byn": "90.0",
        "photos": [
            "https://vgosti.by/files/items/341/icon.jpg",
            "https://vgosti.by/files/galleries/355/1440/src.jpg",
            "https://vgosti.by/files/galleries/355/1441/src.jpg",
            "https://vgosti.by/files/galleries/355/1442/src.jpg",
            "https://vgosti.by/files/galleries/355/1443/src.jpg",
            "https://vgosti.by/files/galleries/355/1444/src.jpg"
        ],
        "description": {
            "composition": [
                "Мужской состав",
                "Альстромерия",
                "Бруния",
                "Корилус",
                "Кактус",
                "Скимия",
                "Трахелиум",
                "Эвкалипт",
                "Эрингиум"
            ],
            "package": "Натуральный крафт ",
            "size": "от 35-45 см ",
            "about_item": "Мужской букет "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Синие свадебные букеты",
        "item_link": "https://vgosti.by/svadebnye-bukety/sinie-svadebnye-bukety.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/449/icon.jpg",
            "https://vgosti.by/files/galleries/545/3785/src.jpg",
            "https://vgosti.by/files/galleries/545/3786/src.jpg",
            "https://vgosti.by/files/galleries/545/3787/src.jpg",
            "https://vgosti.by/files/galleries/545/3788/src.jpg",
            "https://vgosti.by/files/galleries/545/3789/src.jpg",
            "https://vgosti.by/files/galleries/545/3790/src.jpg",
            "https://vgosti.by/files/galleries/545/3791/src.jpg",
            "https://vgosti.by/files/galleries/545/3792/src.jpg",
            "https://vgosti.by/files/galleries/545/3793/src.jpg",
            "https://vgosti.by/files/galleries/545/3794/src.jpg",
            "https://vgosti.by/files/galleries/545/3795/src.jpg",
            "https://vgosti.by/files/galleries/545/3799/src.jpg",
            "https://vgosti.by/files/galleries/545/3800/src.jpg",
            "https://vgosti.by/files/galleries/545/3801/src.jpg",
            "https://vgosti.by/files/galleries/545/3834/src.jpg",
            "https://vgosti.by/files/galleries/545/3914/src.jpg",
            "https://vgosti.by/files/galleries/545/3915/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Асклепия",
                "Аспарагус",
                "Аспидистра",
                "Астильба",
                "Астра",
                "Астранция",
                "Бамбук",
                "Банксия",
                "Берграс",
                "Бувардия",
                "Бруния",
                "Василёк",
                "Вероника",
                "Гортензия",
                "Гвоздика",
                "Гентиана",
                "Гербера",
                "Георгина",
                "Гиацинт",
                "Гипсофил",
                "Дельфиниум",
                "Диантус",
                "Дуб",
                "Ель",
                "Зелень",
                "Илекс",
                "Ирис",
                "Каллы",
                "Куркума",
                "Клематис",
                "Корилус",
                "Кампанула",
                "Котинус",
                "Краспедия",
                "Кактус",
                "Лаванда",
                "Лагурус",
                "Леукаспермум",
                "Лилия",
                "Лимон",
                "Лотос",
                "Мак",
                "Маттиола",
                "Мимоза",
                "Мускари",
                "Нарцисс",
                "Нигелла",
                "Нарине",
                "Орхидея",
                "Орнитогалум",
                "Озотамнус",
                "Оксипеталум",
                "Пион",
                "Пистация",
                "Питоспорум",
                "Подсолнух",
                "Протея",
                "Ранункулюс",
                "Роза",
                "Роза кустовая",
                "Роза французская",
                "Роза пионовидная",
                "Роза садовая",
                "Ромашки",
                "Рускус",
                "Сирень",
                "Скимия",
                "Статица",
                "Трахелиум",
                "Суккуленты",
                "Тубероза"
            ],
            "package": "Ваза под букет в подарок ",
            "size": "Индивидуальные ",
            "about_item": "Примеры в синих оттенках. Стоимость каждого букета просчитывается индивидуально "
        },
        "category": "Свадебные букеты"
    },
    {
        "item_name": "Подсолнух",
        "item_link": "https://vgosti.by/bukety/podsolnuh-1.html",
        "cost_byn": "105.0",
        "photos": [
            "https://vgosti.by/files/items/807/icon.jpg",
            "https://vgosti.by/files/galleries/1190/2254/src.jpg",
            "https://vgosti.by/files/galleries/1190/2255/src.jpg",
            "https://vgosti.by/files/galleries/1190/2256/src.jpg",
            "https://vgosti.by/files/galleries/1190/2257/src.jpg",
            "https://vgosti.by/files/galleries/1190/2258/src.jpg",
            "https://vgosti.by/files/galleries/1190/2259/src.jpg"
        ],
        "description": {
            "composition": [
                "Астранция",
                "Гвоздика",
                "Зелень",
                "Краспедия",
                "Пистация",
                "Питоспорум",
                "Подсолнух",
                "Ромашки",
                "Статица",
                "Фрезия",
                "Хамелациум",
                "Хиперикум",
                "Эвкалипт",
                "Эрингиум",
                "Эустома",
                "Ягоды"
            ],
            "package": "Фетр, атласные ленты ",
            "size": "35-40 см ",
            "about_item": "Летний букет из ягод, полевых цветов и подсолнуха "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Маджента",
        "item_link": "https://vgosti.by/bukety/madzhenta.html",
        "cost_byn": "175.0",
        "photos": [
            "https://vgosti.by/files/items/536/icon.jpg",
            "https://vgosti.by/files/galleries/707/1539/src.jpg",
            "https://vgosti.by/files/galleries/707/1540/src.jpg",
            "https://vgosti.by/files/galleries/707/1541/src.jpg",
            "https://vgosti.by/files/galleries/707/1542/src.jpg",
            "https://vgosti.by/files/galleries/707/1543/src.jpg",
            "https://vgosti.by/files/galleries/707/1544/src.jpg",
            "https://vgosti.by/files/galleries/707/1545/src.jpg",
            "https://vgosti.by/files/galleries/707/1546/src.jpg",
            "https://vgosti.by/files/galleries/707/1547/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Астильба",
                "Гвоздика",
                "Дельфиниум",
                "Зелень",
                "Орхидея",
                "Пион",
                "Протея",
                "Роза",
                "Роза кустовая",
                "Эвкалипт"
            ],
            "package": "Букет без упаковки ",
            "size": "45-50 см ",
            "about_item": "Стильный европейский букет без упаковки "
        },
        "category": "Букеты"
    },
    {
        "item_name": "Марсель",
        "item_link": "https://vgosti.by/korziny-s-cvetami/marsel-1.html",
        "cost_byn": "87.0",
        "photos": [
            "https://vgosti.by/files/items/1558/icon.jpg",
            "https://vgosti.by/files/galleries/2517/6034/src.jpg",
            "https://vgosti.by/files/galleries/2517/6035/src.jpg",
            "https://vgosti.by/files/galleries/2517/6036/src.jpg",
            "https://vgosti.by/files/galleries/2517/6037/src.jpg",
            "https://vgosti.by/files/galleries/2517/6038/src.jpg",
            "https://vgosti.by/files/galleries/2517/6039/src.jpg",
            "https://vgosti.by/files/galleries/2517/6040/src.jpg",
            "https://vgosti.by/files/galleries/2517/6078/src.jpg",
            "https://vgosti.by/files/galleries/2517/6079/src.jpg",
            "https://vgosti.by/files/galleries/2517/6080/src.jpg",
            "https://vgosti.by/files/galleries/2517/6081/src.jpg",
            "https://vgosti.by/files/galleries/2517/6082/src.jpg",
            "https://vgosti.by/files/galleries/2517/6083/src.jpg"
        ],
        "description": {
            "composition": [
                "Пистация",
                "Питоспорум",
                "Роза",
                "Роза пионовидная",
                "Экзотика"
            ],
            "package": "Плетеная натуральная корзина ",
            "size": "Высота 30 см, ширина 22 см ",
            "about_item": "Корзина из цветов с добавлением фруктов "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Сомелье",
        "item_link": "https://vgosti.by/korziny-s-cvetami/somele.html",
        "cost_byn": "655.0",
        "photos": [
            "https://vgosti.by/files/items/1438/icon.jpg",
            "https://vgosti.by/files/galleries/2313/5570/src.jpg",
            "https://vgosti.by/files/galleries/2313/5571/src.jpg",
            "https://vgosti.by/files/galleries/2313/5572/src.jpg",
            "https://vgosti.by/files/galleries/2313/5573/src.jpg",
            "https://vgosti.by/files/galleries/2313/5574/src.jpg",
            "https://vgosti.by/files/galleries/2313/5575/src.jpg"
        ],
        "description": {
            "composition": [
                "Диантус",
                "Зелень",
                "Орхидея",
                "Ранункулюс",
                "Роза пионовидная",
                "Роза садовая",
                "Фрезия",
                "Хамелациум",
                "Хиперикум",
                "Цинерария",
                "Эвкалипт",
                "Экзотика",
                "Эустома"
            ],
            "package": "Плетеная корзина из натурального материала ",
            "size": "Диаметр более 60 см ",
            "about_item": "Большая стильная корзина цветов шоколадных оттенков "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Корзинка знаний",
        "item_link": "https://vgosti.by/korziny-s-cvetami/korzinka-znanij.html",
        "cost_byn": "39.0",
        "photos": [
            "https://vgosti.by/files/items/1184/icon.jpg",
            "https://vgosti.by/files/galleries/1839/4203/src.jpg",
            "https://vgosti.by/files/galleries/1839/4204/src.jpg",
            "https://vgosti.by/files/galleries/1839/4205/src.jpg",
            "https://vgosti.by/files/galleries/1839/4206/src.jpg",
            "https://vgosti.by/files/galleries/1839/4207/src.jpg",
            "https://vgosti.by/files/galleries/1839/4208/src.jpg",
            "https://vgosti.by/files/galleries/1839/4209/src.jpg",
            "https://vgosti.by/files/galleries/1839/4210/src.jpg",
            "https://vgosti.by/files/galleries/1839/4211/src.jpg"
        ],
        "description": {
            "composition": [
                "Роза французская",
                "Эвкалипт",
                "Экзотика",
                "Ягоды"
            ],
            "package": "Деревянное кашпо с ручкой ",
            "size": "высота 20-25 см ",
            "about_item": "Осенняя композиция во флористической губке "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Композиция К Рождеству",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/kompoziciya-k-rozhdestvu.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/1317/icon.jpg",
            "https://vgosti.by/files/galleries/2083/4878/src.jpg",
            "https://vgosti.by/files/galleries/2083/4879/src.jpg",
            "https://vgosti.by/files/galleries/2083/4880/src.jpg",
            "https://vgosti.by/files/galleries/2083/4881/src.jpg",
            "https://vgosti.by/files/galleries/2083/4882/src.jpg",
            "https://vgosti.by/files/galleries/2083/4883/src.jpg",
            "https://vgosti.by/files/galleries/2083/4884/src.jpg",
            "https://vgosti.by/files/galleries/2083/4885/src.jpg",
            "https://vgosti.by/files/galleries/2083/4886/src.jpg",
            "https://vgosti.by/files/galleries/2083/4887/src.jpg",
            "https://vgosti.by/files/galleries/2083/4890/src.jpg",
            "https://vgosti.by/files/galleries/2083/4891/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Коробка ",
            "size": "диаметр 20-25 см ",
            "about_item": "Композиция из четырех свечей "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Утренний снег",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/utrennij-sneg.html",
        "cost_byn": "49.0",
        "photos": [
            "https://vgosti.by/files/items/1616/icon.jpg",
            "https://vgosti.by/files/galleries/2621/6202/src.jpg",
            "https://vgosti.by/files/galleries/2621/6203/src.jpg",
            "https://vgosti.by/files/galleries/2621/6204/src.jpg"
        ],
        "description": {
            "composition": [
                ""
            ],
            "package": "Декоративное стеклянное кашпо ",
            "size": "высота композиции 20 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Рождественский венок Карамболь",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/rozhdestvenskij-venok-karambol.html",
        "cost_byn": "75.0",
        "photos": [
            "https://vgosti.by/files/items/1687/icon.jpg",
            "https://vgosti.by/files/galleries/2753/6490/src.jpg",
            "https://vgosti.by/files/galleries/2753/6491/src.jpg",
            "https://vgosti.by/files/galleries/2753/6492/src.jpg",
            "https://vgosti.by/files/galleries/2753/6493/src.jpg",
            "https://vgosti.by/files/galleries/2753/6494/src.jpg",
            "https://vgosti.by/files/galleries/2753/6495/src.jpg",
            "https://vgosti.by/files/galleries/2753/6496/src.jpg",
            "https://vgosti.by/files/galleries/2753/6497/src.jpg",
            "https://vgosti.by/files/galleries/2753/6498/src.jpg"
        ],
        "description": {
            "composition": [
                "Рождественский венок"
            ],
            "package": "Крафт-пакет ",
            "size": "Диаметр 35 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Кашемир",
        "item_link": "https://vgosti.by/korziny-s-cvetami/kashemir.html",
        "cost_byn": "199.0",
        "photos": [
            "https://vgosti.by/files/items/201/icon.jpg",
            "https://vgosti.by/files/galleries/154/2044/src.jpg",
            "https://vgosti.by/files/galleries/154/2045/src.jpg",
            "https://vgosti.by/files/galleries/154/2046/src.jpg",
            "https://vgosti.by/files/galleries/154/2047/src.jpg",
            "https://vgosti.by/files/galleries/154/2048/src.jpg"
        ],
        "description": {
            "composition": [
                "Анемон",
                "Гвоздика",
                "Зелень",
                "Пистация",
                "Ранункулюс",
                "Роза",
                "Роза кустовая",
                "Хризантема",
                "Эустома"
            ],
            "package": "Плетеная корзина ",
            "size": "40-50 см ",
            "about_item": "Роскошная корзина с экзотическими цветами "
        },
        "category": "Корзины с цветами"
    },
    {
        "item_name": "Королевство зимы",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/korolevstvo-zimy.html",
        "cost_byn": "85.0",
        "photos": [
            "https://vgosti.by/files/items/1645/icon.jpg",
            "https://vgosti.by/files/galleries/2679/6342/src.jpg",
            "https://vgosti.by/files/galleries/2679/6343/src.jpg",
            "https://vgosti.by/files/galleries/2679/6344/src.jpg",
            "https://vgosti.by/files/galleries/2679/6345/src.jpg",
            "https://vgosti.by/files/galleries/2679/6346/src.jpg",
            "https://vgosti.by/files/galleries/2679/6347/src.jpg",
            "https://vgosti.by/files/galleries/2679/6348/src.jpg",
            "https://vgosti.by/files/galleries/2679/6349/src.jpg"
        ],
        "description": {
            "composition": [
                "Композиция со",
                "свечами"
            ],
            "package": "Круглая тарелка в серебряном цвете ",
            "size": "диаметр 27-30 см ",
            "about_item": "Украшение на новогодний стол длительного использования "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Новогодний лес",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/novogodnij-les.html",
        "cost_byn": "55.0",
        "photos": [
            "https://vgosti.by/files/items/1641/icon.jpg",
            "https://vgosti.by/files/galleries/2671/6319/src.jpg",
            "https://vgosti.by/files/galleries/2671/6320/src.jpg",
            "https://vgosti.by/files/galleries/2671/6321/src.jpg",
            "https://vgosti.by/files/galleries/2671/6322/src.jpg",
            "https://vgosti.by/files/galleries/2671/6323/src.jpg",
            "https://vgosti.by/files/galleries/2671/6324/src.jpg",
            "https://vgosti.by/files/galleries/2671/6325/src.jpg",
            "https://vgosti.by/files/galleries/2671/6326/src.jpg",
            "https://vgosti.by/files/galleries/2671/6327/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Деревянное дизайнерское кашпо ",
            "size": "Высота 22-25 см ",
            "about_item": "Срок использования композиции не ограничен "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Розовые свадебные букеты",
        "item_link": "https://vgosti.by/svadebnye-bukety/rozovye-svadebnye-bukety.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/447/icon.jpg",
            "https://vgosti.by/files/galleries/541/3755/src.jpg",
            "https://vgosti.by/files/galleries/541/3756/src.jpg",
            "https://vgosti.by/files/galleries/541/3757/src.jpg",
            "https://vgosti.by/files/galleries/541/3758/src.jpg",
            "https://vgosti.by/files/galleries/541/3759/src.jpg",
            "https://vgosti.by/files/galleries/541/3760/src.jpg",
            "https://vgosti.by/files/galleries/541/3761/src.jpg",
            "https://vgosti.by/files/galleries/541/3763/src.jpg",
            "https://vgosti.by/files/galleries/541/3762/src.jpg",
            "https://vgosti.by/files/galleries/541/3764/src.jpg",
            "https://vgosti.by/files/galleries/541/3765/src.jpg",
            "https://vgosti.by/files/galleries/541/3766/src.jpg",
            "https://vgosti.by/files/galleries/541/3767/src.jpg",
            "https://vgosti.by/files/galleries/541/3768/src.jpg",
            "https://vgosti.by/files/galleries/541/3769/src.jpg",
            "https://vgosti.by/files/galleries/541/3770/src.jpg",
            "https://vgosti.by/files/galleries/541/3771/src.jpg",
            "https://vgosti.by/files/galleries/541/3772/src.jpg",
            "https://vgosti.by/files/galleries/541/3773/src.jpg",
            "https://vgosti.by/files/galleries/541/3774/src.jpg",
            "https://vgosti.by/files/galleries/541/3775/src.jpg",
            "https://vgosti.by/files/galleries/541/3776/src.jpg",
            "https://vgosti.by/files/galleries/541/3777/src.jpg",
            "https://vgosti.by/files/galleries/541/3778/src.jpg",
            "https://vgosti.by/files/galleries/541/3779/src.jpg",
            "https://vgosti.by/files/galleries/541/3781/src.jpg",
            "https://vgosti.by/files/galleries/541/3782/src.jpg",
            "https://vgosti.by/files/galleries/541/3783/src.jpg",
            "https://vgosti.by/files/galleries/541/3784/src.jpg",
            "https://vgosti.by/files/galleries/541/4165/src.jpg",
            "https://vgosti.by/files/galleries/541/4166/src.jpg",
            "https://vgosti.by/files/galleries/541/4167/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Канадская пихта",
                "Амариллис",
                "Ананас",
                "Анемон",
                "Асклепия",
                "Аспарагус",
                "Аспидистра",
                "Астильба",
                "Астра",
                "Астранция",
                "Бамбук",
                "Банксия",
                "Берграс",
                "Бувардия",
                "Бруния",
                "Василёк",
                "Вероника",
                "Гортензия",
                "Гвоздика",
                "Гентиана",
                "Гербера",
                "Георгина",
                "Гиацинт",
                "Гипсофил",
                "Дельфиниум",
                "Диантус",
                "Дуб",
                "Ель",
                "Зелень",
                "Илекс",
                "Ирис",
                "Каллы",
                "Куркума",
                "Клематис",
                "Корилус",
                "Кампанула",
                "Котинус",
                "Краспедия",
                "Кактус",
                "Лаванда",
                "Лагурус",
                "Леукаспермум",
                "Лилия",
                "Лимон",
                "Лотос",
                "Мак",
                "Маттиола",
                "Мимоза",
                "Мускари",
                "Нарцисс",
                "Нигелла",
                "Нарине",
                "Орхидея",
                "Орнитогалум",
                "Озотамнус",
                "Оксипеталум",
                "Пион",
                "Пистация",
                "Питоспорум",
                "Подсолнух",
                "Протея",
                "Ранункулюс",
                "Роза",
                "Роза кустовая",
                "Роза французская",
                "Роза пионовидная",
                "Роза садовая",
                "Ромашки",
                "Рускус",
                "Сирень",
                "Скимия",
                "Статица"
            ],
            "package": "Ваза под букет в подарок ",
            "size": "Индивидуальные ",
            "about_item": "Примеры в розовом цвете. Стоимость каждого букета просчитывается индивидуально "
        },
        "category": "Свадебные букеты"
    },
    {
        "item_name": "Новогодняя кружка",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/novogodnyaya-kruzhka.html",
        "cost_byn": "33.0",
        "photos": [
            "https://vgosti.by/files/items/906/icon.jpg",
            "https://vgosti.by/files/galleries/1370/2761/src.jpg",
            "https://vgosti.by/files/galleries/1370/2762/src.jpg",
            "https://vgosti.by/files/galleries/1370/2763/src.jpg",
            "https://vgosti.by/files/galleries/1370/2764/src.jpg",
            "https://vgosti.by/files/galleries/1370/2765/src.jpg",
            "https://vgosti.by/files/galleries/1370/2766/src.jpg",
            "https://vgosti.by/files/galleries/1370/2767/src.jpg",
            "https://vgosti.by/files/galleries/1370/2768/src.jpg",
            "https://vgosti.by/files/galleries/1370/2769/src.jpg",
            "https://vgosti.by/files/galleries/1370/2770/src.jpg",
            "https://vgosti.by/files/galleries/1370/2771/src.jpg",
            "https://vgosti.by/files/galleries/1370/2772/src.jpg",
            "https://vgosti.by/files/galleries/1370/2773/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Керамическая кружка ",
            "size": "высота 18-20 см ",
            "about_item": "Новогодняя композиция с керамикой длительного использования "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Письмо Деду Морозу",
        "item_link": "https://vgosti.by/rozhdestvo-novyj-god/pismo-dedu-morozu.html",
        "cost_byn": "39.0",
        "photos": [
            "https://vgosti.by/files/items/908/icon.jpg",
            "https://vgosti.by/files/galleries/1374/2774/src.jpg",
            "https://vgosti.by/files/galleries/1374/2775/src.jpg",
            "https://vgosti.by/files/galleries/1374/2776/src.jpg",
            "https://vgosti.by/files/galleries/1374/2777/src.jpg",
            "https://vgosti.by/files/galleries/1374/2778/src.jpg",
            "https://vgosti.by/files/galleries/1374/2779/src.jpg",
            "https://vgosti.by/files/galleries/1374/2780/src.jpg",
            "https://vgosti.by/files/galleries/1374/2781/src.jpg",
            "https://vgosti.by/files/galleries/1374/2782/src.jpg",
            "https://vgosti.by/files/galleries/1374/2783/src.jpg"
        ],
        "description": {
            "composition": [
                "Новогодний декор",
                "(подарки)"
            ],
            "package": "Конверт ",
            "size": "ширина 16 см высота 28 см ",
            "about_item": "Композиция длительного использования "
        },
        "category": "Рождество Новый год"
    },
    {
        "item_name": "Кремовые свадебные букеты",
        "item_link": "https://vgosti.by/svadebnye-bukety/kremovye-svadebnye-bukety.html",
        "cost_byn": "150.0",
        "photos": [
            "https://vgosti.by/files/items/800/icon.jpg",
            "https://vgosti.by/files/galleries/1178/3742/src.jpg",
            "https://vgosti.by/files/galleries/1178/3743/src.jpg",
            "https://vgosti.by/files/galleries/1178/3744/src.jpg",
            "https://vgosti.by/files/galleries/1178/3745/src.jpg",
            "https://vgosti.by/files/galleries/1178/3746/src.jpg",
            "https://vgosti.by/files/galleries/1178/3747/src.jpg",
            "https://vgosti.by/files/galleries/1178/3748/src.jpg",
            "https://vgosti.by/files/galleries/1178/3749/src.jpg",
            "https://vgosti.by/files/galleries/1178/3750/src.jpg",
            "https://vgosti.by/files/galleries/1178/3751/src.jpg",
            "https://vgosti.by/files/galleries/1178/3752/src.jpg",
            "https://vgosti.by/files/galleries/1178/3753/src.jpg",
            "https://vgosti.by/files/galleries/1178/3754/src.jpg",
            "https://vgosti.by/files/galleries/1178/3917/src.jpg",
            "https://vgosti.by/files/galleries/1178/4159/src.jpg",
            "https://vgosti.by/files/galleries/1178/4160/src.jpg",
            "https://vgosti.by/files/galleries/1178/4161/src.jpg",
            "https://vgosti.by/files/galleries/1178/4162/src.jpg",
            "https://vgosti.by/files/galleries/1178/4163/src.jpg",
            "https://vgosti.by/files/galleries/1178/4164/src.jpg"
        ],
        "description": {
            "composition": [
                "Амариллис",
                "Ананас",
                "Анемон",
                "Асклепия",
                "Аспарагус",
                "Аспидистра",
                "Астильба",
                "Астра",
                "Астранция",
                "Бамбук",
                "Банксия",
                "Берграс",
                "Бувардия",
                "Бруния",
                "Василёк",
                "Вероника",
                "Гортензия",
                "Гвоздика",
                "Гентиана",
                "Гербера",
                "Георгина",
                "Гиацинт",
                "Гипсофил",
                "Дельфиниум",
                "Диантус",
                "Дуб",
                "Ель",
                "Зелень",
                "Илекс",
                "Ирис",
                "Каллы",
                "Куркума",
                "Клематис",
                "Корилус",
                "Кампанула",
                "Котинус",
                "Краспедия",
                "Кактус",
                "Лаванда",
                "Лагурус",
                "Леукаспермум",
                "Лилия",
                "Лимон",
                "Лотос",
                "Мак",
                "Маттиола",
                "Мимоза",
                "Мускари",
                "Нарцисс",
                "Нигелла",
                "Нарине",
                "Орхидея",
                "Орнитогалум",
                "Озотамнус",
                "Оксипеталум",
                "Пион",
                "Пистация",
                "Питоспорум",
                "Подсолнух",
                "Протея",
                "Ранункулюс",
                "Роза",
                "Роза кустовая",
                "Роза французская",
                "Роза пионовидная",
                "Роза садовая",
                "Ромашки",
                "Рускус",
                "Сирень",
                "Скимия",
                "Статица",
                "Суккуленты"
            ],
            "package": "Ваза под букет в подарок ",
            "size": "Индивидуальные ",
            "about_item": "Примеры в кремовых оттенках.Стоимость каждого букета просчитывается индивидуально "
        },
        "category": "Свадебные букеты"
    },
    {
        "item_name": "Белые свадебные букеты",
        "item_link": "https://vgosti.by/svadebnye-bukety/belye-svadebnye-bukety.html",
        "cost_byn": "155.0",
        "photos": [
            "https://vgosti.by/files/items/443/icon.jpg",
            "https://vgosti.by/files/galleries/533/3722/src.jpg",
            "https://vgosti.by/files/galleries/533/3723/src.jpg",
            "https://vgosti.by/files/galleries/533/3724/src.jpg",
            "https://vgosti.by/files/galleries/533/3725/src.jpg",
            "https://vgosti.by/files/galleries/533/3726/src.jpg",
            "https://vgosti.by/files/galleries/533/3727/src.jpg",
            "https://vgosti.by/files/galleries/533/3728/src.jpg",
            "https://vgosti.by/files/galleries/533/3729/src.jpg",
            "https://vgosti.by/files/galleries/533/3730/src.jpg",
            "https://vgosti.by/files/galleries/533/3731/src.jpg",
            "https://vgosti.by/files/galleries/533/3732/src.jpg",
            "https://vgosti.by/files/galleries/533/3733/src.jpg",
            "https://vgosti.by/files/galleries/533/3734/src.jpg",
            "https://vgosti.by/files/galleries/533/3735/src.jpg",
            "https://vgosti.by/files/galleries/533/3736/src.jpg",
            "https://vgosti.by/files/galleries/533/3737/src.jpg",
            "https://vgosti.by/files/galleries/533/3738/src.jpg",
            "https://vgosti.by/files/galleries/533/3739/src.jpg",
            "https://vgosti.by/files/galleries/533/3740/src.jpg",
            "https://vgosti.by/files/galleries/533/3741/src.jpg"
        ],
        "description": {
            "composition": [
                "Альстромерия",
                "Канадская пихта",
                "Амариллис",
                "Ананас",
                "Анемон",
                "Асклепия",
                "Аспарагус",
                "Аспидистра",
                "Астильба",
                "Астра",
                "Астранция",
                "Бамбук",
                "Банксия",
                "Берграс",
                "Бувардия",
                "Бруния",
                "Василёк",
                "Вероника",
                "Гортензия",
                "Гвоздика",
                "Гентиана",
                "Гербера",
                "Георгина",
                "Гиацинт",
                "Гипсофил",
                "Дельфиниум",
                "Диантус",
                "Дуб",
                "Ель",
                "Зелень",
                "Илекс",
                "Ирис",
                "Каллы",
                "Куркума",
                "Клематис",
                "Корилус",
                "Кампанула",
                "Котинус",
                "Краспедия",
                "Кактус",
                "Лаванда",
                "Лагурус",
                "Леукаспермум",
                "Лилия",
                "Лимон",
                "Лотос",
                "Мак",
                "Маттиола",
                "Мимоза",
                "Мускари",
                "Нарцисс",
                "Нигелла",
                "Нарине",
                "Орхидея",
                "Орнитогалум",
                "Озотамнус",
                "Оксипеталум",
                "Пион",
                "Пистация",
                "Питоспорум",
                "Подсолнух",
                "Протея",
                "Ранункулюс",
                "Роза",
                "Роза кустовая",
                "Роза французская",
                "Роза пионовидная",
                "Роза садовая",
                "Ромашки",
                "Рускус",
                "Сирень",
                "Скимия",
                "Статица"
            ],
            "package": "Ваза под букет в подарок ",
            "size": "Индивидуальные ",
            "about_item": "Примеры в белом цвете. Стоимость каждого букета просчитывается индивидуально "
        },
        "category": "Свадебные букеты"
    }
]
""".data(using: .utf8)
