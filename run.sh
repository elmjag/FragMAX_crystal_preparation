#!/bin/sh

jupyter trust FragMAX_crystal_preparation.ipynb
voila FragMAX_crystal_preparation.ipynb --enable_nbextensions=True --VoilaConfiguration.file_whitelist="['.*\.(js|ico)']"
