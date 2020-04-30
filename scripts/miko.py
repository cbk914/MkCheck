#!/usr/bin/env python
import paramiko
import time
import os

host = "127.0.0.1"
port = 22
username = "admin"  # CHANGE THIS
password = "admin"  # CHANGE THIS
command = "/system identity print"

ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(host, port, username, password)

# Invoke Shell
remote_connection = ssh.invoke_shell()

time.sleep(5)
output = remote_connection.recv(10240)

print(output)

# Command String (Checks the Router Network Identity)
remote_connection = ssh.exec_command(command)

time.sleep(5)
output1 = remote_connection.recv(10240)

print(output1)

ssh.close()
