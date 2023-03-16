FROM debian

# Copia los archivos .sh e .inf al contenedor
COPY ./ProyectoAED.sh ./ProyectoAED.sh
COPY ./SCRUM.inf ./SCRUM.inf
COPY ./Modelo.inf ./Modelo.inf
COPY ./Crystal.inf ./Cyrstal.inf
COPY ./Espiral.inf ./Espiral.inf
COPY ./Kanban.inf ./Kanban.inf
COPY ./XP.inf ./XP.inf
COPY ./Cascada.inf ./Cascada.inf

# Establece el directorio de trabajo
WORKDIR /
RUN chmod +x ProyectoAED.sh

# Ejecuta el archivo .sh
ENTRYPOINT [ "./ProyectoAED.sh" ]