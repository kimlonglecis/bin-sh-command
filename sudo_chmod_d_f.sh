#!/bin/bash

function chmod_f_d(){
    sudo find $1 -type d -exec chmod 2775 {} +
    sudo find $1 -type f -exec chmod 0664 {} +
}

chmod_f_d

