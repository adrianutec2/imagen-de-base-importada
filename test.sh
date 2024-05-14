#!/bin/sh
echo -e "\e[34mValidar Imagen\e[0m"

echo NODE_VERSION: ${NODE_VERSION}
echo BACKGROUND_COLOR: ${BACKGROUND_COLOR}

if [ ""$(echo $BACKGROUND_COLOR | tr '[:lower:]' '[:upper:]') = 'BLUE' ]; then
    echo -e "\e[31mERROR: Color no permitido:\e[0m" ${BACKGROUND_COLOR}
    EXIT_CODE=1
else
  echo -e "\e[32mValidacion completada sin errores\e[0m"
fi

exit ${EXIT_CODE}
