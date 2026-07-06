# 📄 Template de Informe y Paper LaTeX

<div align="center">

![LaTeX](https://img.shields.io/badge/LaTeX-008080?style=for-the-badge&logo=latex&logoColor=white)
![PDF](https://img.shields.io/badge/PDF-FF0000?style=for-the-badge&logo=adobe-acrobat-reader&logoColor=white)
![Academic](https://img.shields.io/badge/Academic-Template-blue?style=for-the-badge)

Template para crear informes y papers academicos en LaTeX.

</div>

## Uso rápido

```bash
make -C build-tools
```

El comando anterior compila el template `informe` por defecto.
Para compilar el template `paper`:

```bash
make -C build-tools TEMPLATE=paper
```

El PDF se genera en `build/`.
Las dependencias de comandos requeridas (`latexmk`, `pdflatex`, `biber`, `kpsewhich` y `xdg-open`) están detalladas en [docs/compilacion.md](docs/compilacion.md).

## Cómo adaptar el template

1. Elige el template que quieres usar: `informe/` o `paper/`.
2. Edita el archivo principal del template: [informe/main.tex](informe/main.tex) o [paper/main.tex](paper/main.tex).
3. Ajusta estilo y paquetes en [informe/config.tex](informe/config.tex) y [informe/packages.tex](informe/packages.tex), o en [paper/config.tex](paper/config.tex) y [paper/packages.tex](paper/packages.tex).
4. Completa las referencias en [informe/referencias.bib](informe/referencias.bib) o [paper/referencias.bib](paper/referencias.bib).
5. Compila con `make -C build-tools` (informe) o `make -C build-tools TEMPLATE=paper`.
6. Si no usas Linux, puedes copiar la carpeta del template elegido a Overleaf y compilar alli.

## Documentación

- [Estructura del proyecto](docs/estructura.md)
- [Compilación](docs/compilacion.md)
- [Personalización](docs/personalizacion.md)
- [Overleaf](docs/overleaf.md)
- [Contribuciones](docs/contribuciones.md)

## Autor

| Nombre | GitHub | Universidad |
|--------|--------|-------------|
| Antonio Benavides Puentes | [@AntoCreed777](https://github.com/AntoCreed777) | Universidad de Concepción |

## Licencia

Este proyecto está bajo la licencia MIT. Consulta [LICENSE](LICENSE) para más detalles.
