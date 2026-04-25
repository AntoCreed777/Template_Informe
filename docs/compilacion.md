# Compilación

Este template está pensado para usarse en Linux con los archivos de compilación dentro de `build-tools/`.

## Requisitos

El script `build-tools/check_linux_requirements.sh` verifica estos comandos:

- `latexmk`
- `pdflatex`
- `biber`
- `kpsewhich`
- `xdg-open` (necesario solo para `make open`)

Instala una distribución de LaTeX completa o, al menos, los paquetes necesarios para este template:

```bash
sudo apt install latexmk texlive-latex-extra texlive-science texlive-lang-spanish biber xdg-utils
```

## Compilar

Desde la raíz del proyecto:

```bash
make -C build-tools
```

También puedes entrar a la carpeta y ejecutar los comandos desde ahí:

```bash
cd build-tools
make
```

## Ver el log

```bash
make -C build-tools log
```

O bien:

```bash
cd build-tools
make log
```

## Limpiar

```bash
make -C build-tools clean
```

O bien:

```bash
cd build-tools
make clean
```

## Abrir el PDF

```bash
make -C build-tools open
```

O bien:

```bash
cd build-tools
make open
```

## Estructura de salida

La compilación genera el PDF y los archivos auxiliares en `build/`.
