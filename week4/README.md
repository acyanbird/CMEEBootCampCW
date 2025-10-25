## This week we continue with [Biological Computing in Python](https://mulquabio.github.io/MQB/notebooks/Python.html)

### `LV1.py`

##  [Biological Computing in R](https://mulquabio.github.io/MQB/notebooks/R.html#)

## [Data Management and Visualization](https://mulquabio.github.io/MQB/notebooks/Data_R.html)

### `DataWrang.R`


## Jupyter book

[blog](https://samedwardes.com/blog/2022-10-23-best-jupyter-lab-install/)
 
Using pipx install 
```bash
pipx install jupyterlab --include-deps
pipx ensurepath
```

Then install ipykernel which connect jupyter to python, better use it inside virtual env.

```
# create virtual
python3 -m venv path-to-venv

# activate 
source path-to-venv/bin/activate

# install ipykernel make sure inside virtual env with () in the front
pip install ipykernel pandas numpy

#register the kernel
# 语法: python -m ipykernel install --user --name="<内核的显示名称>"
python -m ipykernel install --user --name="name display"
```