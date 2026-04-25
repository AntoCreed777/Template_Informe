# Estructura del proyecto

```text
Template_Informe/
├── build/                    # Salida de compilación
├── build-tools/              # Makefile y script de verificación Linux
├── docs/                     # Documentación de apoyo
├── LICENSE
├── README.md
└── src/                      # Código fuente del informe
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

`src/main.tex` es el archivo que une portada, secciones, bibliografía y anexos. Si creas una sección nueva, debes agregarla ahí con `\include{...}` o `\input{...}`.

## Nota sobre Overleaf

El contenido de `src/` también se puede copiar a Overleaf. Eso permite usar el mismo template sin instalar LaTeX localmente y es especialmente útil fuera de Linux.
