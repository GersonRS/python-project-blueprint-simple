# Blueprint/Boilerplate For Python Projects Simple

## Quick Start
To use this repository as starter for your project you can run `configure_project.sh` script, which sets up all variables and file names. This way you can avoid configuring and renaming things yourself:

```shell
./configure_project.sh MODULE="coolproject"
```

## Running

### Using Python Interpreter
```shell
~ $ make run
```

## Testing

Test are ran every time you build _dev_ or _prod_ image. You can also run tests using:

```console
~ $ make test
```

## Cleaning

Clean _Pytest_ and coverage cache/files:

```console
~ $ make clean
```