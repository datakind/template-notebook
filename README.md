# TEMPLATE INSTRUCTIONS!

## Features:

1. Dynamic readme that adds the github repo name into readme upon creation of this repo.
2. jblack lint is included in github actions. (.github/workflows/lint.yml)
3. Push to our dockerhub repo using Github actions (.github/workflows/push_to_docker.yml)

## NOTE: Remove everything above this part of the readme.

---

# Introduction for `<reponame>`

--INSERT AN INTRODUCTION FOR YOUR APP; EXPAINING WHAT IS THE PURPOSE OF YOUR APP AND ITS BENIFITS--



## Running `<reponame>` on locally
--NOTE: THIS CAN BE CHANGED TO WHICH ENVIRONMENT WORKS FOR YOUR NOTEBOOK--

### Prerequisites

--LIST AND EXPLAIN ANY PREREQUISTES THAT REQUIRE YOUR NOTEBOOK TO WORK--

-- YOU CAN USE THE FOLLOWING STARTING LIST AND BUILD FROM THERE--

1. Python installed - https://www.python.org/downloads/

### How to build then run the Jupyter Notebook locally

--EXPLAIN HOW TO BUILD THE DOCKER ENVIRONMENT FOR YOUR NOTEBOOK--

--YOU CAN USE THE FOLLOWING FOR BASIC INSTRUCTIONS ON HOW TO BUILD THE DOCKER ENVIRONMENT-

1. Download step - Download repo from github then change into new directory
```
git clone https://github.com/datakind/template-notebook.git
cd template-notebook
```
2. Build step - Use the following command for your build step
```
python3 -m venv .venv
```
    2a. If using Mac then run
    ```
    source .venv/bin/activate
    ```
    2b. If using Windows then run
    ```
    .venv/scripts/activate
    ```
NOTE: FROM HERE YOUR COMMAND LINE MUST ALWAYS HAVE (.venv) as the start name. This means you are in your
build environment to run jupyter notebook
example:
```
(.venv) mac@jeffs-Air template-notebook % 
```
3. Install step - Install packages like Jupyter notebook
```
pip install -r requirements.txt
```
4. Run step - You can use this command to start the notebook:
```
python -m jupyter notebook --port=5000
```

5. Create a Password (Optional step) - You can create a new password for
your notebook by using the following command at the command line:
```
python -c 'from notebook.auth import passwd; print(passwd())'   
```
You should see a string like this:
```
argon2:$argon2id$v=19$m=10240,t=10,p=8$pwToJBqI8IE1eUamL3kvmQ$witjkMRl6Fuff6xaWB5k600f6g/PqZFJ4LzrozAow04
```
Go into `jupyter_notebook_config.py` and set line 217 with the new password string:
```
#  The string should be of the form type:salt:hashed-password.
c.NotebookApp.password = u'COPYANDPASTEARGONSTRINGHERE'
```
Save the file then re-run the jupyter notebook and test the new password.
NOTE: THE DEFAULT PASSWORD FOR THIS TEMPLATE IS DATAKIND IN ALL CAPS

6. Leave/deactivate build environment - When you are done running jupyter notebook you can:
I. type `control+c` or `option+c` at the command line to quit jupyter notebook.
II. type `deactivate` at the command line.
NOTE: You will see (.venv) disapear from the command line as you are not in your build
environment after you type `deactivate`



## Running `<reponame>` on Docker locally

--NOTE: THIS CAN BE CHANGED TO WHICH ENVIRONMENT WORKS FOR YOUR NOTEBOOK--

### Prerequisites

--LIST AND EXPLAIN ANY PREREQUISTES THAT REQUIRE YOUR NOTEBOOK TO WORK--

-- YOU CAN USE THE FOLLOWING STARTING LIST AND BUILD FROM THERE--

1. docker installed - https://docs.docker.com/engine/install/
   a. Make sure you review system requirements before install to ensure you laptop/computre can work with docker
   I. Windows requirements - https://docs.docker.com/desktop/install/windows-install/#system-requirements
   II. MacOS requirements - https://docs.docker.com/desktop/mac/apple-silicon/#system-requirements
   III. Linux requirements - https://docs.docker.com/desktop/install/linux-install/#system-requirements

### How to build then run the Docker container/image

--EXPLAIN HOW TO BUILD THE DOCKER ENVIRONMENT FOR YOUR NOTEBOOK--

--YOU CAN USE THE FOLLOWING FOR BASIC INSTRUCTIONS ON HOW TO BUILD THE DOCKER ENVIRONMENT-

1. Platform check - If you are using MacM1 use the following command to set your docker platform to linux/amd64
```
export DOCKER_DEFAULT_PLATFORM=linux/amd64
```
2. Build step - You can use this command to build out your dockerfile:
```
docker build . -t mycontainername
```
3. Run step - You can use this command to run your docker container:
```
docker run -p 5000:5000 -t mycontainername
```



## How to use `<reponoame>`

--EXPLAIN HOW TO USE `<reponoame>` SO OTHERS CAN USE YOUR APP. THIS MAYBE AN EXAMPLE ON HOW TO USE THE WEBAPP--
