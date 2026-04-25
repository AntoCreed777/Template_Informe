# 📄 Template de Informe LaTeX

<div align="center">

![LaTeX](https://img.shields.io/badge/LaTeX-008080?style=for-the-badge&logo=latex&logoColor=white)
![PDF](https://img.shields.io/badge/PDF-FF0000?style=for-the-badge&logo=adobe-acrobat-reader&logoColor=white)
![Academic](https://img.shields.io/badge/Academic-Template-blue?style=for-the-badge)

Template para crear informes académicos y técnicos en LaTeX.

</div>

## Uso rápido

```bash
make -C build-tools
```

El PDF se genera en `build/`.
Las dependencias de comandos requeridas (`latexmk`, `pdflatex`, `biber`, `kpsewhich` y `xdg-open`) están detalladas en [docs/compilacion.md](docs/compilacion.md).

## Cómo adaptar el template

1. Edita la portada en [src/portada.tex](src/portada.tex).
2. Escribe el contenido principal en [src/Secciones](src/Secciones) y enlázalo desde [src/main.tex](src/main.tex).
3. Ajusta el estilo en [src/config.tex](src/config.tex).
4. Añade o quita paquetes en [src/packages.tex](src/packages.tex).
5. Completa las referencias en [src/referencias.bib](src/referencias.bib).
6. Usa [src/examples](src/examples) como guía o elimínalo si ya no lo necesitas.
7. Si no usas Linux, puedes copiar el contenido de `src/` a Overleaf y compilar allí como alternativa válida.

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
