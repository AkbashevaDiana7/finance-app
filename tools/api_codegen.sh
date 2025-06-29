#!/bin/bash

set -xe

OPENAPI_URL=https://shmr-finance.ru/swagger/documentation.yaml
OPENAPI_FILE=./assets/dev/documentation.yaml
OUTPUT_DIR=./packages/api
CONFIG_FILE=./assets/dev/api_generator_config.json


# Получаем yaml-ик с сервера
# 
# Для установки:
#   - brew install wget
#   - apt install wget
wget $OPENAPI_URL -O $OPENAPI_FILE

# Кодгеним пакет с АПИшкой
# 
# Для установки:
#   - brew install openapi-generator
#   - pip install openapi-generator-cli
openapi-generator generate \
    -i $OPENAPI_FILE \
    -g dart-dio \
    -o $OUTPUT_DIR \
    -c $CONFIG_FILE

# Идём в пакет с АПИшкой
cd $OUTPUT_DIR

# Получаем зависимости (скорее для vscode-а)
dart pub get

# Кодгеним модели
dart run build_runner build --delete-conflicting-outputs

# Запускаем автоматику на пофиксить (unused import стреляет)
dart fix --apply .    

# Форматируем для красоты
dart format .
