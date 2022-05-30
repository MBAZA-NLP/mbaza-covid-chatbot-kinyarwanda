## RASA English Conversational Chatbot

### Setup Mbaza
Here are the steps on how to set Mbaza up on your local machine:

##### 1. Clone the Mbaza repository:

```
git clone https://github.com/MBAZA-NLP/mbaza-covid-chatbot-kinyarwanda.git

cd mbaza-covid-chatbot-kinyarwanda
```

##### 2. (OPTIONAL) Isolate your python project using a virtual environment

We recommend that you work within a virtual environment.

- Create a new virtual environment by choosing a Python interpreter and making a `./venv` directory to hold it:

```
python3 -m venv ./venv
```

- Activate the virtual environment:

```
source ./venv/bin/activate
```

##### 3. Install the necessary dependencies:

```
make install
```

This will install the bot and all of its requirements. Note that this bot should be used with python 3.7, 3.8 or 3.9.

### Test Mbaza on your terminal:

##### 1. Train the bot:

By default, you won't have a trained model, so to train a model, use:

```
rasa train
```

The above command will take a significant amount of memory to train, if you want to train it faster, try the training command with:

```
rasa train --augmentation 0
```

##### 2. Start the action server:

Prerequisite:

Ensure the following endpoint url in your `endpoints.yml`. This parameter may be different based on the environment where the bot is running. For local testing, set/verify the following:

```
action_endpoint:
  url: "http://localhost:5055/webhook"
```

```
rasa run actions
```

##### 3. Run the bot (on another terminal):

```
rasa shell
```

### Test Sara on Rasa X:

Prerequisite:
Ensure you [install Rasa X](https://rasa.com/docs/rasa-x/installation-and-setup/installation-guide/) first

Follow the above steps to start the rasa action server, then run the bot with the following (instead):

```
rasa x
```
