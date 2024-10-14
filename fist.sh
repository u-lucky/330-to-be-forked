#!/bin/bash

# Названия образовательных групп
groups=("ГруппаА" "ГруппаБ" "ГруппаВ" "ГруппаГ" "ГруппаД"
        "ГруппаЕ" "ГруппаЖ" "ГруппаЗ" "ГруппаИ" "ГруппаК")

# Основная папка, где будут созданы группы
base_dir="ОбразовательныеГруппы"

# Создаем основную папку
mkdir -p "$base_dir"

# Для каждой группы создаем соответствующую структуру
for group in "${groups[@]}"; do
    # Создаем папку группы
    group_dir="$base_dir/$group"
    mkdir -p "$group_dir"

    # Создаем структуру внутри папки группы
    mkdir -p "$group_dir/Управление задачами"
    mkdir -p "$group_dir/Документация"
    touch "$group_dir/Документация/Инструкция.txt"
    touch "$group_dir/Документация/Шаблоны задач/Шаблон1.txt"
    touch "$group_dir/Документация/Шаблоны задач/Шаблон2.txt"
    mkdir -p "$group_dir/Код"
    mkdir -p "$group_dir/Исходники"
    touch "$group_dir/Исходники/main.c"
    touch "$group_dir/Исходники/utils.c"
    mkdir -p "$group_dir/Скрипты"
    touch "$group_dir/Скрипты/setup.sh"
    touch "$group_dir/Скрипты/run.sh"
    mkdir -p "$group_dir/Отчеты"
    touch "$group_dir/Отчеты/Отчет1.doc"
    touch "$group_dir/Отчеты/Отчет2.doc"
done

echo "Структура папок успешно создана в '$base_dir'."
