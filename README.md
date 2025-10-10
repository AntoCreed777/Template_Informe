# 📄 Template de Informe LaTeX

<div align="center">

![LaTeX](https://img.shields.io/badge/LaTeX-008080?style=for-the-badge&logo=latex&logoColor=white)
![PDF](https://img.shields.io/badge/PDF-FF0000?style=for-the-badge&logo=adobe-acrobat-reader&logoColor=white)
![Academic](https://img.shields.io/badge/Academic-Template-blue?style=for-the-badge)

Template para crear informes académicos y técnicos en LaTeX

</div>

## 👥 Autor

| Nombre | GitHub | Universidad |
|--------|--------|-------------|
| Antonio Benavides Puentes | [@AntoCreed777](https://github.com/AntoCreed777) | Universidad de Concepción |

## 📋 Tabla de Contenidos

- [📁 Estructura del Proyecto](#-estructura-del-proyecto)
- [Compilación en Linux](#compilación-en-linux)
- [📝 Personalización](#-personalización)
- [📚 Paquetes Incluidos](#-paquetes-incluidos)
- [🤝 Contribuciones](#-contribuciones)
- [📄 Licencia](#-licencia)

## 📁 Estructura del Proyecto

```
Template_Informe/
├── main.tex           # 📄 Archivo principal con configuración
├── packages.tex       # 📦 Archivo con los paquetes y configuraciones de LaTeX
├── portada.tex        # 🏠 Portada personalizable del informe
├── seccion.tex        # 📖 Sección de ejemplo
├── resumen.tex        # 📝 Resumen del informe
├── anexos.tex         # 📎 Sección de anexos
├── referencias.bib    # 📚 Bibliografía en formato BibTeX
├── figures/           # 🖼️ Carpeta para figuras e imágenes
│   └── udec_logo.png  # 🎓 Logo de la universidad
├── README.md          # 📋 Documentación del template
└── LICENSE            # 📄 Licencia del proyecto
```

## Compilación en Linux

Para compilar este informe en Linux, primero instala la distribución completa de LaTeX:

```bash
sudo apt install texlive-full
```

### Usando Makefile

Puedes compilar y limpiar el proyecto fácilmente usando el Makefile:

Para compilar el PDF:
```bash
make
```
El PDF generado estará en la carpeta `aux/` como `informe.pdf`.

Para mostrar los `Warning` y `Error`:

```bash
make log
```

Para eliminar los archivos auxiliares:
```bash
make clean
```
Esto dejará solo el PDF y los archivos fuente.

Para abrir el PDF generado directamente:
```bash
make open
```
Esto abrirá el archivo `aux/informe.pdf` con el visor predeterminado de tu sistema.

**Nota:** Las reglas del Makefile (`all`, `clean`, `open`) están declaradas como `.PHONY`, lo que significa que no dependen de archivos y pueden ejecutarse en cualquier momento.

### Comandos manuales equivalentes al Makefile

Compilar el PDF:
```bash
latexmk -pdf -jobname=informe -outdir=aux main.tex
```

Mostrar los `Warning` y `Error`:
```bash
grep "Warning" ./aux/informe.log || true
grep "Error" ./aux/informe.log || true
```

Eliminar los archivos auxiliares:
```bash
latexmk -C -outdir=aux
```

Abrir el PDF generado:
```bash
xdg-open aux/informe.pdf
```

## 📝 Personalización

### Cambiar la Portada

Edita `portada.tex` para personalizar:

```latex
% Información básica a modificar
{\huge \textbf{TU TÍTULO AQUÍ}}
{\Large TU SUBTÍTULO}
\textbf{Tu Nombre} \\
\textbf{Segundo Autor (opcional)}
\normalsize MES AÑO
```

### Agregar Nuevas Secciones

1. **Crear archivo**: `desarrollo.tex`, `metodologia.tex`, etc.
2. **Agregar al main**: `\include{desarrollo}` en `main.tex`
3. **Estructurar**: Usar `\section{Nombre}` y `\subsection{Subsección}`

### Personalizar Encabezados

Modifica en `main.tex`:

```latex
\fancyhead[L]{TU ENCABEZADO}      % Izquierda
\fancyhead[R]{\thepage}           % Derecha (número de página)
\fancyfoot[C]{\leftmark}          % Centro (nombre de sección)
```

### Configurar Bibliografía

1. **Agregar referencias** en `referencias.bib`:
   ```bibtex
   @article{ejemplo2025,
     author = {Nombre Autor},
     title = {Título del Artículo},
     journal = {Nombre Revista},
     year = {2025}
   }
   ```

2. **Citar en texto**: `\cite{ejemplo2025}`
3. **Compilar**: El estilo IEEE se aplicará automáticamente


## 📚 Paquetes Incluidos

### Configuración Básica
- **`inputenc`**: Codificación UTF-8 para caracteres especiales
- **`babel`**: Soporte completo para idioma español
- **`csquotes`**: Compatibilidad avanzada con biblatex
- **`xurl`**: Corte automático de URLs largas

### Matemáticas y Símbolos
- **`amsmath`**: Entornos matemáticos avanzados
- **`amssymb`**: Símbolos matemáticos adicionales

### Imágenes y Figuras
- **`graphicx`**: Inclusión y manipulación de imágenes
- **`caption`**: Captions personalizados en figuras
- **`float`**: Control preciso de posición de figuras/tablas

### Tablas Avanzadas
- **`array`**: Mejoras en formato de tablas
- **`multirow`**: Soporte para filas múltiples
- **`multicol`**: Soporte para columnas múltiples

### Bibliografía Moderna
- **`biblatex`**: Sistema moderno de bibliografía
- **Backend**: `biber` para procesamiento avanzado
- **Estilo**: `ieee` para formato académico estándar

### Personalización Avanzada
- **`fancyhdr`**: Encabezados y pie de página personalizados
- **`hyperref`**: Hipervínculos internos y externos
- **`geometry`**: Control preciso de márgenes y layout
- **`tcolorbox`**: Recuadros personalizados para destacar texto o secciones específicas

## 🎯 Casos de Uso Ideales

- ✅ **Informes académicos**: Trabajos de investigación y análisis
- ✅ **Proyectos universitarios**: Entregas y presentaciones formales

## 🤝 Contribuciones

¡Las contribuciones son bienvenidas! Si tienes ideas para mejorar este template:

1. **Haz un fork** del repositorio
2. **Crea una rama** para tu feature (`git checkout -b feature/mejora`)
3. **Realiza tus cambios** y documenta apropiadamente
4. **Haz commit** (`git commit -am 'Agrega nueva funcionalidad'`)
5. **Push a la rama** (`git push origin feature/mejora`)
6. **Crea un Pull Request** con descripción detallada

### Tipos de Contribuciones Bienvenidas

- 🐛 **Corrección de errores** en configuración o documentación
- 📦 **Nuevos paquetes** útiles para documentos académicos
- 🎨 **Mejoras de diseño** en layout y tipografía
- 📚 **Ejemplos adicionales** de uso de funcionalidades
- 🌐 **Traducciones** a otros idiomas
- 📖 **Mejoras en documentación** y guías de uso

## 📄 Licencia

Este proyecto está bajo la **Licencia MIT**. Puedes usar, modificar y distribuir libremente.

Ver el archivo [LICENSE](LICENSE) para más detalles.

---

<div align="center">

**Desarrollado con ❤️ para la comunidad académica**

⭐ **Si te resulta útil, ¡deja una estrella!**

</div>
