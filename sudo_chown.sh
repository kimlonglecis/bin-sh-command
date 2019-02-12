#!/bin/bash

function chown(){
    sudo chown -R $USER:USER $1
}

chown $1

