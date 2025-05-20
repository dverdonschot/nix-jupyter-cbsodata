# Getting Started with Jupyter Notebooks and CBSodata

This guide will help you get started with using Jupyter notebooks to access data from CBSodata, the open Dutch repository for government data. We'll also cover how to use `devenv` to manage your project environment and `poetry` for package management.

## What are Jupyter Notebooks?

Jupyter notebooks are interactive computing environments that allow you to combine code, text, and visualizations in a single document. They are widely used for data analysis, data visualization, and educational purposes. In this project, we use them to explore and analyze data from CBSodata.

## Reading Data from CBSodata

CBSodata provides open government data from the Netherlands. You can access this data programmatically using Python libraries. The provided Jupyter notebooks (`cbsodata.ipynb`, `cbsodata-economy.ipynb`, `cbsodata-energy.ipynb`) demonstrate how to fetch and work with this data.

## Using Devenv

`devenv` is a development environment manager that helps ensure everyone working on the project has the same dependencies and tools. It integrates with `poetry` to automatically load your Python environment.

To install `devenv`, follow the instructions on their official website: [https://devenv.sh/](https://devenv.sh/)

To start the development environment, simply open your terminal in the project directory and run:

```bash
devenv shell
```

This command will read the `devenv.nix` and `devenv.yaml` files and set up your environment, including making the `poetry` commands available.

## Managing Python Packages with Poetry

Poetry is a dependency management tool for Python. It helps you declare the libraries your project depends on and manages their installation.

### Installing Dependencies

Once you are in the `devenv shell`, you can install the project's dependencies defined in `pyproject.toml` by running:

```bash
poetry install
```

This command reads the `poetry.lock` file (if it exists) or `pyproject.toml` and installs the necessary packages into your `devenv` environment.

### Adding New Packages

To add a new Python package to your project, use the `poetry add` command while in the `devenv shell`:

```bash
poetry add package-name
```

This will add the package to your `pyproject.toml` file and update the `poetry.lock` file.

### Updating Dependencies

If you need to update your dependencies based on changes in `pyproject.toml`, you can run:

```bash
poetry update
```

This will update the `poetry.lock` file with the new versions of your dependencies.

### The `poetry.lock` File

The `poetry.lock` file records the exact versions of all your project's dependencies. This ensures that everyone working on the project uses the same versions, preventing potential conflicts and ensuring reproducible environments. You should commit this file to version control.

### The `pyproject.toml` File

The `pyproject.toml` file is the main configuration file for Poetry. It contains information about your project, including its name, version, and dependencies. You can manually edit this file to add or remove dependencies, although using `poetry add` and `poetry remove` is generally recommended.

With `devenv` and `poetry`, managing your Python environment and dependencies for working with CBSodata in Jupyter notebooks is streamlined and consistent.