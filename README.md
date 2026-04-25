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

- [📄 Template de Informe LaTeX](#-template-de-informe-latex)
  - [👥 Autor](#-autor)
  - [📋 Tabla de Contenidos](#-tabla-de-contenidos)
  - [📁 Estructura del Proyecto](#-estructura-del-proyecto)
  - [Compilación en Linux](#compilación-en-linux)
    - [Usando Makefile](#usando-makefile)
    - [Comandos manuales equivalentes al Makefile](#comandos-manuales-equivalentes-al-makefile)
  - [📝 Personalización y Paquetes](#-personalización-y-paquetes)
  - [🎯 Casos de Uso Ideales](#-casos-de-uso-ideales)
  - [🤝 Contribuciones](#-contribuciones)
    - [Tipos de Contribuciones Bienvenidas](#tipos-de-contribuciones-bienvenidas)
  - [📄 Licencia](#-licencia)

## 📁 Estructura del Proyecto

```
Template_Informe/
├── build/                    # 📂 Salida de compilación (PDF y auxiliares)
├── build-tools/              # ⚙️ Makefile y script de verificación Linux
│   ├── Makefile
│   └── check_linux_requirements.sh
├── LICENSE                   # 📄 Licencia del proyecto
├── README.md                 # 📋 Documentación del template
└── src/                      # 🧩 Código fuente del informe
    ├── anexos.tex
    ├── config.tex
    ├── examples/
    ├── figures/
    ├── main.tex
    ├── packages.tex
    ├── portada.tex
    ├── referencias.bib
    └── Secciones/
```

## Compilación en Linux

Para compilar este informe en Linux, primero instala la distribución completa de LaTeX:

```bash
sudo apt install texlive-full
```

### Usando Makefile

Puedes compilar y limpiar el proyecto usando el Makefile de `build-tools`:

Para compilar el PDF:
```bash
make -C build-tools
```
El PDF generado estará en la carpeta `build/` como `informe.pdf`.

Para mostrar los `Warning` y `Error`:

```bash
make -C build-tools log
```

Para eliminar los archivos auxiliares:
```bash
make -C build-tools clean
```
Esto dejará solo el PDF y los archivos fuente.

Para abrir el PDF generado directamente:
```bash
make -C build-tools open
```
Esto abrirá el archivo `build/informe.pdf` con el visor predeterminado de tu sistema.

**Nota:** Las reglas del Makefile (`all`, `clean`, `open`) están declaradas como `.PHONY`, lo que significa que no dependen de archivos y pueden ejecutarse en cualquier momento.

### Comandos manuales equivalentes al Makefile

Compilar el PDF:
```bash
cd src && latexmk -pdf -jobname=informe -outdir=../build main.tex
```

Mostrar los `Warning` y `Error`:
```bash
grep "Warning" ./build/informe.log || true
grep "Error" ./build/informe.log || true
```

Eliminar los archivos auxiliares:
```bash
rm -rf build
```

Abrir el PDF generado:
```bash
xdg-open build/informe.pdf
```


## 📝 Personalización y Paquetes

Para detalles sobre los paquetes utilizados y cómo personalizar el documento, revisa los archivos `src/packages.tex` y `src/config.tex`. Allí encontrarás todas las configuraciones y opciones disponibles para modificar el estilo, márgenes, encabezados, colores, bibliografía, etc.

Las importaciones incluidas en el template cubren áreas como:
- Matemáticas y símbolos
- Tablas y figuras
- Imágenes
- Bibliografía
- Código fuente y pseudocódigo
- Encabezados, márgenes y personalización visual

Consulta los archivos mencionados para adaptar el template a tus necesidades específicas.

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
