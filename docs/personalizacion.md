# Personalización del template

Para adaptar el template a cada informe, normalmente solo necesitas tocar estos archivos:

## 0. Elegir template

Este repositorio incluye dos variantes:
- `informe/`: formato de informe tradicional.
- `paper/`: formato de paper en dos columnas.

Los archivos a editar dependen del template que elijas.

## 1. Portada

Edita [informe/portada.tex](../informe/portada.tex) (informe) o [paper/titulo.tex](../paper/titulo.tex) (paper) para cambiar:
- título
- subtítulo
- autores
- profesor(es)
- fecha
- institución o facultad, si corresponde

## 2. Contenido principal

Edita o reemplaza:
- [informe/Secciones](../informe/Secciones) para el template de informe.
- [paper/secciones](../paper/secciones) para el template de paper.

Si agregas secciones nuevas, incluyelas desde [informe/main.tex](../informe/main.tex) o [paper/main.tex](../paper/main.tex) con `\include{...}` o `\input{...}`.

## 3. Configuración visual

Usa [informe/config.tex](../informe/config.tex) o [paper/config.tex](../paper/config.tex) para ajustar:
- márgenes
- encabezados y pies
- imágenes por defecto
- estilo de captions
- cajas, colores y espaciado

## 4. Paquetes

Usa [informe/packages.tex](../informe/packages.tex) o [paper/packages.tex](../paper/packages.tex) si necesitas:
- añadir paquetes nuevos
- quitar paquetes que no usarás
- cambiar opciones de bibliografía, tablas o código

## 5. Bibliografía

Agrega tus referencias en [informe/referencias.bib](../informe/referencias.bib) o [paper/referencias.bib](../paper/referencias.bib) y cita con `\cite{clave}`.

## 6. Ejemplos

Los archivos dentro de [informe/examples](../informe/examples) sirven como guia. Puedes borrarlos o reemplazarlos cuando ya no los necesites.

## Flujo recomendado

1. Duplica el template.
2. Elige `informe/` o `paper/`.
3. Cambia la portada o titulo segun el template elegido.
4. Escribe el contenido en la carpeta de secciones correspondiente y enlazalo desde su `main.tex`.
5. Ajusta estilo y paquetes si hace falta.
6. Completa la bibliografia.
7. Compila con `make -C build-tools` (informe) o `make -C build-tools TEMPLATE=paper`.

## Alternativa sin Linux

Si no quieres usar la compilacion local, puedes copiar `informe/` o `paper/` a un proyecto nuevo en Overleaf. Overleaf es un editor y compilador de LaTeX en la web, asi que sirve como alternativa valida para Windows, macOS o cualquier sistema con navegador.
