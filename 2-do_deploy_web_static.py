#!/usr/bin/python3
# Fabscript to distributes an archive to a web server.->1-pack_web_static.py
import os.path
from fabric.api import env
from fabric.api import put
from fabric.api import run

env.hosts = ['54.90.40.168', '100.26.234.58']


def do_deploy(archive_path):
    """Distributes an archive to a web server.

    Args:
        archive_path (str): The path of the archive to distribute.
    Returns:
        If the file doesn't exist at archive_path or an error occurs - False.
        Otherwise - True.
    """
