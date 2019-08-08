#!/bin/bash

function chown(){
    sudo chown -R $USER $1
}

chown $1

