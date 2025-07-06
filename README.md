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
- [📝 Personalización](#-personalización)
- [🎨 Ejemplos de Uso](#-ejemplos-de-uso)
- [📚 Paquetes Incluidos](#-paquetes-incluidos)
- [🤝 Contribuciones](#-contribuciones)
- [📄 Licencia](#-licencia)

## 📁 Estructura del Proyecto

```
Template_Informe/
├── main.tex           # 📄 Archivo principal con configuración
├── portada.tex        # 🏠 Portada personalizable del informe
├── introduccion.tex   # 📖 Sección de introducción
├── conclusion.tex     # 🎯 Sección de conclusión
├── referencias.bib    # 📚 Bibliografía en formato BibTeX
├── figures/           # 🖼️ Carpeta para figuras e imágenes
│   └── udec_logo.png  # 🎓 Logo de la universidad
└── README.md          # 📋 Documentación del template
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

## 🎨 Ejemplos de Uso

### Insertar una Imagen

```latex
\begin{figure}[H]
    \centering
    \includegraphics[width=0.7\textwidth]{nombre_imagen.png}
    \caption{Descripción de la imagen}
    \label{fig:etiqueta}
\end{figure}
```

### Crear una Tabla

```latex
\begin{table}[H]
    \centering
    \begin{tabular}{|c|c|c|}
        \hline
        Columna 1 & Columna 2 & Columna 3 \\
        \hline
        Dato 1 & Dato 2 & Dato 3 \\
        \hline
    \end{tabular}
    \caption{Descripción de la tabla}
    \label{tab:etiqueta}
\end{table}
```

### Crear Listas

```latex
% Lista numerada
\begin{enumerate}
    \item Primer elemento
    \item Segundo elemento
    \item Tercer elemento
\end{enumerate}

% Lista con viñetas
\begin{itemize}
    \item Elemento con viñeta
    \item Otro elemento
    \item Último elemento
\end{itemize}
```

### Agregar Ecuaciones

```latex
% Ecuación simple
\begin{equation}
    E = mc^2
    \label{eq:einstein}
\end{equation}

% Múltiples ecuaciones
\begin{align}
    a &= b + c \\
    d &= e + f
\end{align}
```

### Crear Recuadros Destacados (tcolorbox)

```latex
\hspace{1cm}
\begin{tcolorbox}[
    colback=blue!10, 
    colframe=blue!60, 
    coltitle=black, 
    title={Título del Recuadro}, 
    fonttitle=\bfseries, 
    boxrule=1mm, 
    arc=4mm, 
    left=2mm, 
    right=2mm, 
    top=2mm, 
    bottom=2mm
]
    Aquí puedes agregar texto destacado, observaciones importantes, 
    retroalimentación, notas especiales o cualquier contenido que 
    necesite ser resaltado visualmente en el documento.
\end{tcolorbox}
\hspace{1cm}
```

**Personalización de colores:**
- `colback=color!10`: Color de fondo (ej: `red!10`, `green!10`, `yellow!10`)
- `colframe=color!60`: Color del borde (ej: `red!60`, `green!60`, `yellow!60`)
- `title={Texto}`: Título del recuadro

### Agregar Referencias

```latex
Como menciona Knuth \cite{knuth1984}, LaTeX es una herramienta poderosa.
En la Figura \ref{fig:etiqueta} se muestra...
La ecuación \eqref{eq:einstein} representa...
```

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
