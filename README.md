### DiT-MAE

Python Tensorflow implementation for missing data imputation and MIRT parameter estimation.

#### Setup

- Conda Installation:
    - MacOS:
    https://docs.conda.io/projects/conda/en/latest/user-guide/install/macos.html

    - Linux
    https://docs.conda.io/projects/conda/en/latest/user-guide/install/linux.html

    - Windows:
    https://docs.conda.io/projects/conda/en/latest/user-guide/install/windows.html


- Conda update:

```shell
conda update conda
```

- Create virtual environment for related packages"

```shell
conda create --name ditmae python=3.9
```

- Install packages:

```shell
pip install -r requirements.txt
```

OBS.: For Mac users, tensorflow package might be different depending on arch version. M1 and M2 Macs it might be tensorflow-macos. Please
search for the right package.

#### Downloads

- Donwload Cognitve PISA responses

Donload from the given URL the PISA responses em place it in the root folder: https://webfs.oecd.org/pisa/PUF SPSS COMBINED CMB STU COG.zip

- Prepare dataset

Run the "prep_dataset.ipynb" file to extract all surveys items and responses.

#### Run

- Run jupyter notebook or R code:

All dataset are available in the "input_data" directory at the root directory. If desired the "prep_dataset.ipynb" file is availabel for new dataset extractions or customization.

OBS.: Check all your path directories for correct excution of the code.

