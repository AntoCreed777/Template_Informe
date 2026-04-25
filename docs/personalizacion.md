# Personalización del template

Para adaptar el template a cada informe, normalmente solo necesitas tocar estos archivos:

## 1. Portada

Edita [src/portada.tex](../src/portada.tex) para cambiar:
- título
- subtítulo
- autores
- profesor(es)
- fecha
- institución o facultad, si corresponde

## 2. Contenido principal

Edita o reemplaza los archivos dentro de [src/Secciones](../src/Secciones) para escribir el cuerpo del informe. Si agregas secciones nuevas, también debes incluirlas desde [src/main.tex](../src/main.tex) con `\include{...}` o `\input{...}`.

## 3. Configuración visual

Usa [src/config.tex](../src/config.tex) para ajustar:
- márgenes
- encabezados y pies
- imágenes por defecto
- estilo de captions
- cajas, colores y espaciado

## 4. Paquetes

Usa [src/packages.tex](../src/packages.tex) si necesitas:
- añadir paquetes nuevos
- quitar paquetes que no usarás
- cambiar opciones de bibliografía, tablas o código

## 5. Bibliografía

Agrega tus referencias en [src/referencias.bib](../src/referencias.bib) y cita con `\cite{clave}`.

## 6. Ejemplos

Los archivos dentro de [src/examples](../src/examples) sirven como guía. Puedes borrarlos o reemplazarlos cuando ya no los necesites.

## Flujo recomendado

1. Duplica el template.
2. Cambia la portada.
3. Escribe el contenido en `Secciones/` y enlázalo desde `src/main.tex`.
4. Ajusta estilo y paquetes si hace falta.
5. Completa la bibliografía.
6. Compila con `make -C build-tools`.

## Alternativa sin Linux

Si no quieres usar la compilación local, puedes copiar el contenido de `src/` a un proyecto nuevo en Overleaf. Overleaf es un editor y compilador de LaTeX en la web, así que sirve como alternativa válida para Windows, macOS o cualquier sistema con navegador.
