Folder where the password data to use into Mosquitto is saved!

Remember follow steps:
- Open the /etc/mosquitto/passwd
- populate the file with the account details for the users that you want to connect to the Mosquitto server.
  * john_doe:EXAMPLE_PASSWORD 
  * mary_smith:EXAMPLE_PASSWORD_2
- use the mosquitto_passwd utility to encrypt the passwords.
  * $ sudo mosquitto_passwd -U /etc/mosquitto/passwd
- define the password file variable (password_file) in the mosquitto.conf
- set the anonymous connection to false