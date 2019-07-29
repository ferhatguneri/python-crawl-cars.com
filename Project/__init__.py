from Project.getCar import Cars
Cars()

from flask import Flask
app = Flask('project')

import Project.controller
