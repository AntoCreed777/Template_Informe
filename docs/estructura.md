# Estructura del proyecto

```text
template_informe_latex/
├── build/                    # Salida de compilación
├── build-tools/              # Makefile y script de verificación Linux
├── docs/                     # Documentación de apoyo
├── informe/                  # Template de informe academico
│   ├── anexos.tex
│   ├── config.tex
│   ├── examples/
│   ├── figures/
│   ├── main.tex
│   ├── packages.tex
│   ├── portada.tex
│   ├── referencias.bib
│   └── Secciones/
├── LICENSE
├── paper/                    # Template de paper academico
│   ├── anexos/
│   ├── config.tex
│   ├── figures/
│   ├── main.tex
│   ├── packages.tex
│   ├── referencias.bib
│   ├── secciones/
│   └── titulo.tex
├── README.md
├── shared/                   # Capa comun de paquetes y configuracion base
│   ├── config_common.tex
│   └── packages_common.tex
└── referencias.bib
```

`informe/main.tex` y `paper/main.tex` son los archivos principales de cada template. Si creas una seccion nueva, debes agregarla en el `main.tex` correspondiente con `\include{...}` o `\input{...}`.

`shared/packages_common.tex` y `shared/config_common.tex` centralizan la base comun para evitar desalineaciones entre variantes. Cada template deja en su `config.tex` solo los ajustes de formato propios.

## Nota sobre Overleaf

Puedes copiar `informe/` o `paper/` a Overleaf. Eso permite usar el template sin instalar LaTeX localmente y es especialmente util fuera de Linux.
