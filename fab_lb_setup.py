#!/bin/python3

""" sets up a web server """

from fabric.api import *

env.hosts = ["lb-01.cloza.tech"]

def transfer_file(file_):
    """transfers files to server """
    for f in file_.split(','):
        put(f)

    print("======= done transfering ======")


def install():
    """ install packages """
    run("chmod u+x lb_setup.sh")
    run("./lb_setup.sh")

def main(file_):
    """ transfer sript and installs poackages """
    transfer_file(file_)
    install()
